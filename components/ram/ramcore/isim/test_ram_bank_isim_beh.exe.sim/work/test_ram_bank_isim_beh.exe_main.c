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
    xilinxcorelib_ver_m_04284627112054182733_1433440177_init();
    xilinxcorelib_ver_m_18166792875774041790_0363757974_init();
    xilinxcorelib_ver_m_17738287534884592592_2642375096_init();
    xilinxcorelib_ver_m_12952813341139408366_0032595911_init();
    work_m_14056882636803624207_1452526300_init();
    work_m_13680503985103076171_3336656004_init();
    work_m_10150369425275062214_3881627377_init();
    work_m_01345394777490018668_2359297927_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_01345394777490018668_2359297927");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
