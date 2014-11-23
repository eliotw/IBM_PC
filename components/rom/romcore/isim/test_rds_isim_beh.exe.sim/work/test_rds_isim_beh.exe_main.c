/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_04284627112054182733_2685767283_init();
    xilinxcorelib_ver_m_18166792875774041790_0159979907_init();
    xilinxcorelib_ver_m_17738287534884592592_1331788424_init();
    xilinxcorelib_ver_m_12952813341139408366_1288820993_init();
    work_m_14056882636803624207_1822010284_init();
    work_m_17085059204845626109_2220189930_init();
    work_m_04588938125822276421_2937320210_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_04588938125822276421_2937320210");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
