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

/* This file is designed for use with ISim build 0x54af6ca1 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/afs/ece.cmu.edu/usr/pmbrown/Private/IBM/IBM_PC/components/rom/test_rds.v";
static const char *ng1 = "bios.txt";
static int ng2[] = {0, 0};
static int ng3[] = {65535, 0};
static const char *ng4 = "***************";
static const char *ng5 = "Setting Up Test";
static unsigned int ng6[] = {0U, 0U};
static const char *ng7 = "**************";
static const char *ng8 = "Run Some Tests";
static int ng9[] = {8, 0};
static int ng10[] = {8192, 0};
static unsigned int ng11[] = {1U, 0U};
static int ng12[] = {1, 0};
static unsigned int ng13[] = {2U, 0U};
static int ng14[] = {2, 0};
static unsigned int ng15[] = {4U, 0U};
static int ng16[] = {3, 0};
static unsigned int ng17[] = {8U, 0U};
static int ng18[] = {4, 0};
static unsigned int ng19[] = {16U, 0U};
static int ng20[] = {5, 0};
static unsigned int ng21[] = {32U, 0U};
static int ng22[] = {6, 0};
static unsigned int ng23[] = {64U, 0U};
static int ng24[] = {7, 0};
static unsigned int ng25[] = {128U, 0U};
static const char *ng26 = "NO: %h %b %b";
static const char *ng27 = "OK: %h %b %b";
static const char *ng28 = "RDS TEST FAILURE WITH %d ERRORS";
static const char *ng29 = "RDS TEST SUCCESS";



static void Cont_17_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;

LAB0:    t1 = (t0 + 3640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    *((unsigned int *)t3) = t9;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB5;

LAB4:    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t16 = (t0 + 4864);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t20, 0, 8);
    t21 = 255U;
    t22 = t21;
    t23 = (t3 + 4);
    t24 = *((unsigned int *)t3);
    t21 = (t21 & t24);
    t25 = *((unsigned int *)t23);
    t22 = (t22 & t25);
    t26 = (t20 + 4);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 | t21);
    t28 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t28 | t22);
    xsi_driver_vfirst_trans(t16, 0, 7);
    t29 = (t0 + 4704);
    *((int *)t29) = 1;

LAB1:    return;
LAB5:    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t7);
    *((unsigned int *)t3) = (t10 | t11);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t12 | t13);
    goto LAB4;

}

static void Initial_20_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    xsi_set_current_line(20, ng0);

LAB2:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 2568);
    t2 = ((char*)((ng2)));
    t3 = ((char*)((ng3)));
    xsi_vlogfile_readmemh(ng1, 0, t1, 1, *((unsigned int *)t2), 1, *((unsigned int *)t3));

LAB1:    return;
}

static void Always_25_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 4136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);

LAB4:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3944);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2728);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

}

static void Initial_38_3(char *t0)
{
    char t6[8];
    char t15[8];
    char t33[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 4384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);

LAB4:    xsi_set_current_line(40, ng0);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    xsi_set_current_line(41, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    xsi_set_current_line(42, ng0);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4720);
    *((int *)t2) = 1;
    t3 = (t0 + 4416);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 13);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 4736);
    *((int *)t2) = 1;
    t3 = (t0 + 4416);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(50, ng0);
    xsi_vlogfile_write(1, 0, 0, ng7, 1, t0);
    xsi_set_current_line(51, ng0);
    xsi_vlogfile_write(1, 0, 0, ng8, 1, t0);
    xsi_set_current_line(52, ng0);
    xsi_vlogfile_write(1, 0, 0, ng7, 1, t0);
    xsi_set_current_line(53, ng0);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB7:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_greater(t6, 32, t5, 32, t7, 32);
    t13 = (t6 + 4);
    t8 = *((unsigned int *)t13);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(83, ng0);

LAB50:    xsi_set_current_line(84, ng0);
    xsi_vlogfile_write(1, 0, 0, ng29, 1, t0);

LAB48:    xsi_set_current_line(86, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB8:    xsi_set_current_line(53, ng0);

LAB10:    xsi_set_current_line(54, ng0);
    xsi_set_current_line(54, ng0);
    t13 = ((char*)((ng2)));
    t14 = (t0 + 2088);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 32);

LAB11:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng12)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t5, 32, t7, 32);
    t13 = (t0 + 1928);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    goto LAB7;

LAB12:    xsi_set_current_line(54, ng0);

LAB14:    xsi_set_current_line(55, ng0);
    t13 = (t0 + 4752);
    *((int *)t13) = 1;
    t14 = (t0 + 4416);
    *((char **)t14) = t13;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 13);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1928);
    t7 = (t5 + 56U);
    t13 = *((char **)t7);
    t14 = ((char*)((ng10)));
    memset(t6, 0, 8);
    xsi_vlog_signed_multiply(t6, 32, t13, 32, t14, 32);
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t4, 32, t6, 32);
    t16 = (t0 + 2408);
    xsi_vlogvar_assign_value(t16, t15, 0, 0, 32);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB16:    t5 = ((char*)((ng2)));
    t17 = xsi_vlog_signed_case_compare(t4, 32, t5, 32);
    if (t17 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng12)));
    t17 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t17 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng14)));
    t17 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t17 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng16)));
    t17 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t17 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng18)));
    t17 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t17 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng20)));
    t17 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t17 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng22)));
    t17 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t17 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng24)));
    t17 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t17 == 1)
        goto LAB31;

LAB32:
LAB34:
LAB33:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB35:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4768);
    *((int *)t2) = 1;
    t3 = (t0 + 4416);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB17:    xsi_set_current_line(59, ng0);
    t7 = ((char*)((ng11)));
    t13 = (t0 + 1768);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 8);
    goto LAB35;

LAB19:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng13)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB35;

LAB21:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB35;

LAB23:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng17)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB35;

LAB25:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng19)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB35;

LAB27:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng21)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB35;

LAB29:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng23)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB35;

LAB31:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng25)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB35;

LAB36:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4784);
    *((int *)t2) = 1;
    t3 = (t0 + 4416);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB37:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    t5 = (t2 + 56U);
    t7 = *((char **)t5);
    t13 = (t0 + 2568);
    t14 = (t13 + 72U);
    t16 = *((char **)t14);
    t18 = (t0 + 2568);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = (t0 + 2408);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    xsi_vlog_generic_get_array_select_value(t6, 8, t7, t16, t20, 2, 1, t23, 32, 1);
    memset(t15, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t6))
        goto LAB39;

LAB38:    t24 = (t3 + 4);
    t25 = (t6 + 4);
    if (*((unsigned int *)t24) != *((unsigned int *)t25))
        goto LAB39;

LAB40:    t26 = (t15 + 4);
    t8 = *((unsigned int *)t26);
    t9 = (~(t8));
    t10 = *((unsigned int *)t15);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(75, ng0);

LAB45:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t7 = (t0 + 2568);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t16 = (t0 + 2568);
    t18 = (t16 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2568);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2408);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_get_array_select_value(t6, 8, t14, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t0 + 1208U);
    t27 = *((char **)t26);
    xsi_vlogfile_write(1, 0, 0, ng27, 4, t0, (char)119, t5, 32, (char)118, t6, 8, (char)118, t27, 8);

LAB43:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng12)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t5, 32, t7, 32);
    t13 = (t0 + 2088);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    goto LAB11;

LAB39:    *((unsigned int *)t15) = 1;
    goto LAB40;

LAB41:    xsi_set_current_line(71, ng0);

LAB44:    xsi_set_current_line(72, ng0);
    t27 = (t0 + 2408);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t0 + 2568);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t34 = (t0 + 2568);
    t35 = (t34 + 72U);
    t36 = *((char **)t35);
    t37 = (t0 + 2568);
    t38 = (t37 + 64U);
    t39 = *((char **)t38);
    t40 = (t0 + 2408);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    xsi_vlog_generic_get_array_select_value(t33, 8, t32, t36, t39, 2, 1, t42, 32, 1);
    t43 = (t0 + 1208U);
    t44 = *((char **)t43);
    xsi_vlogfile_write(1, 0, 0, ng26, 4, t0, (char)119, t29, 32, (char)118, t33, 8, (char)118, t44, 8);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng12)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t5, 32, t7, 32);
    t13 = (t0 + 2248);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    goto LAB43;

LAB46:    xsi_set_current_line(80, ng0);

LAB49:    xsi_set_current_line(81, ng0);
    t14 = (t0 + 2248);
    t16 = (t14 + 56U);
    t18 = *((char **)t16);
    xsi_vlogfile_write(1, 0, 0, ng28, 2, t0, (char)119, t18, 32);
    goto LAB48;

}


extern void work_m_04588938125822276421_2937320210_init()
{
	static char *pe[] = {(void *)Cont_17_0,(void *)Initial_20_1,(void *)Always_25_2,(void *)Initial_38_3};
	xsi_register_didat("work_m_04588938125822276421_2937320210", "isim/test_rds_isim_beh.exe.sim/work/m_04588938125822276421_2937320210.didat");
	xsi_register_executes(pe);
}
