/*
 * Copyright (c) 2014, Aleksander Osman
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * 
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

module floppy(
    input               clk,
    input               rst_n,
    
    //dma
    output              dma_floppy_req,
    input               dma_floppy_ack,
    input               dma_floppy_terminal,
    input       [7:0]   dma_floppy_readdata,
    output      [7:0]   dma_floppy_writedata,
    
    //irq
    output reg          irq,
    
    //avalon slave
    input       [2:0]   io_address,
    input               io_read,
    output reg  [7:0]   io_readdata,
    input               io_write,
    input       [7:0]   io_writedata,
    
    //ide shared port 0x3F6
    output              ide_3f6_read,
    input       [7:0]   ide_3f6_readdata,
    output              ide_3f6_write,
    output      [7:0]   ide_3f6_writedata,
    
    //master to control sd
    output      [31:0]  sd_master_address,
    input               sd_master_waitrequest,
    output              sd_master_read,
    input               sd_master_readdatavalid,
    input       [31:0]  sd_master_readdata,
    output              sd_master_write,
    output      [31:0]  sd_master_writedata,
    
    //slave for sd
    input       [8:0]   sd_slave_address,
    input               sd_slave_read,
    output reg  [7:0]   sd_slave_readdata,
    input               sd_slave_write,
    input       [7:0]   sd_slave_writedata,
    
    //slave for management
    /*
     0x00.[0]:      media present
     0x01.[0]:      media writeprotect
     0x02.[7:0]:    media cylinders
     0x03.[7:0]:    media sectors per track
     0x04.[31:0]:   media total sector count
     0x05.[1:0]:    media heads
     0x06.[31:0]:   media sd base
     0x07.[15:0]:   media wait cycles: 200000 us / spt
     0x08.[15:0]:   media wait rate 0: 1000 us
     0x09.[15:0]:   media wait rate 1: 1666 us
     0x0A.[15:0]:   media wait rate 2: 2000 us
     0x0B.[15:0]:   media wait rate 3: 500 us
     0x0C.[7:0]:    media type: 8'h20 none; 8'h00 old; 8'hC0 720k; 8'h80 1_44M; 8'h40 2_88M
    */
    input       [3:0]   mgmt_address,
    input               mgmt_write,
    input       [31:0]  mgmt_writedata
);

   // Local Parameters
   localparam [4:0] S_IDLE                         = 5'd0;
   localparam [4:0] S_PREPARE_COUNT                = 5'd1;
   localparam [4:0] S_COUNT_LOGICAL                = 5'd2;
   localparam [4:0] S_SD_MUTEX                     = 5'd3;
   localparam [4:0] S_SD_AVALON_BASE               = 5'd4;
   localparam [4:0] S_SD_ADDRESS                   = 5'd5;
   localparam [4:0] S_SD_BLOCK_COUNT               = 5'd6;
   localparam [4:0] S_SD_CONTROL                   = 5'd7;
   localparam [4:0] S_SD_READ_WAIT_FOR_DATA        = 5'd8;
   localparam [4:0] S_WAIT_FOR_EMPTY_READ_FIFO     = 5'd9;
   localparam [4:0] S_UPDATE_SECTOR                = 5'd10;
   localparam [4:0] S_CHECK_TC                     = 5'd11;
   localparam [4:0] S_WAIT                         = 5'd12;
   localparam [4:0] S_WAIT_FOR_FULL_WRITE_FIFO     = 5'd13;
   localparam [4:0] S_SD_WRITE_WAIT_FOR_EMPTY_FIFO = 5'd14;
   localparam [4:0] S_WAIT_FOR_FORMAT_INPUT        = 5'd15;
   localparam [4:0] S_SD_FORMAT_WAIT_FOR_FILL      = 5'd16;
   
   // Add registers
   reg 			execute_ndma;
   reg 			io_read_last;
   reg 			sd_slave_read_last;
   reg 			motor_enable;
   reg 			dma_irq_enable;
   reg 			enable;
   reg [1:0] 		selected_drive;
   reg [7:0] 		media_type;
   reg 			datareg_ready;
   reg 			transfer_to_cpu;
   reg 			busy;
   reg 			change;
   reg [3:0] 		in_seek_mode;
   reg [3:0] 		reply_left;
   reg [79:0] 		reply;
   reg 			media_present;
   reg 			media_writeprotected;
   reg [7:0] 		media_cylinders;
   reg [7:0] 		media_sectors_per_track;
   reg [31:0] 		media_sector_count;
   reg [1:0] 		media_heads;
   reg [31:0] 		media_sd_base;
   reg [15:0] 		media_wait_cycles;
   reg [15:0] 		media_wait_rate_0;
   reg [15:0] 		media_wait_rate_1;
   reg [15:0] 		media_wait_rate_2;
   reg [15:0] 		media_wait_rate_3;
   reg [1:0] 		data_rate;
   reg [71:0] 		command;
   reg [3:0] 		command_size;
   reg [3:0] 		command_left;
   reg [7:0] 		pending_command;
   reg 			cmd_read_write_multitrack;
   reg 			cmd_read_write_was_ndma_terminal;
   reg [3:0] 		specify_srt;
   reg [3:0] 		specify_hut;
   reg [6:0] 		specify_hlt;
   reg 			ndma;
   reg [2:0] 		reset_sensei;
   reg 			pending_request, pending_interrupt;
   reg 			pending_interrupt_last;
   reg [7:0] 		delay_steps;
   reg [3:0] 		delay_srt;
   reg [15:0] 		delay_rate;
   reg [7:0] 		status_reg0_temp;
   reg [7:0] 		config_config, config_pretrk, perp_mode;
   reg 			lock, head, sd_read_done;
   reg [31:0] 		format_data, sd_sector;
   reg [2:0] 		format_data_count, sd_mutex_wait;
   reg [7:0] 		format_filler_byte, format_sector_count;
   reg [4:0] 		state;
   reg [15:0] 		command_wait_counter, mult_a, logical_sector;
   reg [7:0] 		mult_b, cylinder, sector, eot;
   reg [8:0] 		sd_write_counter, sd_read_counter;
   reg 			was_dma_terminal;
   
   // Add wires
   wire 		cmd_read_normal_in_progress;
   wire 		cmd_write_normal_in_progress;
   wire 		cmd_format_in_progress;
   wire 		cmd_recalibrate_in_progress;
   wire 		cmd_read_id_in_progress;
   wire 		io_read_valid;
   wire 		sd_slave_read_valid;
   wire [7:0] 		from_floppy_q;
   wire 		from_floppy_empty;
   wire 		cmd_format_writeprotected_at_start;
   wire 		cmd_format_hang_on_start;
   wire 		cmd_format_ok_at_start;
   wire 		read_in_io_mode;
   wire 		write_in_io_mode;
   wire [7:0] 		io_readdata_prepare;
   wire 		sw_reset;
   wire 		command_first;
   wire 		command_next;
   wire [3:0] 		command_at_first;
   wire 		cmd_sense_interrupt_status_start;
   wire 		cmd_dump_registers_start;
   wire 		cmd_version_start;
   wire 		cmd_unlock_start;
   wire 		cmd_lock_start;
   wire 		cmd_specify_start;
   wire 		cmd_get_status_start;
   wire 		cmd_recalibrate_start;
   wire 		cmd_seek_start;
   wire 		cmd_read_id_start;
   wire 		cmd_format_track_start;
   wire 		cmd_write_normal_start;
   wire 		cmd_read_normal_start;
   wire 		cmd_perpendicular_mode_start;
   wire 		cmd_configure_mode_start;
   wire 		cmd_invalid_start;
   wire 		cmd_read_write_start;
   wire 		enter_result_phase;
   wire 		raise_interrupt;
   wire 		reset_changeline;
   wire 		cmd_read_write_hang_at_start;
   wire 		cmd_read_write_incorrect_head_at_start;
   wire 		cmd_read_write_incorrect_sector_at_start;
   wire 		cmd_write_and_writeprotected_at_start;
   wire 		cmd_read_write_ok_at_start;
   wire 		cmd_read_write_finish;
   wire 		cmd_read_id_hang_at_start;
   wire 		cmd_read_id_ok_at_start;
   wire 		cmd_read_id_finished;
   wire [1:0] 		reset_sensei_drive;
   wire 		delay_last_cycle;
   wire 		cmd_format_in_input_finish;
   wire 		cmd_format_finish;
   wire 		increment_only_sector;
   wire 		increment_cylinder;
   wire [10:0] 		to_floppy_count;
   wire [9:0] 		to_floppy_usedw;
   wire 		to_floppy_full;
   wire 		to_floppy_empty;
   wire [7:0] 		to_floppy_q;
   wire 		_unused_ok;
   
