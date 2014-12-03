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
static const char *ng0 = "/afs/ece.cmu.edu/usr/mkaffine/Private/ece545/reposit/IBM_PC/components/fdc/test_fdc.v";
static unsigned int ng1[] = {0U, 1048575U};
static unsigned int ng2[] = {0U, 255U};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {128U, 0U};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {1012U, 0U};
static const char *ng8 = "44: Output %b error: %b";
static const char *ng9 = "Finished MSR";
static const char *ng10 = "This all works from up ^. Down is another matter";
static const char *ng11 = "Read command currently under construction";
static unsigned int ng12[] = {1010U, 0U};
static const char *ng13 = "DOR: %h";
static int ng14[] = {1, 0};
static unsigned int ng15[] = {1013U, 0U};
static unsigned int ng16[] = {70U, 0U};
static const char *ng17 = "%h address %h";
static const char *ng18 = "";
static const char *ng19 = "is current time";
static unsigned int ng20[] = {7U, 0U};
static unsigned int ng21[] = {2U, 0U};
static unsigned int ng22[] = {42U, 0U};
static const char *ng23 = "15 dataout: %b error:%b";
static unsigned int ng24[] = {32U, 0U};
static unsigned int ng25[] = {3U, 0U};
static int ng26[] = {100, 0};
static const char *ng27 = "%b";
static const char *ng28 = "14 dataout: %b error:%b";
static const char *ng29 = "13 dataout: %b error:%b";
static const char *ng30 = "12 dataout: %b error:%b";
static const char *ng31 = "11 dataout: %b error:%b";
static const char *ng32 = "10 dataout: %b error:%b";
static const char *ng33 = "9 dataout: %b error:%b";
static const char *ng34 = "8 dataout: %b error:%b";
static const char *ng35 = "Finished Read";
static const char *ng36 = "FDC TEST FAILURE WITH %d ERRORS";
static const char *ng37 = "FDC TEST SUCCESS";



static void Cont_19_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 5400U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 2248);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB7:    t14 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t14);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB8;

LAB9:    t21 = *((unsigned int *)t4);
    t22 = (~(t21));
    t23 = *((unsigned int *)t14);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t14) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t25, 8);

LAB16:    t26 = (t0 + 6912);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memset(t30, 0, 8);
    t31 = 1048575U;
    t32 = t31;
    t33 = (t3 + 4);
    t34 = *((unsigned int *)t3);
    t31 = (t31 & t34);
    t35 = *((unsigned int *)t33);
    t32 = (t32 & t35);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t37 | t31);
    t38 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t38 | t32);
    xsi_driver_vfirst_trans(t26, 0, 19);
    t39 = (t0 + 6464);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 4008);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    goto LAB9;

LAB10:    t25 = ((char*)((ng1)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 20, t20, 20, t25, 20);
    goto LAB16;

LAB14:    memcpy(t3, t20, 8);
    goto LAB16;

}

static void Cont_20_1(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 5648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 2408);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB7:    t14 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t14);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB8;

LAB9:    t21 = *((unsigned int *)t4);
    t22 = (~(t21));
    t23 = *((unsigned int *)t14);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t14) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t25, 8);

LAB16:    t26 = (t0 + 6976);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memset(t30, 0, 8);
    t31 = 255U;
    t32 = t31;
    t33 = (t3 + 4);
    t34 = *((unsigned int *)t3);
    t31 = (t31 & t34);
    t35 = *((unsigned int *)t33);
    t32 = (t32 & t35);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t37 | t31);
    t38 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t38 | t32);
    xsi_driver_vfirst_trans(t26, 0, 7);
    t39 = (t0 + 6480);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 3528);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    goto LAB9;

LAB10:    t25 = ((char*)((ng2)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 8, t20, 8, t25, 8);
    goto LAB16;

LAB14:    memcpy(t3, t20, 8);
    goto LAB16;

}

static void Always_37_2(char *t0)
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

LAB0:    t1 = (t0 + 5896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);

LAB4:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 5704);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1928);
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
    t24 = (t0 + 1928);
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

static void Initial_42_3(char *t0)
{
    char t9[8];
    char t12[8];
    char t14[16];
    char t21[8];
    char t33[8];
    char t34[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t13;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;

LAB0:    t1 = (t0 + 6144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);

LAB4:    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 20);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 6496);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 6512);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 3368);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t8))
        goto LAB10;

