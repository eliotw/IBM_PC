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
static const char *ng0 = "/afs/ece.cmu.edu/usr/pmbrown/Private/IBM/IBM_PC/components/ram/ram.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 511U};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};



static void Cont_65_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 5624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2232U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;

LAB7:    t11 = (t3 + 4);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    *((unsigned int *)t3) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB9;

LAB8:    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 1U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 1U);
    t21 = (t0 + 7608);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 1U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t21, 0, 0);
    t34 = (t0 + 7432);
    *((int *)t34) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t3) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB8;

}

static void Cont_66_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 5872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2392U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;

LAB7:    t11 = (t3 + 4);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    *((unsigned int *)t3) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB9;

LAB8:    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 1U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 1U);
    t21 = (t0 + 7672);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 1U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t21, 0, 0);
    t34 = (t0 + 7448);
    *((int *)t34) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t3) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB8;

}

static void Cont_67_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 6120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2552U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;

LAB7:    t11 = (t3 + 4);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    *((unsigned int *)t3) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB9;

LAB8:    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 1U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 1U);
    t21 = (t0 + 7736);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 1U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t21, 0, 0);
    t34 = (t0 + 7464);
    *((int *)t34) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t3) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB8;

}

static void Cont_81_3(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;

LAB0:    t1 = (t0 + 6368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3912);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 4072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t3, 16, 16, 2U, t8, 8, t5, 8);
    t9 = (t0 + 7800);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t13, 0, 8);
    t14 = 65535U;
    t15 = t14;
    t16 = (t3 + 4);
    t17 = *((unsigned int *)t3);
    t14 = (t14 & t17);
    t18 = *((unsigned int *)t16);
    t15 = (t15 & t18);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 | t14);
    t21 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t21 | t15);
    xsi_driver_vfirst_trans(t9, 0, 15);
    t22 = (t0 + 7480);
    *((int *)t22) = 1;

LAB1:    return;
}

static void Cont_83_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;

LAB0:    t1 = (t0 + 6616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4552);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t7))
        goto LAB6;

LAB4:    t9 = (t6 + 4);
    t10 = (t7 + 4);
    if (*((unsigned int *)t9) != *((unsigned int *)t10))
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB6:    memset(t4, 0, 8);
    t11 = (t8 + 4);
    t12 = *((unsigned int *)t11);
    t13 = (~(t12));
    t14 = *((unsigned int *)t8);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB7;

LAB8:    if (*((unsigned int *)t11) != 0)
        goto LAB9;

LAB10:    t18 = (t4 + 4);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t18);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB11;

LAB12:    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t18);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t18) > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t4) > 0)
        goto LAB17;

LAB18:    memcpy(t3, t22, 8);

LAB19:    t28 = (t0 + 7864);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memset(t32, 0, 8);
    t33 = 511U;
    t34 = t33;
    t35 = (t3 + 4);
    t36 = *((unsigned int *)t3);
    t33 = (t33 & t36);
    t37 = *((unsigned int *)t35);
    t34 = (t34 & t37);
    t38 = (t32 + 4);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t39 | t33);
    t40 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t40 | t34);
    xsi_driver_vfirst_trans(t28, 0, 8);
    t41 = (t0 + 7496);
    *((int *)t41) = 1;

LAB1:    return;
LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB9:    t17 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB10;

LAB11:    t22 = (t0 + 3352U);
    t23 = *((char **)t22);
    goto LAB12;

LAB13:    t22 = ((char*)((ng2)));
    goto LAB14;

LAB15:    xsi_vlog_unsigned_bit_combine(t3, 9, t23, 9, t22, 9);
    goto LAB19;

LAB17:    memcpy(t3, t23, 8);
    goto LAB19;

}

