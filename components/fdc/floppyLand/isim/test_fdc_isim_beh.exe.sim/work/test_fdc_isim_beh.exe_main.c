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
    work_m_10699908069705605145_3112701951_init();
    work_m_13346979436771980302_1701096061_init();
    work_m_15036347245410190905_1886187909_init();
    work_m_13488998349911473861_0000854576_init();
    work_m_09859095117829526179_2604046218_init();
    work_m_08874307366339898631_2844518618_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_08874307366339898631_2844518618");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