LAB9:    t10 = (t6 + 4);
    t11 = (t8 + 4);
    if (*((unsigned int *)t10) != *((unsigned int *)t11))
        goto LAB10;

LAB11:    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t9, 32);
    t13 = (t0 + 4488);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3368);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB13;

LAB12:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB13;

LAB14:    xsi_vlogfile_write(1, 0, 0, ng8, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 6528);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    *((unsigned int *)t9) = 1;
    goto LAB11;

LAB13:    *((unsigned int *)t9) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(68, ng0);
    xsi_vlogfile_write(1, 0, 0, ng9, 1, t0);
    xsi_set_current_line(69, ng0);
    xsi_vlogfile_write(1, 0, 0, ng10, 1, t0);
    xsi_set_current_line(354, ng0);
    xsi_vlogfile_write(1, 0, 0, ng11, 1, t0);
    xsi_set_current_line(355, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(356, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(357, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 20);
    xsi_set_current_line(358, ng0);
    t2 = (t0 + 6544);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(359, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(359, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng13, 2, t0, (char)118, t4, 8);
    xsi_set_current_line(362, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(363, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(364, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(365, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 20);
    xsi_set_current_line(366, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(367, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(367, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng17, 3, t0, (char)118, t4, 8, (char)118, t5, 20);
    xsi_set_current_line(368, ng0);
    t2 = (t0 + 6560);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(369, ng0);
    t2 = xsi_vlog_time(t14, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng18, 2, t0, (char)118, t14, 64);
    xsi_vlogfile_write(1, 0, 0, ng19, 1, t0);
    xsi_set_current_line(370, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(371, ng0);
    t2 = (t0 + 6576);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(372, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(373, ng0);
    t2 = (t0 + 6592);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(374, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(374, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 3528);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(375, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(376, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(377, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(378, ng0);
    t2 = (t0 + 6608);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(379, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(380, ng0);
    t2 = (t0 + 6624);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(381, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(382, ng0);
    t2 = (t0 + 6640);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(383, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(384, ng0);
    t2 = (t0 + 6656);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(385, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(386, ng0);
    t2 = (t0 + 6672);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(387, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(388, ng0);
    t2 = (t0 + 6688);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(389, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(390, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 20);
    xsi_set_current_line(392, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(394, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(395, ng0);
    t2 = (t0 + 6704);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(398, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3368);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB31;

LAB30:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB31;

LAB32:    xsi_vlogfile_write(1, 0, 0, ng23, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(399, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 20);
    xsi_set_current_line(400, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(402, ng0);

LAB33:    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t9 + 4);
    t4 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (t15 >> 6);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t4);
    t18 = (t17 >> 6);
    *((unsigned int *)t2) = t18;
    t19 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t19 & 3U);
    t20 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t20 & 3U);
    t5 = ((char*)((ng25)));
    memset(t12, 0, 8);
    if (*((unsigned int *)t9) != *((unsigned int *)t5))
        goto LAB35;

LAB34:    t6 = (t9 + 4);
    t7 = (t5 + 4);
    if (*((unsigned int *)t6) != *((unsigned int *)t7))
        goto LAB35;

LAB36:    memset(t21, 0, 8);
    t8 = (t12 + 4);
    t22 = *((unsigned int *)t8);
    t23 = (~(t22));
    t24 = *((unsigned int *)t12);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t8) != 0)
        goto LAB39;

LAB40:    t11 = (t21 + 4);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t11);
    t29 = (t27 || t28);
    if (t29 > 0)
        goto LAB41;

LAB42:    memcpy(t42, t21, 8);

LAB43:    t74 = (t42 + 4);
    t75 = *((unsigned int *)t74);
    t76 = (~(t75));
    t77 = *((unsigned int *)t42);
    t78 = (t77 & t76);
    t79 = (t78 != 0);
    if (t79 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(407, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(408, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB31:    *((unsigned int *)t9) = 1;
    goto LAB32;

LAB35:    *((unsigned int *)t12) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t21) = 1;
    goto LAB40;

LAB39:    t10 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB40;

LAB41:    t13 = (t0 + 4328);
    t30 = (t13 + 56U);
    t31 = *((char **)t30);
    t32 = ((char*)((ng26)));
    memset(t33, 0, 8);
    xsi_vlog_signed_less(t33, 32, t31, 32, t32, 32);
    memset(t34, 0, 8);
    t35 = (t33 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (~(t36));
    t38 = *((unsigned int *)t33);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t35) != 0)
        goto LAB46;

LAB47:    t43 = *((unsigned int *)t21);
    t44 = *((unsigned int *)t34);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t21 + 4);
    t47 = (t34 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB43;

LAB44:    *((unsigned int *)t34) = 1;
    goto LAB47;

LAB46:    t41 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB47;

LAB48:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t21 + 4);
    t57 = (t34 + 4);
    t58 = *((unsigned int *)t21);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t61 = (~(t60));
    t62 = *((unsigned int *)t34);
    t63 = (~(t62));
    t64 = *((unsigned int *)t57);
    t65 = (~(t64));
    t66 = (t59 & t61);
    t67 = (t63 & t65);
    t68 = (~(t66));
    t69 = (~(t67));
    t70 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t70 & t68);
    t71 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t71 & t69);
    t72 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t72 & t68);
    t73 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t73 & t69);
    goto LAB50;

LAB51:    xsi_set_current_line(402, ng0);

LAB53:    xsi_set_current_line(403, ng0);
    t80 = (t0 + 6720);
    *((int *)t80) = 1;
    t81 = (t0 + 6176);
    *((char **)t81) = t80;
    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB54:    xsi_set_current_line(404, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB55:    xsi_set_current_line(404, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t5 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = (t15 >> 6);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t5);
    t18 = (t17 >> 6);
    *((unsigned int *)t3) = t18;
    t19 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t19 & 3U);
    t20 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t20 & 3U);
    xsi_vlogfile_write(1, 0, 0, ng27, 2, t0, (char)118, t9, 2);
    xsi_set_current_line(405, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng27, 2, t0, (char)118, t3, 8);
    goto LAB33;

LAB56:    xsi_set_current_line(408, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(409, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 20);
    xsi_set_current_line(410, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 3848);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t8))
        goto LAB58;

LAB57:    t10 = (t6 + 4);
    t11 = (t8 + 4);
    if (*((unsigned int *)t10) != *((unsigned int *)t11))
        goto LAB58;

LAB59:    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t9, 32);
    t13 = (t0 + 4488);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    xsi_set_current_line(411, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB61;

LAB60:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB61;

LAB62:    xsi_vlogfile_write(1, 0, 0, ng28, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(412, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB58:    *((unsigned int *)t9) = 1;
    goto LAB59;

LAB61:    *((unsigned int *)t9) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(412, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(413, ng0);
    t2 = (t0 + 6736);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB64;
    goto LAB1;

LAB64:    xsi_set_current_line(414, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 3848);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t8))
        goto LAB66;

LAB65:    t10 = (t6 + 4);
    t11 = (t8 + 4);
    if (*((unsigned int *)t10) != *((unsigned int *)t11))
        goto LAB66;

LAB67:    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t9, 32);
    t13 = (t0 + 4488);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    xsi_set_current_line(415, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB69;

LAB68:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB69;

LAB70:    xsi_vlogfile_write(1, 0, 0, ng29, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(416, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB66:    *((unsigned int *)t9) = 1;
    goto LAB67;

LAB69:    *((unsigned int *)t9) = 1;
    goto LAB70;

LAB71:    xsi_set_current_line(416, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(417, ng0);
    t2 = (t0 + 6752);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB72;
    goto LAB1;

LAB72:    xsi_set_current_line(418, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 3848);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t8))
        goto LAB74;

LAB73:    t10 = (t6 + 4);
    t11 = (t8 + 4);
    if (*((unsigned int *)t10) != *((unsigned int *)t11))
        goto LAB74;

LAB75:    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t9, 32);
    t13 = (t0 + 4488);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    xsi_set_current_line(419, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB77;

LAB76:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB77;

LAB78:    xsi_vlogfile_write(1, 0, 0, ng30, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(420, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB79;
    goto LAB1;

LAB74:    *((unsigned int *)t9) = 1;
    goto LAB75;

LAB77:    *((unsigned int *)t9) = 1;
    goto LAB78;

LAB79:    xsi_set_current_line(420, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(421, ng0);
    t2 = (t0 + 6768);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB80;
    goto LAB1;

LAB80:    xsi_set_current_line(422, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 3848);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t8))
        goto LAB82;

LAB81:    t10 = (t6 + 4);
    t11 = (t8 + 4);
    if (*((unsigned int *)t10) != *((unsigned int *)t11))
        goto LAB82;

LAB83:    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t9, 32);
    t13 = (t0 + 4488);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    xsi_set_current_line(423, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB85;

LAB84:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB85;

LAB86:    xsi_vlogfile_write(1, 0, 0, ng31, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(424, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB82:    *((unsigned int *)t9) = 1;
    goto LAB83;

LAB85:    *((unsigned int *)t9) = 1;
    goto LAB86;

LAB87:    xsi_set_current_line(424, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(425, ng0);
    t2 = (t0 + 6784);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB88;
    goto LAB1;

LAB88:    xsi_set_current_line(426, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 3848);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t8))
        goto LAB90;

LAB89:    t10 = (t6 + 4);
    t11 = (t8 + 4);
    if (*((unsigned int *)t10) != *((unsigned int *)t11))
        goto LAB90;

LAB91:    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t9, 32);
    t13 = (t0 + 4488);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    xsi_set_current_line(427, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB93;

LAB92:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB93;

LAB94:    xsi_vlogfile_write(1, 0, 0, ng32, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(428, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB90:    *((unsigned int *)t9) = 1;
    goto LAB91;

LAB93:    *((unsigned int *)t9) = 1;
    goto LAB94;

LAB95:    xsi_set_current_line(428, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(429, ng0);
    t2 = (t0 + 6800);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB96;
    goto LAB1;

LAB96:    xsi_set_current_line(430, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 3848);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t8))
        goto LAB98;

LAB97:    t10 = (t6 + 4);
    t11 = (t8 + 4);
    if (*((unsigned int *)t10) != *((unsigned int *)t11))
        goto LAB98;

LAB99:    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t9, 32);
    t13 = (t0 + 4488);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    xsi_set_current_line(431, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB101;

LAB100:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB101;

LAB102:    xsi_vlogfile_write(1, 0, 0, ng33, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(432, ng0);
    t2 = (t0 + 5952);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB98:    *((unsigned int *)t9) = 1;
    goto LAB99;

LAB101:    *((unsigned int *)t9) = 1;
    goto LAB102;

LAB103:    xsi_set_current_line(432, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(433, ng0);
    t2 = (t0 + 6816);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB104;
    goto LAB1;

LAB104:    xsi_set_current_line(434, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 3848);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t8))
        goto LAB106;

LAB105:    t10 = (t6 + 4);
    t11 = (t8 + 4);
    if (*((unsigned int *)t10) != *((unsigned int *)t11))
        goto LAB106;

LAB107:    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t9, 32);
    t13 = (t0 + 4488);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    xsi_set_current_line(435, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t9, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t6))
        goto LAB109;

LAB108:    t7 = (t4 + 4);
    t8 = (t6 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB109;

LAB110:    xsi_vlogfile_write(1, 0, 0, ng34, 3, t0, (char)118, t3, 8, (char)118, t9, 1);
    xsi_set_current_line(437, ng0);
    xsi_vlogfile_write(1, 0, 0, ng35, 1, t0);
    xsi_set_current_line(513, ng0);
    t2 = (t0 + 6832);
    *((int *)t2) = 1;
    t3 = (t0 + 6176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB111;
    goto LAB1;

LAB106:    *((unsigned int *)t9) = 1;
    goto LAB107;

LAB109:    *((unsigned int *)t9) = 1;
    goto LAB110;

LAB111:    xsi_set_current_line(514, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t9, 0, 8);
    xsi_vlog_signed_greater(t9, 32, t4, 32, t5, 32);
    t6 = (t9 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t9);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB112;

LAB113:    xsi_set_current_line(517, ng0);

LAB116:    xsi_set_current_line(518, ng0);
    xsi_vlogfile_write(1, 0, 0, ng37, 1, t0);

LAB114:    xsi_set_current_line(520, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB112:    xsi_set_current_line(514, ng0);

LAB115:    xsi_set_current_line(515, ng0);
    t7 = (t0 + 4488);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    xsi_vlogfile_write(1, 0, 0, ng36, 2, t0, (char)119, t10, 32);
    goto LAB114;

}


extern void work_m_08874307366339898631_2844518618_init()
{
	static char *pe[] = {(void *)Cont_19_0,(void *)Cont_20_1,(void *)Always_37_2,(void *)Initial_42_3};
	xsi_register_didat("work_m_08874307366339898631_2844518618", "isim/test_fdc_isim_beh.exe.sim/work/m_08874307366339898631_2844518618.didat");
	xsi_register_executes(pe);
}