static void Always_85_5(char *t0)
{
    char t11[8];
    char t22[8];
    char t26[8];
    char t27[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;

LAB0:    t1 = (t0 + 6864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 7512);
    *((int *)t2) = 1;
    t3 = (t0 + 6896);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(85, ng0);

LAB5:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 4232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(157, ng0);

LAB87:    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4072);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(160, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(87, ng0);
    t9 = (t0 + 1752U);
    t10 = *((char **)t9);
    t9 = ((char*)((ng1)));
    memset(t11, 0, 8);
    if (*((unsigned int *)t10) != *((unsigned int *)t9))
        goto LAB20;

LAB18:    t12 = (t10 + 4);
    t13 = (t9 + 4);
    if (*((unsigned int *)t12) != *((unsigned int *)t13))
        goto LAB20;

LAB19:    *((unsigned int *)t11) = 1;

LAB20:    t14 = (t11 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2872U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t11, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB27;

LAB25:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB27;

LAB26:    *((unsigned int *)t11) = 1;

LAB27:    t7 = (t11 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(101, ng0);

LAB32:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4072);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB30:
LAB23:    goto LAB17;

LAB9:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 1752U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t11, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t3))
        goto LAB35;

LAB33:    t5 = (t4 + 4);
    t7 = (t3 + 4);
    if (*((unsigned int *)t5) != *((unsigned int *)t7))
        goto LAB35;

LAB34:    *((unsigned int *)t11) = 1;

LAB35:    t9 = (t11 + 4);
    t15 = *((unsigned int *)t9);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3032U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t11, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB42;

LAB40:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB42;

LAB41:    *((unsigned int *)t11) = 1;

LAB42:    t7 = (t11 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(122, ng0);

LAB47:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4072);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB45:
LAB38:    goto LAB17;

LAB11:    xsi_set_current_line(129, ng0);
    t3 = (t0 + 1752U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t11, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t3))
        goto LAB50;

LAB48:    t5 = (t4 + 4);
    t7 = (t3 + 4);
    if (*((unsigned int *)t5) != *((unsigned int *)t7))
        goto LAB50;

LAB49:    *((unsigned int *)t11) = 1;

LAB50:    t9 = (t11 + 4);
    t15 = *((unsigned int *)t9);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2872U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t11, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB57;

LAB55:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB57;

LAB56:    *((unsigned int *)t11) = 1;

LAB57:    memset(t22, 0, 8);
    t7 = (t11 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t7) != 0)
        goto LAB60;

LAB61:    t10 = (t22 + 4);
    t23 = *((unsigned int *)t22);
    t24 = *((unsigned int *)t10);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB62;

LAB63:    memcpy(t34, t22, 8);

LAB64:    t65 = (t34 + 4);
    t66 = *((unsigned int *)t65);
    t67 = (~(t66));
    t68 = *((unsigned int *)t34);
    t69 = (t68 & t67);
    t70 = (t69 != 0);
    if (t70 > 0)
        goto LAB75;

LAB76:    xsi_set_current_line(143, ng0);

LAB79:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4072);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 3192U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t3 + 4);
    t15 = *((unsigned int *)t2);
    t16 = (~(t15));
    t17 = *((unsigned int *)t3);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB83;

LAB81:    if (*((unsigned int *)t2) == 0)
        goto LAB80;

LAB82:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;

LAB83:    t5 = (t11 + 4);
    t7 = (t3 + 4);
    t23 = *((unsigned int *)t3);
    t24 = (~(t23));
    *((unsigned int *)t11) = t24;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB85;

LAB84:    t31 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t31 & 1U);
    t32 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t32 & 1U);
    t9 = (t0 + 4552);
    xsi_vlogvar_assign_value(t9, t11, 0, 0, 1);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 3192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4712);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);

LAB77:
LAB53:    goto LAB17;

LAB13:    xsi_set_current_line(150, ng0);

LAB86:    xsi_set_current_line(151, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 4072);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB17;

LAB21:    xsi_set_current_line(87, ng0);

LAB24:    xsi_set_current_line(88, ng0);
    t20 = ((char*)((ng3)));
    t21 = (t0 + 4072);
    xsi_vlogvar_assign_value(t21, t20, 0, 0, 8);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB28:    xsi_set_current_line(94, ng0);

LAB31:    xsi_set_current_line(95, ng0);
    t9 = (t0 + 2712U);
    t10 = *((char **)t9);
    t9 = (t0 + 4072);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 8);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB30;

LAB36:    xsi_set_current_line(108, ng0);

