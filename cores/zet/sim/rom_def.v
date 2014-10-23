`define MICRO_DATA_WIDTH 49
`define MICRO_ADDR_WIDTH 9
`define SEQ_DATA_WIDTH 10
`define SEQ_ADDR_WIDTH 10

`define MOVRRB	10'b0000000000
`define MOVRRW	10'b0000000001
`define MOVRMB	10'b0000000010
`define MOVRMW	10'b0000000011
`define MOVAMB	10'b0000000100
`define MOVAMW	10'b0000000101
`define MOVMRB	10'b0000000110
`define MOVMRW	10'b0000000111
`define MOVMAB	10'b0000001000
`define MOVMAW	10'b0000001001
`define MOVIRB	10'b0000001010
`define MOVIRW	10'b0000001011
`define MOVIMB	10'b0000001100
`define MOVIMW	10'b0000001110
`define PUSHR	10'b0000010000
`define PUSHM	10'b0000010011
`define PUSHI	10'b0000010110
`define LEAVE	10'b0000011001
`define ENTER	10'b0000011100
`define POPR	10'b0000100000
`define POPM	10'b0000100011
`define INIB	10'b0000100110
`define INIW	10'b0000100111
`define INRB	10'b0000101000
`define INRW	10'b0000101001
`define OUTIB	10'b0000101010
`define OUTIW	10'b0000101011
`define OUTRB	10'b0000101100
`define OUTRW	10'b0000101101
`define LAHF	10'b0000101110
`define SAHF	10'b0000101111
`define LDS	10'b0000110000
`define LEA	10'b0000110011
`define LES	10'b0000110100
`define PUSHF	10'b0000110111
`define POPF	10'b0000111010
`define XCHRRB	10'b0000111101
`define XCHRRW	10'b0001000000
`define XCHRMB	10'b0001000011
`define XCHRMW	10'b0001000110
`define XLAT	10'b0001001001
`define AAA	10'b0001001011
`define AAS	10'b0001001100
`define AAM	10'b0001001101
`define AAD	10'b0001100010
`define DAA	10'b0001100111
`define DAS	10'b0001101000
`define CBW	10'b0001101001
`define CWD	10'b0001101010
`define INCRB	10'b0001101011
`define INCRW	10'b0001101100
`define INCMB	10'b0001101101
`define INCMW	10'b0001110000
`define DECRB	10'b0001110011
`define DECRW	10'b0001110100
`define DECMB	10'b0001110101
`define DECMW	10'b0001111000
`define ADDRRB	10'b0001111011
`define ADDRRW	10'b0001111100
`define ADDRMB	10'b0001111101
`define ADDRMW	10'b0010000000
`define ADDMRB	10'b0010000011
`define ADDMRW	10'b0010000101
`define ADDIRB	10'b0010000111
`define ADDIRW	10'b0010001000
`define ADDIMB	10'b0010001001
`define ADDIMW	10'b0010001100
`define ADCRRB	10'b0010001111
`define ADCRRW	10'b0010010000
`define ADCRMB	10'b0010010001
`define ADCRMW	10'b0010010100
`define ADCMRB	10'b0010010111
`define ADCMRW	10'b0010011001
`define ADCIRB	10'b0010011011
`define ADCIRW	10'b0010011100
`define ADCIMB	10'b0010011101
`define ADCIMW	10'b0010100000
`define SUBRRB	10'b0010100011
`define SUBRRW	10'b0010100100
`define SUBRMB	10'b0010100101
`define SUBRMW	10'b0010101000
`define SUBMRB	10'b0010101011
`define SUBMRW	10'b0010101101
`define SUBIRB	10'b0010101111
`define SUBIRW	10'b0010110000
`define SUBIMB	10'b0010110001
`define SUBIMW	10'b0010110100
`define SBBRRB	10'b0010110111
`define SBBRRW	10'b0010111000
`define SBBRMB	10'b0010111001
`define SBBRMW	10'b0010111100
`define SBBMRB	10'b0010111111
`define SBBMRW	10'b0011000001
`define SBBIRB	10'b0011000011
`define SBBIRW	10'b0011000100
`define SBBIMB	10'b0011000101
`define SBBIMW	10'b0011001000
`define MULRB	10'b0011001011
`define MULRW	10'b0011001110
`define MULMB	10'b0011010001
`define MULMW	10'b0011010101
`define IMULRB	10'b0011011001
`define IMULRW	10'b0011011100
`define IMULMB	10'b0011011111
`define IMULMW	10'b0011100011
`define IMULIR	10'b0011100111
`define IMULIM	10'b0011101010
`define DIVRB	10'b0011101110
`define DIVRW	10'b0100000011
`define DIVMB	10'b0100011000
`define DIVMW	10'b0100101110
`define IDIVRB	10'b0101000100
`define IDIVRW	10'b0101011001
`define IDIVMB	10'b0101101110
`define IDIVMW	10'b0110000100
`define NEGRB	10'b0110011010
`define NEGRW	10'b0110011011
`define NEGMB	10'b0110011100
`define NEGMW	10'b0110011111
`define CMPRRB	10'b0110100010
`define CMPRRW	10'b0110100011
`define CMPRMB	10'b0110100100
`define CMPRMW	10'b0110100110
`define CMPMRB	10'b0110101000
`define CMPMRW	10'b0110101010
`define CMPIRB	10'b0110101100
`define CMPIRW	10'b0110101101
`define CMPIMB	10'b0110101110
`define CMPIMW	10'b0110110000
`define ANDRRB	10'b0110110010
`define ANDRRW	10'b0110110011
`define ANDRMB	10'b0110110100
`define ANDRMW	10'b0110110111
`define ANDMRB	10'b0110111010
`define ANDMRW	10'b0110111100
`define ANDIRB	10'b0110111110
`define ANDIRW	10'b0110111111
`define ANDIMB	10'b0111000000
`define ANDIMW	10'b0111000011
`define ORRRB	10'b0111000110
`define ORRRW	10'b0111000111
`define ORRMB	10'b0111001000
`define ORRMW	10'b0111001011
`define ORMRB	10'b0111001110
`define ORMRW	10'b0111010000
`define ORIRB	10'b0111010010
`define ORIRW	10'b0111010011
`define ORIMB	10'b0111010100
`define ORIMW	10'b0111010111
`define NOTRB	10'b0111011010
`define NOTRW	10'b0111011011
`define NOTMB	10'b0111011100
`define NOTMW	10'b0111011111
`define RCL1RB	10'b0111100010
`define RCL1RW	10'b0111100011
`define RCLCRB	10'b0111100100
`define RCLCRW	10'b0111100101
`define RCL1MB	10'b0111100110
`define RCL1MW	10'b0111101001
`define RCLCMB	10'b0111101100
`define RCLCMW	10'b0111101111
`define RCLIRB	10'b0111110010
`define RCLIRW	10'b0111110011
`define RCLIMB	10'b0111110100
`define RCLIMW	10'b0111110111
`define RCR1RB	10'b0111111010
`define RCR1RW	10'b0111111011
`define RCRCRB	10'b0111111100
`define RCRCRW	10'b0111111101
`define RCR1MB	10'b0111111110
`define RCR1MW	10'b1000000001
`define RCRCMB	10'b1000000100
`define RCRCMW	10'b1000000111
`define RCRIRB	10'b1000001010
`define RCRIRW	10'b1000001011
`define RCRIMB	10'b1000001100
`define RCRIMW	10'b1000001111
`define ROL1RB	10'b1000010010
`define ROL1RW	10'b1000010011
`define ROLCRB	10'b1000010100
`define ROLCRW	10'b1000010101
`define ROL1MB	10'b1000010110
`define ROL1MW	10'b1000011001
`define ROLCMB	10'b1000011100
`define ROLCMW	10'b1000011111
`define ROLIRB	10'b1000100010
`define ROLIRW	10'b1000100011
`define ROLIMB	10'b1000100100
`define ROLIMW	10'b1000100111
`define ROR1RB	10'b1000101010
`define ROR1RW	10'b1000101011
`define RORCRB	10'b1000101100
`define RORCRW	10'b1000101101
`define ROR1MB	10'b1000101110
`define ROR1MW	10'b1000110001
`define RORCMB	10'b1000110100
`define RORCMW	10'b1000110111
`define RORIRB	10'b1000111010
`define RORIRW	10'b1000111011
`define RORIMB	10'b1000111100
`define RORIMW	10'b1000111111
`define SAL1RB	10'b1001000010
`define SAL1RW	10'b1001000011
`define SALCRB	10'b1001000100
`define SALCRW	10'b1001000101
`define SAL1MB	10'b1001000110
`define SAL1MW	10'b1001001001
`define SALCMB	10'b1001001100
`define SALCMW	10'b1001001111
`define SALIRB	10'b1001010010
`define SALIRW	10'b1001010011
`define SALIMB	10'b1001010100
`define SALIMW	10'b1001010111
`define SAR1RB	10'b1001011010
`define SAR1RW	10'b1001011011
`define SARCRB	10'b1001011100
`define SARCRW	10'b1001011101
`define SAR1MB	10'b1001011110
`define SAR1MW	10'b1001100001
`define SARCMB	10'b1001100100
`define SARCMW	10'b1001100111
`define SARIRB	10'b1001101010
`define SARIRW	10'b1001101011
`define SARIMB	10'b1001101100
`define SARIMW	10'b1001101111
`define SHR1RB	10'b1001110010
`define SHR1RW	10'b1001110011
`define SHRCRB	10'b1001110100
`define SHRCRW	10'b1001110101
`define SHR1MB	10'b1001110110
`define SHR1MW	10'b1001111001
`define SHRCMB	10'b1001111100
`define SHRCMW	10'b1001111111
`define SHRIRB	10'b1010000010
`define SHRIRW	10'b1010000011
`define SHRIMB	10'b1010000100
`define SHRIMW	10'b1010000111
`define TSTRRB	10'b1010001010
`define TSTRRW	10'b1010001011
`define TSTMRB	10'b1010001100
`define TSTMRW	10'b1010001110
`define TSTIRB	10'b1010010000
`define TSTIRW	10'b1010010001
`define TSTIMB	10'b1010010010
`define TSTIMW	10'b1010010100
`define XORRRB	10'b1010010110
`define XORRRW	10'b1010010111
`define XORRMB	10'b1010011000
`define XORRMW	10'b1010011011
`define XORMRB	10'b1010011110
`define XORMRW	10'b1010100000
`define XORIRB	10'b1010100010
`define XORIRW	10'b1010100011
`define XORIMB	10'b1010100100
`define XORIMW	10'b1010100111
`define CALLN	10'b1010101010
`define CALLNR	10'b1010101101
`define CALLNM	10'b1010110001
`define CALLF	10'b1010110101
`define CALLFM	10'b1010111010
`define JCC	10'b1011000000
`define JCXZ	10'b1011000001
`define JMPI	10'b1011000010
`define JMPR	10'b1011000011
`define JMPM	10'b1011000100
`define LJMPI	10'b1011000101
`define LJMPM	10'b1011000111
`define LOOP	10'b1011001001
`define LOOPE	10'b1011001011
`define LOOPNE	10'b1011001101
`define RETN0	10'b1011001111
`define RETNV	10'b1011010001
`define RETF0	10'b1011010100
`define RETFV	10'b1011011000
`define CMPSB	10'b1011011101
`define CMPSW	10'b1011100011
`define CMPSBR	10'b1011101001
`define CMPSWR	10'b1011110000
`define LODSB	10'b1011110111
`define LODSW	10'b1011111001
`define LODSBR	10'b1011111011
`define LODSWR	10'b1011111110
`define MOVSB	10'b1100000001
`define MOVSW	10'b1100000101
`define MOVSBR	10'b1100001001
`define MOVSWR	10'b1100001110
`define SCASB	10'b1100010011
`define SCASW	10'b1100010110
`define SCASBR	10'b1100011001
`define SCASWR	10'b1100011101
`define STOSB	10'b1100100001
`define STOSW	10'b1100100011
`define STOSBR	10'b1100100101
`define STOSWR	10'b1100101000
`define INT3	10'b1100101011
`define INT	10'b1100110110
`define INTD	10'b1101000001
`define EINT	10'b1101001010
`define EINTP	10'b1101010101
`define INTO	10'b1101100000
`define IRET	10'b1101101100
`define NOP	10'b1101110011
`define CLC	10'b1101110100
`define CLD	10'b1101110101
`define CLI	10'b1101110110
`define CMC	10'b1101110111
`define HLT	10'b1101111000
`define STC	10'b1101111001
`define STD	10'b1101111010
`define STI	10'b1101111011