//---------------------------------------------------------------------------

`define SD_AVALON_BASE_ADDRESS_FOR_FDD 32'h00000800

//TODO: in execute_ndma -- send irq after every byte

//------------------------------------------------------------------------------

always @(posedge clk or negedge rst_n) begin if(rst_n == 1'b0) io_read_last <= 1'b0; else if(io_read_last) io_read_last <= 1'b0; else io_read_last <= io_read; end 
assign io_read_valid = io_read && io_read_last == 1'b0;

always @(posedge clk or negedge rst_n) begin if(rst_n == 1'b0) sd_slave_read_last <= 1'b0; else if(sd_slave_read_last) sd_slave_read_last <= 1'b0; else sd_slave_read_last <= sd_slave_read; end 
assign sd_slave_read_valid = sd_slave_read && sd_slave_read_last == 1'b0;

//------------------------------------------------------------------------------ ide shared ports

assign ide_3f6_read      = io_read_valid && io_address == 3'd6;
assign ide_3f6_write     = io_write && io_address == 3'd6;
assign ide_3f6_writedata = io_writedata;

//------------------------------------------------------------------------------ io read

assign read_in_io_mode  = io_read_valid && io_address == 3'd5 && execute_ndma && cmd_read_normal_in_progress;

assign write_in_io_mode = io_write && io_address == 3'h5 && execute_ndma && (cmd_write_normal_in_progress || cmd_format_in_progress);

assign io_readdata_prepare =
    (io_address == 3'd2)?   { 3'b0, motor_enable, dma_irq_enable, enable, selected_drive } :        //digital output register
    (io_address == 3'd3)?   media_type :                                                            //tape drive register
    (io_address == 3'd4)?   { datareg_ready, transfer_to_cpu, execute_ndma, busy, in_seek_mode } :  //main status reg
    (read_in_io_mode)?      from_floppy_q :
    (io_address == 3'd5)?   reply[7:0] :
    (io_address == 3'd6)?   ide_3f6_readdata :
    (io_address == 3'd7)?   { change, 7'h7F } :
                            8'd0;

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)   io_readdata <= 8'd0;
    else                io_readdata <= io_readdata_prepare;
end

//------------------------------------------------------------------------------ media management

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_present <= 1'b0;
    else if(mgmt_write && mgmt_address == 4'd0) media_present <= mgmt_writedata[0];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_writeprotected <= 1'b0;
    else if(mgmt_write && mgmt_address == 4'd1) media_writeprotected <= mgmt_writedata[0];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_cylinders <= 8'd0;
    else if(mgmt_write && mgmt_address == 4'd2) media_cylinders <= mgmt_writedata[7:0];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_sectors_per_track <= 8'd0;
    else if(mgmt_write && mgmt_address == 4'd3) media_sectors_per_track <= mgmt_writedata[7:0];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_sector_count <= 32'd0;
    else if(mgmt_write && mgmt_address == 4'd4) media_sector_count <= mgmt_writedata;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_heads <= 2'd2;
    else if(mgmt_write && mgmt_address == 4'd5) media_heads <= mgmt_writedata[1:0];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_sd_base <= 32'd0;
    else if(mgmt_write && mgmt_address == 4'd6) media_sd_base <= mgmt_writedata;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_wait_cycles <= 16'd0;
    else if(mgmt_write && mgmt_address == 4'd7) media_wait_cycles <= mgmt_writedata[15:0];
end

always @(posedge clk or negedge rst_n) begin if(rst_n == 1'b0) media_wait_rate_0 <= 16'd1000; else if(mgmt_write && mgmt_address == 4'h8) media_wait_rate_0 <= mgmt_writedata[15:0]; end
always @(posedge clk or negedge rst_n) begin if(rst_n == 1'b0) media_wait_rate_1 <= 16'd1666; else if(mgmt_write && mgmt_address == 4'h9) media_wait_rate_1 <= mgmt_writedata[15:0]; end
always @(posedge clk or negedge rst_n) begin if(rst_n == 1'b0) media_wait_rate_2 <= 16'd2000; else if(mgmt_write && mgmt_address == 4'hA) media_wait_rate_2 <= mgmt_writedata[15:0]; end
always @(posedge clk or negedge rst_n) begin if(rst_n == 1'b0) media_wait_rate_3 <= 16'd500;  else if(mgmt_write && mgmt_address == 4'hB) media_wait_rate_3 <= mgmt_writedata[15:0]; end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           media_type <= 8'h20;
    else if(mgmt_write && mgmt_address == 4'hC) media_type <= mgmt_writedata[7:0];
end

//------------------------------------------------------------------------------

assign sw_reset = 
    (io_write && io_address == 3'h2 && io_writedata[2] == 1'b0 && enable) ||
    (io_write && io_address == 3'h4 && io_writedata[7]);

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           selected_drive <= 2'd0;
    else if(io_write && io_address == 3'h2)     selected_drive <= io_writedata[1:0];
    else if(cmd_recalibrate_start)              selected_drive <= io_writedata[1:0];
    else if(cmd_seek_start)                     selected_drive <= command[1:0];
    else if(cmd_read_id_start)                  selected_drive <= io_writedata[1:0];
    else if(cmd_format_track_start)             selected_drive <= command[25:24];
    else if(cmd_read_write_start)               selected_drive <= command[49:48];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           motor_enable <= 1'b0;
    else if(io_write && io_address == 3'h2)     motor_enable <= io_writedata[4];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           dma_irq_enable <= 1'b1;
    else if(io_write && io_address == 3'h2)     dma_irq_enable <= io_writedata[3];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           enable <= 1'b1;
    else if(io_write && io_address == 3'h2)     enable <= io_writedata[2];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           data_rate <= 2'b10;
    else if(io_write && io_address == 3'h4)     data_rate <= io_writedata[1:0];
    else if(io_write && io_address == 3'h7)     data_rate <= io_writedata[1:0];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                               datareg_ready <= 1'b1;
    else if(sw_reset)                               datareg_ready <= 1'b1;
    
    else if(cmd_read_write_ok_at_start)             datareg_ready <= 1'b0;
    else if(cmd_read_id_ok_at_start)                datareg_ready <= 1'b0;
    else if(cmd_format_ok_at_start)                 datareg_ready <= 1'b0;
    
    else if(execute_ndma && state == S_WAIT_FOR_EMPTY_READ_FIFO && read_in_io_mode)                                 datareg_ready <= 1'b0;
    else if(execute_ndma && state == S_WAIT_FOR_EMPTY_READ_FIFO && ~(from_floppy_empty))                            datareg_ready <= 1'b1;
    
    else if(execute_ndma && state == S_WAIT_FOR_FULL_WRITE_FIFO && to_floppy_count == 11'd511 && write_in_io_mode)  datareg_ready <= 1'b0;
    else if(execute_ndma && state == S_WAIT_FOR_FULL_WRITE_FIFO && to_floppy_count < 11'd512)                       datareg_ready <= 1'b1;
    
    else if(execute_ndma && state == S_WAIT_FOR_FORMAT_INPUT && format_data_count == 3'd3 && write_in_io_mode)      datareg_ready <= 1'b0;
    else if(execute_ndma && state == S_WAIT_FOR_FORMAT_INPUT && format_data_count < 3'd4)                           datareg_ready <= 1'b1;
    
    else if(enter_result_phase)                                                                                     datareg_ready <= 1'b1;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                               execute_ndma <= 1'b0;
    else if(cmd_read_write_ok_at_start && ndma)     execute_ndma <= 1'b1;
    else if(cmd_format_ok_at_start && ndma)         execute_ndma <= 1'b1;
    else if(enter_result_phase)                     execute_ndma <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                   transfer_to_cpu <= 1'b0;
    else if(sw_reset)                                                   transfer_to_cpu <= 1'b0;
    else if(command_first && ~(enter_result_phase))                     transfer_to_cpu <= 1'b0;
    else if(execute_ndma && state == S_WAIT_FOR_EMPTY_READ_FIFO)        transfer_to_cpu <= 1'b1;
    else if(enter_result_phase)                                         transfer_to_cpu <= 1'b1;
    else if(io_read_valid && io_address == 3'd5 && reply_left == 4'd1)  transfer_to_cpu <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                   busy <= 1'b0;
    else if(sw_reset)                                                   busy <= 1'b0;
    else if(command_first)                                              busy <= 1'b1;
    else if(cmd_recalibrate_start)                                      busy <= 1'b0;
    else if(cmd_seek_start)                                             busy <= 1'b0;
    else if(cmd_specify_start)                                          busy <= 1'b0;
    else if(cmd_configure_mode_start)                                   busy <= 1'b0;
    else if(cmd_perpendicular_mode_start)                               busy <= 1'b0;
    else if(enter_result_phase)                                         busy <= 1'b1;
    else if(io_read_valid && io_address == 3'd5 && reply_left == 4'd1)  busy <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                       change <= 1'b1;
    else if(~(media_present))                                               change <= 1'b1;
    else if(reset_changeline && selected_drive == 2'd0 && media_present)    change <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                   in_seek_mode <= 4'd0;
    else if(sw_reset)                   in_seek_mode <= 4'd0;
    else if(cmd_recalibrate_start)      in_seek_mode <= (io_writedata[1:0] == 2'd0)? 4'b0001 : (io_writedata[1:0] == 2'd1)? 4'b0010 : (io_writedata[1:0] == 2'd2)? 4'b0100 : 4'b1000;
    else if(cmd_seek_start)             in_seek_mode <= (command[1:0] == 2'd0)? 4'b0001 : (command[1:0] == 2'd1)? 4'b0010 : (command[1:0] == 2'd2)? 4'b0100 : 4'b1000;
end

//------------------------------------------------------------------------------

assign command_first = io_write && io_address == 3'h5 && state == S_IDLE && command_left == 4'd0 && ~(busy);
assign command_next  = io_write && io_address == 3'h5 && state == S_IDLE && command_left > 4'd0;

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)           command <= 72'd0;
    else if(command_first)      command <= { command[63:0], io_writedata };
    else if(command_next)       command <= { command[63:0], io_writedata };
end

assign command_at_first =
    (io_writedata == 8'h03)?                    4'd2 :                      //specify command
    (io_writedata == 8'h04)?                    4'd1 :                      //get status
    (io_writedata == 8'h07)?                    4'd1 :                      //recalibrate
    (io_writedata == 8'h0F)?                    4'd2 :                      //seek
    (io_writedata == 8'h4A)?                    4'd1 :                      //read ID
    (io_writedata == 8'h4D)?                    4'd5 :                      //format track
    ({ 1'b0, io_writedata[6:0] } == 8'h45)?     4'd8 :                      //write normal data
    ({ 1'b0, io_writedata[6], 1'b0, io_writedata[4:0] } ==  8'h46)?  4'd8 : //read normal data
    (io_writedata == 8'h12)?                    4'd1 :                      //perpendicular mode (Enhanced)
    (io_writedata == 8'h13)?                    4'd3 :                      //configure command (Enhanced)
                                                4'd0;

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                   command_size <= 4'd0;
    
    else if(command_first && command_at_first != 4'd0)  command_size <= command_at_first;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                       command_left <= 4'd0;
    
    else if(command_first && command_at_first != 4'd0)      command_left <= command_at_first;
    else if(command_next)                                   command_left <= command_left - 4'd1;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                           pending_command <= 8'b0;
    else if(sw_reset)                           pending_command <= 8'h00;
    else if(cmd_read_write_ok_at_start)         pending_command <= command[63:56];
    else if(cmd_read_id_ok_at_start)            pending_command <= 8'h4A;
    else if(cmd_format_ok_at_start)             pending_command <= command[39:32];
    else if(cmd_recalibrate_start)              pending_command <= 8'h07;
    else if(enter_result_phase)                 pending_command <= 8'h00;
end

assign cmd_sense_interrupt_status_start   = command_first && io_writedata == 8'h08;       //enters result phase
assign cmd_dump_registers_start           = command_first && io_writedata == 8'h0E;       //enters result phase
assign cmd_version_start                  = command_first && io_writedata == 8'h10;       //enters result phase
assign cmd_unlock_start                   = command_first && io_writedata == 8'h14;       //enters result phase
assign cmd_lock_start                     = command_first && io_writedata == 8'h94;       //enters result phase

assign cmd_specify_start        = command_size == 4'd2 && command_next && command_left == 4'd1 && command[15:8]  == 8'h03;    //immediate finish
assign cmd_get_status_start     = command_size == 4'd1 && command_next && command_left == 4'd1 && command[7:0]   == 8'h04;    //enters result phase
assign cmd_recalibrate_start    = command_size == 4'd1 && command_next && command_left == 4'd1 && command[7:0]   == 8'h07;    //interrupt after delay
assign cmd_seek_start           = command_size == 4'd2 && command_next && command_left == 4'd1 && command[15:8]  == 8'h0F;    //interrupt after delay
assign cmd_read_id_start        = command_size == 4'd1 && command_next && command_left == 4'd1 && command[7:0]   == 8'h4A;    //enters result phase
assign cmd_format_track_start   = command_size == 4'd5 && command_next && command_left == 4'd1 && command[39:32] == 8'h4D;    //enters result pahse
assign cmd_write_normal_start   = command_size == 4'd8 && command_next && command_left == 4'd1 && { 1'b0, command[62:56] } == 8'h45;                      //enters result phase
assign cmd_read_normal_start    = command_size == 4'd8 && command_next && command_left == 4'd1 && { 1'b0, command[62], 1'b0, command[60:56] } ==  8'h46;  //enters result phase

assign cmd_perpendicular_mode_start = command_size == 4'd1 && command_next && command_left == 4'd1 && command[7:0]   == 8'h12;    //immediate finish
assign cmd_configure_mode_start     = command_size == 4'd3 && command_next && command_left == 4'd1 && command[23:16] == 8'h13;    //immediate finish

assign cmd_invalid_start = command_first &&
    io_writedata != 8'h03 &&
    io_writedata != 8'h04 &&
    io_writedata != 8'h07 &&
    io_writedata != 8'h08 &&
    io_writedata != 8'h0F &&
    io_writedata != 8'h4A &&
    io_writedata != 8'h4D &&
    { 1'b0, io_writedata[6:0] } != 8'h45 &&
    { 1'b0, io_writedata[6], 1'b0, io_writedata[4:0] } !=  8'h46 &&
    io_writedata != 8'h0E &&
    io_writedata != 8'h10 &&
    io_writedata != 8'h14 &&
    io_writedata != 8'h94 &&
    io_writedata != 8'h12 &&
    io_writedata != 8'h13;

assign cmd_read_write_start = cmd_read_normal_start || cmd_write_normal_start;

assign cmd_read_normal_in_progress  = { 1'b0, pending_command[6], 1'b0, pending_command[4:0] } ==  8'h46;
assign cmd_write_normal_in_progress = { 1'b0, pending_command[6:0] } == 8'h45;
assign cmd_format_in_progress       = pending_command == 8'h4D;
assign cmd_recalibrate_in_progress  = pending_command == 8'h07;
assign cmd_read_id_in_progress      = pending_command == 8'h4A;

assign enter_result_phase =
    cmd_invalid_start || cmd_sense_interrupt_status_start || cmd_dump_registers_start || cmd_version_start || cmd_unlock_start || cmd_lock_start ||
    (cmd_read_write_start && (cmd_read_write_incorrect_head_at_start || cmd_read_write_incorrect_sector_at_start || cmd_write_and_writeprotected_at_start)) ||
    (state == S_CHECK_TC && (cmd_read_write_finish || cmd_format_finish)) ||
    (cmd_format_track_start && cmd_format_writeprotected_at_start) ||
    (state == S_WAIT_FOR_FORMAT_INPUT && cmd_format_in_input_finish) ||
    cmd_get_status_start ||
    cmd_read_id_finished;

assign raise_interrupt = dma_irq_enable && (
    (cmd_read_write_start && (cmd_read_write_incorrect_head_at_start || cmd_read_write_incorrect_sector_at_start)) ||
    (cmd_write_normal_start && cmd_write_and_writeprotected_at_start) ||
    (state == S_CHECK_TC && (cmd_read_write_finish || cmd_format_finish)) ||
    (cmd_format_track_start && cmd_format_writeprotected_at_start) ||
    (state == S_WAIT_FOR_FORMAT_INPUT && cmd_format_in_input_finish) ||
    delay_last_cycle
);

assign reset_changeline =
    (cmd_read_write_ok_at_start) ||
    (state == S_UPDATE_SECTOR && increment_cylinder) ||
    (cmd_recalibrate_start && cylinder != 8'd0) ||
    (cmd_seek_start && cylinder != io_writedata);


//------------------------------------------------------------------------------ cmd: read / write

assign cmd_read_write_hang_at_start =
    ~(motor_enable) ||                  //motor off
    command[49:48] != 2'b00 ||          //no drive
    ~(media_present) ||                 //no media
    command[23:16] != 8'h02 ||          //invalid sector size
    command[47:40] >= media_cylinders;  //invalid cylinder

assign cmd_read_write_incorrect_head_at_start   = motor_enable && command[49:48] == 2'b00 && (command[50] != command[32] || (command[32] && media_heads == 2'd1));
assign cmd_read_write_incorrect_sector_at_start = ~(cmd_read_write_hang_at_start) && (command[31:24] > media_sectors_per_track || command[31:24] > command[15:8]);
assign cmd_write_and_writeprotected_at_start    = ~(cmd_read_write_hang_at_start) && ~(cmd_read_write_incorrect_sector_at_start) && cmd_write_normal_start && media_writeprotected;
    
assign cmd_read_write_ok_at_start = 
    cmd_read_write_start && ~(cmd_read_write_hang_at_start) && ~(cmd_read_write_incorrect_head_at_start) && ~(cmd_read_write_incorrect_sector_at_start) && ~(cmd_write_and_writeprotected_at_start);
    
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                   cmd_read_write_multitrack <= 1'b0;
    else if(cmd_read_write_ok_at_start) cmd_read_write_multitrack <= command[63];
end

assign cmd_read_write_finish =
    (cmd_read_normal_in_progress || cmd_write_normal_in_progress) && (
        (~(execute_ndma) && was_dma_terminal) ||
        (execute_ndma && cmd_read_write_was_ndma_terminal)
);

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                                               cmd_read_write_was_ndma_terminal <= 1'd0;
    else if(state == S_UPDATE_SECTOR && sector == eot && { 1'b0, head } == (media_heads - 2'd1))    cmd_read_write_was_ndma_terminal <= 1'd1;
    else if(state == S_UPDATE_SECTOR)                                                               cmd_read_write_was_ndma_terminal <= 1'd0;
end

//------------------------------------------------------------------------------ cmd: read id
    
assign cmd_read_id_hang_at_start =
    ~(motor_enable) ||                  //motor off
    io_writedata[1:0] != 2'b00 ||       //no drive
    ~(media_present);                   //no media

assign cmd_read_id_ok_at_start = cmd_read_id_start && ~(cmd_read_id_hang_at_start);

assign cmd_read_id_finished = state == S_WAIT && command_wait_counter == 16'd0 && cmd_read_id_in_progress;

//------------------------------------------------------------------------------ cmd: specify
    
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)           specify_srt <= 4'd0;
    else if(cmd_specify_start)  specify_srt <= command[7:4];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)           specify_hut <= 4'b0;
    else if(cmd_specify_start)  specify_hut <= command[3:0];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)           specify_hlt <= 7'b0;
    else if(cmd_specify_start)  specify_hlt <= io_writedata[7:1];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)           ndma <= 1'b0;
    else if(cmd_specify_start)  ndma <= io_writedata[0];
end

//------------------------------------------------------------------------------ cmd: sense interrupt status

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                   irq <= 1'b0;
    else if(sw_reset)                                                   irq <= 1'b1;
    else if(raise_interrupt)                                            irq <= 1'b1;
    else if(write_in_io_mode)                                           irq <= 1'b0;
    else if(read_in_io_mode)                                            irq <= 1'b0;
    else if(io_read_valid && io_address == 3'd5 && ~(read_in_io_mode))  irq <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                   reset_sensei <= 3'd0;
    else if(sw_reset)                                                   reset_sensei <= 3'd4;
    else if(raise_interrupt)                                            reset_sensei <= 3'd0;
    else if(cmd_sense_interrupt_status_start && reset_sensei > 3'd0)    reset_sensei <= reset_sensei - 3'd1;
end

assign reset_sensei_drive =
    (reset_sensei == 3'd4)?     2'd0 :
    (reset_sensei == 3'd3)?     2'd1 :
    (reset_sensei == 3'd2)?     2'd2 :
                                2'd3;

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)           pending_interrupt <= 1'b0;
    else if(raise_interrupt)    pending_interrupt <= 1'b1;
    else if(~(irq))             pending_interrupt <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)   pending_interrupt_last <= 1'b0;
    else                pending_interrupt_last <= pending_interrupt;
end

//------------------------------------------------------------------------------ cmd: recalibrate / seek

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                       delay_steps <= 8'd0;
    else if(cmd_recalibrate_start)                                          delay_steps <= (cylinder == 8'd0)? 8'd0 : cylinder - 8'd1;
    else if(cmd_seek_start)                                                 delay_steps <= (cylinder == io_writedata)? 8'd0 : (cylinder > io_writedata)? cylinder - io_writedata - 8'd1 : io_writedata - cylinder - 8'd1; 
    else if(delay_rate == 16'd0 && delay_srt == 4'd0 && delay_steps > 8'd0) delay_steps <= delay_steps - 8'd1;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                   delay_srt <= 4'd0;
    else if(cmd_recalibrate_start)                      delay_srt <= specify_srt;
    else if(cmd_seek_start)                             delay_srt <= specify_srt;
    else if(delay_rate == 16'd0 && delay_srt > 4'd0)    delay_srt <= delay_srt - 4'd1;
    else if(delay_rate == 16'd0 && delay_steps > 8'd0)  delay_srt <= specify_srt;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                               delay_rate <= 16'd0;
    else if(cmd_recalibrate_start)                  delay_rate <= (data_rate == 2'd0)? media_wait_rate_0 : (data_rate == 2'd1)? media_wait_rate_1 : (data_rate == 2'd2)? media_wait_rate_2 : media_wait_rate_3;
    else if(cmd_seek_start)                         delay_rate <= (data_rate == 2'd0)? media_wait_rate_0 : (data_rate == 2'd1)? media_wait_rate_1 : (data_rate == 2'd2)? media_wait_rate_2 : media_wait_rate_3;
    else if(delay_rate > 16'd0)                     delay_rate <= delay_rate - 16'd1;
    else if(delay_srt > 4'd0 || delay_steps > 8'd0) delay_rate <= (data_rate == 2'd0)? media_wait_rate_0 : (data_rate == 2'd1)? media_wait_rate_1 : (data_rate == 2'd2)? media_wait_rate_2 : media_wait_rate_3;
end

assign delay_last_cycle = delay_steps == 8'd0 && delay_srt == 4'd0 && delay_rate == 16'd1;

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                   status_reg0_temp <= 8'd0;
    else if(pending_interrupt && pending_interrupt_last == 1'b0)        status_reg0_temp <= reply[7:0];
    else if(cmd_sense_interrupt_status_start && reset_sensei > 3'd0)    status_reg0_temp <= { status_reg0_temp[7:3], (reset_sensei == 3'd4)? head : 1'b0, reset_sensei_drive };
end

//------------------------------------------------------------------------------ cmd: configure / lock / unlock

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                   config_config <= 8'd0;
    else if(cmd_configure_mode_start)   config_config <= command[7:0];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                   config_pretrk <= 8'd0;
    else if(cmd_configure_mode_start)   config_pretrk <= io_writedata;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                       perp_mode <= 8'd0;
    else if(cmd_perpendicular_mode_start)   perp_mode <= io_writedata;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)           lock <= 1'd0;
    else if(cmd_unlock_start)   lock <= 1'd0;
    else if(cmd_lock_start)     lock <= 1'd1;
end

//------------------------------------------------------------------------------ cmd: format

assign cmd_format_writeprotected_at_start = ~(cmd_format_hang_on_start) && cmd_format_track_start && media_writeprotected;
    
assign cmd_format_hang_on_start =
    ~(motor_enable) ||                          //motor off
    command[25:24] != 2'b00 ||                  //no drive
    ~(media_present) ||                         //no media
    command[23:16] != 8'h02 ||                  //invalid sector size
    command[15:8] != media_sectors_per_track;   //invalid secotr count

assign cmd_format_ok_at_start = cmd_format_track_start && ~(cmd_format_writeprotected_at_start) && ~(cmd_format_hang_on_start);

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                       format_data <= 32'd0;
    else if(write_in_io_mode && format_data_count < 3'd4)   format_data <= { format_data[23:0], io_writedata };
    else if(dma_floppy_ack && format_data_count < 3'd4)     format_data <= { format_data[23:0], dma_floppy_readdata };
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                           format_data_count <= 3'd0;
    else if(state != S_WAIT_FOR_FORMAT_INPUT)                                   format_data_count <= 3'd0;
    else if((write_in_io_mode || dma_floppy_ack) && format_data_count < 3'd4)   format_data_count <= format_data_count + 3'd1;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                   format_filler_byte <= 8'd0;
    else if(cmd_format_ok_at_start)     format_filler_byte <= io_writedata;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                                               format_sector_count <= 8'd0;
    else if(cmd_format_ok_at_start)                                                                 format_sector_count <= command[15:8];
    else if(state == S_SD_FORMAT_WAIT_FOR_FILL && sd_read_counter == 9'd511 && sd_slave_read_valid) format_sector_count <= format_sector_count - 8'd1;
end

assign cmd_format_in_input_finish = ~(execute_ndma) && was_dma_terminal;

assign cmd_format_finish = cmd_format_in_progress && (
    cmd_format_in_input_finish ||
    (execute_ndma && format_sector_count == 8'd0)
);

//------------------------------------------------------------------------------ reply

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                               reply_left <= 4'd0;
    else if(sw_reset)                                                               reply_left <= 4'd0;
    else if(cmd_invalid_start)                                                      reply_left <= 4'd1;
    else if(cmd_read_write_start   && cmd_read_write_incorrect_head_at_start)       reply_left <= 4'd7;
    else if(cmd_read_write_start   && cmd_read_write_incorrect_sector_at_start)     reply_left <= 4'd7;
    else if(cmd_write_normal_start && cmd_write_and_writeprotected_at_start)        reply_left <= 4'd7;
    else if(cmd_format_track_start && cmd_format_writeprotected_at_start)           reply_left <= 4'd7;
    else if(state == S_CHECK_TC && (cmd_read_write_finish || cmd_format_finish))    reply_left <= 4'd7;
    else if(state == S_WAIT_FOR_FORMAT_INPUT && cmd_format_in_input_finish)         reply_left <= 4'd7;
    else if(cmd_read_id_finished)                                                   reply_left <= 4'd7;
    else if(cmd_get_status_start)                                                   reply_left <= 4'd1;
    else if(cmd_sense_interrupt_status_start)                                       reply_left <= 4'd2;
    else if(cmd_dump_registers_start)                                               reply_left <= 4'd10;
    else if(cmd_version_start)                                                      reply_left <= 4'd1;
    else if(cmd_unlock_start || cmd_lock_start)                                     reply_left <= 4'd1;
    else if(io_read_valid && io_address == 3'h5 && reply_left > 4'd0)               reply_left <= reply_left - 3'd1;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                           reply <= 80'd0;
    else if(sw_reset)                                                           reply <= { 72'd0, 8'hC0 };
    
    else if(cmd_invalid_start)                                                  reply <= { reply[79:8], 8'h80 };
    else if(delay_last_cycle && cmd_recalibrate_in_progress)                    reply <= { reply[79:8], 8'h20 | { 6'd0, selected_drive[1:0] } | ((selected_drive != 2'd0 || ~(motor_enable))? 8'h50 : 8'h00) };
    else if(delay_last_cycle)                                                   reply <= { reply[79:8], 8'h20 | { 5'd0, (selected_drive != 2'd0)? 1'b0 : head, selected_drive[1:0] } }; 
    else if(cmd_read_write_start && cmd_read_write_incorrect_head_at_start)     reply <= { 24'd0, 8'd2, sector,         7'b0,head,         cylinder,       8'h00, 8'h04, (8'h40 | { 5'd0, head,        2'b0 }) };
    else if(cmd_read_write_start && cmd_read_write_incorrect_sector_at_start)   reply <= { 24'd0, 8'd2, command[31:24], 7'b0,command[32],  command[47:40], 8'h00, 8'h04, (8'h40 | { 5'd0, command[32], 2'b0 }) };
    else if(cmd_write_normal_start && cmd_write_and_writeprotected_at_start)    reply <= { 24'd0, 8'd2, command[31:24], 7'b0,command[32],  command[47:40], 8'h31, 8'h27, (8'h40 | { 5'd0, command[32], 2'b0 }) };
    else if(cmd_format_track_start && cmd_format_writeprotected_at_start)       reply <= { 24'd0, 8'd2, sector,         7'b0,command[26],  cylinder,       8'h31, 8'h27, (8'h40 | { 5'd0, command[26], 2'b0 }) };
    else if(state == S_CHECK_TC && cmd_read_write_finish)                       reply <= { 24'd0, 8'd2, sector,         7'b0,head,         cylinder,       8'h00, 8'h00, (8'h00 | { 5'd0, head,        2'b0 }) };
    else if(state == S_CHECK_TC && cmd_format_finish)                           reply <= { 24'd0, 8'd2, sector,         7'b0,head,         cylinder,       8'h00, 8'h00, (8'h00 | { 5'd0, head,        2'b0 }) };
    else if(state == S_WAIT_FOR_FORMAT_INPUT && cmd_format_in_input_finish)     reply <= { 24'd0, 8'd2, sector,         7'b0,head,         cylinder,       8'h00, 8'h00, (8'h40 | { 5'd0, head,        2'b0 }) };
    else if(cmd_read_id_finished)                                               reply <= { 24'd0, 8'd2, sector,         7'b0,head,         cylinder,       8'h00, 8'h00, (8'h00 | { 5'd0, head,        2'b0 }) };
    else if(cmd_get_status_start)                                               reply <= { 72'd0, 1'b0, media_writeprotected, 1'b1, (io_writedata[1:0] == 2'b00 && cylinder == 8'd0)? 1'b1 : 1'b0, 1'b1, io_writedata[2:0] };
    else if(cmd_sense_interrupt_status_start && reset_sensei > 3'd0)            reply <= { 64'd0, cylinder, status_reg0_temp[7:3], (reset_sensei == 3'd4)? head : 1'b0, reset_sensei_drive };
    else if(cmd_sense_interrupt_status_start && pending_interrupt)              reply <= { 64'd0, cylinder, status_reg0_temp };
    else if(cmd_sense_interrupt_status_start && ~(pending_interrupt))           reply <= { 64'd0, cylinder, 8'h80 };
    else if(cmd_dump_registers_start)                                           reply <= { config_pretrk, config_config, lock, perp_mode[6:0], (selected_drive == 2'd0)? eot : 8'd0,
                                                                                           specify_hlt, ndma, specify_srt, specify_hut, 8'h0, 8'h0, 8'h0, cylinder };
    else if(cmd_version_start)                                                  reply <= { 72'd0, 8'h90 };
    else if(cmd_unlock_start)                                                   reply <= 80'd0;
    else if(cmd_lock_start)                                                     reply <= { 72'd0, 3'd0, 1'b1, 4'd0 };
    else if(io_read_valid && io_address == 3'h5)                                reply <= { 8'd0, reply[79:8] };
end

//------------------------------------------------------------------------------ state

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                                                   state <= S_IDLE;
    
    //start read/write
    else if(state == S_IDLE && cmd_read_write_ok_at_start)                                              state <= S_PREPARE_COUNT;
    
    //read
    else if(state == S_COUNT_LOGICAL && mult_b == 8'd0 && cmd_read_normal_in_progress)                  state <= S_SD_MUTEX;
        //sd
    else if(state == S_SD_CONTROL && sd_master_waitrequest == 1'b0 && cmd_read_normal_in_progress)      state <= S_SD_READ_WAIT_FOR_DATA;
    else if(state == S_SD_READ_WAIT_FOR_DATA && sd_slave_write && sd_write_counter == 9'd511)           state <= S_WAIT_FOR_EMPTY_READ_FIFO;
    else if(state == S_WAIT_FOR_EMPTY_READ_FIFO && from_floppy_empty)                                   state <= S_UPDATE_SECTOR;
    
    //write
    else if(state == S_COUNT_LOGICAL && mult_b == 8'd0 && cmd_write_normal_in_progress)                 state <= S_WAIT_FOR_FULL_WRITE_FIFO;
    else if(state == S_WAIT_FOR_FULL_WRITE_FIFO && to_floppy_count == 11'd512)                          state <= S_SD_MUTEX;
        //sd
    else if(state == S_SD_CONTROL && sd_master_waitrequest == 1'b0 && cmd_write_normal_in_progress)     state <= S_SD_WRITE_WAIT_FOR_EMPTY_FIFO;
    else if(state == S_SD_WRITE_WAIT_FOR_EMPTY_FIFO && to_floppy_empty)                                 state <= S_UPDATE_SECTOR;
    
    //format
    else if(state == S_IDLE && cmd_format_ok_at_start)                                                  state <= S_WAIT_FOR_FORMAT_INPUT;
    else if(state == S_WAIT_FOR_FORMAT_INPUT && cmd_format_in_input_finish)                             state <= S_IDLE;
    else if(state == S_WAIT_FOR_FORMAT_INPUT && format_data_count == 3'd4)                              state <= S_PREPARE_COUNT;
        //count
    else if(state == S_COUNT_LOGICAL && mult_b == 8'd0 && cmd_format_in_progress)                       state <= S_SD_MUTEX;
        //sd
    else if(state == S_SD_CONTROL && sd_master_waitrequest == 1'b0 && cmd_format_in_progress)           state <= S_SD_FORMAT_WAIT_FOR_FILL;
    else if(state == S_SD_FORMAT_WAIT_FOR_FILL && sd_read_counter == 9'd511 && sd_slave_read_valid)     state <= S_WAIT;
    
    //read id
    else if(state == S_IDLE && cmd_read_id_ok_at_start)                                                 state <= S_WAIT;
    else if(state == S_WAIT && command_wait_counter == 16'd0 && cmd_read_id_in_progress)                state <= S_IDLE;
    
    //count
    else if(state == S_PREPARE_COUNT)                                                                   state <= S_COUNT_LOGICAL;
    
    //sd read/write
    else if(state == S_SD_MUTEX && sd_master_readdatavalid && sd_master_readdata[2:0] == 3'd1)          state <= S_SD_AVALON_BASE;
    else if(state == S_SD_AVALON_BASE && sd_master_waitrequest == 1'b0)                                 state <= S_SD_ADDRESS;
    else if(state == S_SD_ADDRESS     && sd_master_waitrequest == 1'b0)                                 state <= S_SD_BLOCK_COUNT;
    else if(state == S_SD_BLOCK_COUNT && sd_master_waitrequest == 1'b0)                                 state <= S_SD_CONTROL;
    
    //update read/write/format
    else if(state == S_UPDATE_SECTOR)                                                                   state <= S_WAIT;
    else if(state == S_WAIT && command_wait_counter == 16'd0 && ~(cmd_read_id_in_progress))             state <= S_CHECK_TC;
    else if(state == S_CHECK_TC && (cmd_read_write_finish || cmd_format_finish))                        state <= S_IDLE;
    else if(state == S_CHECK_TC && cmd_format_in_progress)                                              state <= S_WAIT_FOR_FORMAT_INPUT;
    else if(state == S_CHECK_TC)                                                                        state <= S_PREPARE_COUNT;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                           command_wait_counter <= 16'd0;
    else if(state != S_WAIT)                                    command_wait_counter <= media_wait_cycles;
    else if(state == S_WAIT && command_wait_counter > 16'd0)    command_wait_counter <= command_wait_counter - 16'd1;
end

//------------------------------------------------------------------------------ count logical sector

// mult_a is sectors per track * heads
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)	                mult_a <= 16'd0;
    else if(state == S_PREPARE_COUNT)   mult_a <= (media_heads == 2'd2)? { 7'd0, media_sectors_per_track, 1'b0 } : { 8'b0, media_sectors_per_track };
    else if(state == S_COUNT_LOGICAL)   mult_a <= { mult_a[14:0], 1'b0 };
end

// mult_b is cylinder
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                   mult_b <= 8'd0;
    else if(state == S_PREPARE_COUNT)   mult_b <= cylinder;
    else if(state == S_COUNT_LOGICAL)   mult_b <= { 1'b0, mult_b[7:1] };
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                               logical_sector <= 16'd0;
    else if(state == S_PREPARE_COUNT)               logical_sector <= ((head == 1'b1)? { 8'd0, media_sectors_per_track } : 16'd0) + { 8'd0, sector } - 16'd1;
    else if(state == S_COUNT_LOGICAL && mult_b[0])  logical_sector <= logical_sector + mult_a;
end

//------------------------------------------------------------------------------ location

assign increment_only_sector = sector < eot && sector < media_sectors_per_track;
assign increment_cylinder    = ~(increment_only_sector) && (~(cmd_read_write_multitrack) || head == 1'b1);

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                                                                       cylinder <= 8'd0;
    else if(sw_reset)                                                                                                       cylinder <= 8'd0;
    else if(cmd_read_write_start && (cmd_read_write_incorrect_sector_at_start || cmd_write_and_writeprotected_at_start))    cylinder <= command[47:40];
    else if(cmd_read_write_ok_at_start)                                                                                     cylinder <= command[47:40];
    else if(cmd_recalibrate_start)                                                                                          cylinder <= 8'd0;
    else if(cmd_seek_start)                                                                                                 cylinder <= io_writedata;
    else if(state == S_UPDATE_SECTOR && increment_cylinder)                                                                 cylinder <= (cylinder >= media_cylinders)? media_cylinders - 8'd1 : cylinder + 8'd1;
    else if(state == S_WAIT_FOR_FORMAT_INPUT && format_data_count == 3'd4)                                                  cylinder <= format_data[31:24];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                                                                       head <= 1'd0;
    else if(sw_reset)                                                                                                       head <= 1'b0;
    else if(cmd_read_write_start && (cmd_read_write_incorrect_sector_at_start || cmd_write_and_writeprotected_at_start))    head <= command[32];
    else if(cmd_format_track_start && cmd_format_writeprotected_at_start)                                                   head <= command[26];
    else if(cmd_read_write_ok_at_start)                                                                                     head <= command[32];
    else if(cmd_format_ok_at_start)                                                                                         head <= command[26];
    else if(cmd_get_status_start)                                                                                           head <= io_writedata[2];
    else if(cmd_seek_start)                                                                                                 head <= command[2];
    else if(cmd_read_id_start)                                                                                              head <= io_writedata[2];
    else if(state == S_UPDATE_SECTOR && ~(increment_only_sector) && cmd_read_write_multitrack)                              head <= ~(head);
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                                                                                       sector <= 8'd1;
    else if(sw_reset)                                                                                                       sector <= 8'd1;
    else if(cmd_read_write_start && (cmd_read_write_incorrect_sector_at_start || cmd_write_and_writeprotected_at_start))    sector <= command[31:24];
    else if(cmd_read_write_ok_at_start)                                                                                     sector <= command[31:24];
    else if(state == S_UPDATE_SECTOR && increment_only_sector)                                                              sector <= sector + 8'd1;
    else if(state == S_UPDATE_SECTOR && ~(increment_only_sector))                                                           sector <= 8'd1;
    else if(state == S_WAIT_FOR_FORMAT_INPUT && format_data_count == 3'd4)                                                  sector <= format_data[15:8];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                       eot <= 8'd0;
    else if(sw_reset)                       eot <= 8'd0;
    else if(cmd_read_write_ok_at_start)     eot <= (command[15:8] == 8'd0)? media_sectors_per_track : command[15:8];
end

//------------------------------------------------------------------------------ sd

assign sd_master_address =
    (state == S_SD_MUTEX)?          32'd4 :
    (state == S_SD_AVALON_BASE)?    32'd0 :
    (state == S_SD_ADDRESS)?        32'd4 :
    (state == S_SD_BLOCK_COUNT)?    32'd8 :
    (state == S_SD_CONTROL)?        32'd12 :
                                    32'd0;

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                       sd_mutex_wait <= 3'd0;
    else if(state == S_SD_MUTEX && sd_master_read == 1'b0)  sd_mutex_wait <= sd_mutex_wait + 3'd1;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                                           sd_read_done <= 1'b0;
    else if(sd_master_read && sd_master_waitrequest == 1'b0)    sd_read_done <= 1'b1;
    else if(sd_master_readdatavalid)                            sd_read_done <= 1'b0;
end

assign sd_master_read = state == S_SD_MUTEX && sd_mutex_wait == 3'd5 && ~(sd_read_done);

assign sd_master_write = state == S_SD_AVALON_BASE || state == S_SD_ADDRESS || state == S_SD_BLOCK_COUNT || state == S_SD_CONTROL;

assign sd_master_writedata =
    (state == S_SD_AVALON_BASE)?                                `SD_AVALON_BASE_ADDRESS_FOR_FDD :
    (state == S_SD_ADDRESS)?                                    sd_sector :
    (state == S_SD_BLOCK_COUNT)?                                32'd1 :
    (state == S_SD_CONTROL && cmd_read_normal_in_progress)?     32'd2 : //CONTROL_READ
    (state == S_SD_CONTROL && cmd_write_normal_in_progress)?    32'd3 : //CONTROL_WRITE
    (state == S_SD_CONTROL && cmd_format_in_progress)?          32'd3 : //CONTROL_WRITE
                                                                32'd0;

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)           sd_write_counter <= 9'd0;
    else if(sd_slave_write)     sd_write_counter <= sd_write_counter + 9'd1;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)               sd_read_counter <= 9'd0;
    else if(sd_slave_read_valid)    sd_read_counter <= sd_read_counter + 9'd1;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                   sd_sector <= 32'd0;
    else if(state == S_SD_AVALON_BASE)  sd_sector <= ({ 16'd0, logical_sector } >= media_sector_count)? media_sd_base + media_sector_count - 32'd1 : media_sd_base + { 16'd0, logical_sector };
end

//------------------------------------------------------------------------------ dma

assign dma_floppy_writedata = from_floppy_q;

assign dma_floppy_req = ~(execute_ndma) && ~(was_dma_terminal) && dma_irq_enable && ~(dma_floppy_ack) && (
    (cmd_read_normal_in_progress  && ~(from_floppy_empty) && state == S_WAIT_FOR_EMPTY_READ_FIFO) ||
    (cmd_write_normal_in_progress && to_floppy_count <= 11'd511 && state == S_WAIT_FOR_FULL_WRITE_FIFO) ||
    (cmd_format_in_progress       && format_data_count < 3'd4 && state == S_WAIT_FOR_FORMAT_INPUT)
);

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)               was_dma_terminal <= 1'd0;
    else if(state == S_IDLE)        was_dma_terminal <= 1'd0;
    else if(dma_floppy_terminal)    was_dma_terminal <= 1'd1;
end

//------------------------------------------------------------------------------ fifo

assign to_floppy_count = { to_floppy_full, to_floppy_usedw };

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)                   sd_slave_readdata <= 8'b0;
    else if(cmd_format_in_progress)     sd_slave_readdata <= format_filler_byte;
    else                                sd_slave_readdata <= to_floppy_q;
end

simple_fifo #(
    .width      (8),
    .widthu     (10)
)
fifo_to_floppy_inst(
    .clk        (clk),
    .rst_n      (rst_n),
    
    .sclr       (state == S_IDLE), //input
    
    .data       ((execute_ndma)? io_writedata : (was_dma_terminal)? 8'h00 : dma_floppy_readdata),                                                                                           //input [7:0]
    .wrreq      (state == S_WAIT_FOR_FULL_WRITE_FIFO && (write_in_io_mode || (~(execute_ndma) && dma_floppy_ack) || (~(execute_ndma) && was_dma_terminal)) && to_floppy_count < 11'd512),   //input
    .full       (to_floppy_full),   //output
    
    .rdreq      (sd_slave_read_valid),  //input
    .empty      (to_floppy_empty),      //output
    .q          (to_floppy_q),          //output [7:0]
    
    .usedw      (to_floppy_usedw)       //output [9:0]
);

simple_fifo #(
    .width      (8),
    .widthu     (10)
)
fifo_from_floppy_inst(
    .clk        (clk),
    .rst_n      (rst_n),
    
     .sclr      (state == S_IDLE || (state == S_WAIT_FOR_EMPTY_READ_FIFO && ~(execute_ndma) && dma_floppy_terminal)),   //input
    
    .data       (sd_slave_writedata),   //input [7:0]
    .wrreq      (sd_slave_write),       //input
    
    .rdreq      (state == S_WAIT_FOR_EMPTY_READ_FIFO && (read_in_io_mode || (~(execute_ndma) && dma_floppy_ack))),      //input
    .empty      (from_floppy_empty),    //output
    .q          (from_floppy_q),        //output [7:0]

    /* verilator lint_off PINNOCONNECT */
    .full       (),                     //output
    .usedw      ()                      //output [9:0]
    /* verilator lint_on PINNOCONNECT */
);

//------------------------------------------------------------------------------

// synthesis translate_off
assign _unused_ok = &{ 1'b0, sd_master_readdata[31:3], sd_slave_address, command[71:64], perp_mode[7], 1'b0 };
// synthesis translate_on

//------------------------------------------------------------------------------

endmodule