LAB39:    xsi_set_current_line(109, ng0);
    t10 = ((char*)((ng3)));
    t12 = (t0 + 4072);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 8);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB38;

LAB43:    xsi_set_current_line(115, ng0);

LAB46:    xsi_set_current_line(116, ng0);
    t9 = (t0 + 4072);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t0 + 4072);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 8);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    t2 = (t0 + 3912);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 8);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(119, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB45;

LAB51:    xsi_set_current_line(129, ng0);

LAB54:    xsi_set_current_line(130, ng0);
    t10 = ((char*)((ng3)));
    t12 = (t0 + 4072);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 8);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB53;

LAB58:    *((unsigned int *)t22) = 1;
    goto LAB61;

LAB60:    t9 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB61;

LAB62:    t12 = (t0 + 3032U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng3)));
    memset(t26, 0, 8);
    if (*((unsigned int *)t13) != *((unsigned int *)t12))
        goto LAB67;

LAB65:    t14 = (t13 + 4);
    t20 = (t12 + 4);
    if (*((unsigned int *)t14) != *((unsigned int *)t20))
        goto LAB67;

LAB66:    *((unsigned int *)t26) = 1;

LAB67:    memset(t27, 0, 8);
    t21 = (t26 + 4);
    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = *((unsigned int *)t26);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t21) != 0)
        goto LAB70;

LAB71:    t35 = *((unsigned int *)t22);
    t36 = *((unsigned int *)t27);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t22 + 4);
    t39 = (t27 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB72;

LAB73:
LAB74:    goto LAB64;

LAB68:    *((unsigned int *)t27) = 1;
    goto LAB71;

LAB70:    t33 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB71;

LAB72:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t22 + 4);
    t49 = (t27 + 4);
    t50 = *((unsigned int *)t22);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t27);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t8 = (t51 & t53);
    t58 = (t55 & t57);
    t59 = (~(t8));
    t60 = (~(t58));
    t61 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t61 & t59);
    t62 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t62 & t60);
    t63 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t63 & t59);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    goto LAB74;

LAB75:    xsi_set_current_line(136, ng0);

LAB78:    xsi_set_current_line(137, ng0);
    t71 = (t0 + 4072);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    t74 = (t0 + 4072);
    xsi_vlogvar_assign_value(t74, t73, 0, 0, 8);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB77;

LAB80:    *((unsigned int *)t11) = 1;
    goto LAB83;

LAB85:    t25 = *((unsigned int *)t11);
    t28 = *((unsigned int *)t7);
    *((unsigned int *)t11) = (t25 | t28);
    t29 = *((unsigned int *)t5);
    t30 = *((unsigned int *)t7);
    *((unsigned int *)t5) = (t29 | t30);
    goto LAB84;

}

static void Always_167_6(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 7112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(167, ng0);
    t2 = (t0 + 7528);
    *((int *)t2) = 1;
    t3 = (t0 + 7144);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(167, ng0);

LAB5:    xsi_set_current_line(168, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    if (*((unsigned int *)t5) != *((unsigned int *)t4))
        goto LAB8;

LAB6:    t7 = (t5 + 4);
    t8 = (t4 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB8:    t9 = (t6 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t6);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(171, ng0);

LAB13:    xsi_set_current_line(172, ng0);
    t2 = (t0 + 4392);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 2, 0LL);

LAB11:    goto LAB2;

LAB9:    xsi_set_current_line(168, ng0);

LAB12:    xsi_set_current_line(169, ng0);
    t15 = ((char*)((ng3)));
    t16 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, 0, 2, 0LL);
    goto LAB11;

}


extern void work_m_10579247521771366524_3336656004_init()
{
	static char *pe[] = {(void *)Cont_65_0,(void *)Cont_66_1,(void *)Cont_67_2,(void *)Cont_81_3,(void *)Cont_83_4,(void *)Always_85_5,(void *)Always_167_6};
	xsi_register_didat("work_m_10579247521771366524_3336656004", "isim/test_ram_2_isim_beh.exe.sim/work/m_10579247521771366524_3336656004.didat");
	xsi_register_executes(pe);
}
