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
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Cont_75_0(char *t0)
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

LAB0:    t1 = (t0 + 5464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(75, ng0);
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
    t21 = (t0 + 7184);
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
    t34 = (t0 + 7024);
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

static void Cont_76_1(char *t0)
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

LAB0:    t1 = (t0 + 5712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
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
    t21 = (t0 + 7248);
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
    t34 = (t0 + 7040);
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

static void Cont_77_2(char *t0)
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

LAB0:    t1 = (t0 + 5960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
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
    t21 = (t0 + 7312);
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
    t34 = (t0 + 7056);
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

static void Cont_95_3(char *t0)
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

LAB0:    t1 = (t0 + 6208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 3912);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 4072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t3, 16, 16, 2U, t8, 8, t5, 8);
    t9 = (t0 + 7376);
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
    t22 = (t0 + 7072);
    *((int *)t22) = 1;

LAB1:    return;
}

static void Always_98_4(char *t0)
{
    char t11[8];
    char t30[8];
    char t31[8];
    char t32[8];
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
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
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

LAB0:    t1 = (t0 + 6456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 7088);
    *((int *)t2) = 1;
    t3 = (t0 + 6488);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);

LAB5:    xsi_set_current_line(99, ng0);
    t4 = (t0 + 4232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(170, ng0);

LAB93:    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4072);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(174, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(100, ng0);
    t9 = (t0 + 1752U);
    t10 = *((char **)t9);
    t9 = ((char*)((ng2)));
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

LAB22:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2872U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
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

LAB29:    xsi_set_current_line(114, ng0);

LAB32:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4072);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(119, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB30:
LAB23:    goto LAB17;

LAB9:    xsi_set_current_line(121, ng0);
    t3 = (t0 + 1752U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
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

LAB37:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 3032U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
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

LAB44:    xsi_set_current_line(135, ng0);

LAB53:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4072);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB45:
LAB38:    goto LAB17;

LAB11:    xsi_set_current_line(142, ng0);
    t3 = (t0 + 1752U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t3))
        goto LAB56;

LAB54:    t5 = (t4 + 4);
    t7 = (t3 + 4);
    if (*((unsigned int *)t5) != *((unsigned int *)t7))
        goto LAB56;

LAB55:    *((unsigned int *)t11) = 1;

LAB56:    t9 = (t11 + 4);
    t15 = *((unsigned int *)t9);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 2872U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t11, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB63;

LAB61:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB63;

LAB62:    *((unsigned int *)t11) = 1;

LAB63:    memset(t30, 0, 8);
    t7 = (t11 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t7) != 0)
        goto LAB66;

LAB67:    t10 = (t30 + 4);
    t22 = *((unsigned int *)t30);
    t23 = *((unsigned int *)t10);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB68;

LAB69:    memcpy(t34, t30, 8);

LAB70:    t65 = (t34 + 4);
    t66 = *((unsigned int *)t65);
    t67 = (~(t66));
    t68 = *((unsigned int *)t34);
    t69 = (t68 & t67);
    t70 = (t69 != 0);
    if (t70 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(156, ng0);

LAB85:    xsi_set_current_line(157, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4072);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(158, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(160, ng0);
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
        goto LAB89;

LAB87:    if (*((unsigned int *)t2) == 0)
        goto LAB86;

LAB88:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;

LAB89:    t5 = (t11 + 4);
    t7 = (t3 + 4);
    t22 = *((unsigned int *)t3);
    t23 = (~(t22));
    *((unsigned int *)t11) = t23;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB91;

LAB90:    t28 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t28 & 1U);
    t29 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t29 & 1U);
    t9 = (t0 + 3752);
    xsi_vlogvar_assign_value(t9, t11, 0, 0, 1);
    xsi_set_current_line(161, ng0);
    t2 = (t0 + 3192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4552);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);

LAB83:
LAB59:    goto LAB17;

LAB13:    xsi_set_current_line(163, ng0);

LAB92:    xsi_set_current_line(164, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 4072);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(165, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB17;

LAB21:    xsi_set_current_line(100, ng0);

LAB24:    xsi_set_current_line(101, ng0);
    t20 = ((char*)((ng1)));
    t21 = (t0 + 4072);
    xsi_vlogvar_assign_value(t21, t20, 0, 0, 8);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB28:    xsi_set_current_line(107, ng0);

LAB31:    xsi_set_current_line(108, ng0);
    t9 = (t0 + 2712U);
    t10 = *((char **)t9);
    t9 = (t0 + 4072);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 8);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB30;

LAB36:    xsi_set_current_line(121, ng0);

LAB39:    xsi_set_current_line(122, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 4072);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 8);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB38;

LAB43:    xsi_set_current_line(128, ng0);

LAB46:    xsi_set_current_line(129, ng0);
    t9 = (t0 + 4072);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t0 + 4072);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 8);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    t2 = (t0 + 3912);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 8);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(132, ng0);
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
        goto LAB50;

LAB48:    if (*((unsigned int *)t2) == 0)
        goto LAB47;

LAB49:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;

LAB50:    t5 = (t11 + 4);
    t7 = (t3 + 4);
    t22 = *((unsigned int *)t3);
    t23 = (~(t22));
    *((unsigned int *)t11) = t23;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB52;

LAB51:    t28 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t28 & 1U);
    t29 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t29 & 1U);
    t9 = (t0 + 3752);
    xsi_vlogvar_assign_value(t9, t11, 0, 0, 1);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 3192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4552);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB45;

LAB47:    *((unsigned int *)t11) = 1;
    goto LAB50;

LAB52:    t24 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t7);
    *((unsigned int *)t11) = (t24 | t25);
    t26 = *((unsigned int *)t5);
    t27 = *((unsigned int *)t7);
    *((unsigned int *)t5) = (t26 | t27);
    goto LAB51;

LAB57:    xsi_set_current_line(142, ng0);

LAB60:    xsi_set_current_line(143, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 4072);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 8);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB59;

LAB64:    *((unsigned int *)t30) = 1;
    goto LAB67;

LAB66:    t9 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB67;

LAB68:    t12 = (t0 + 3032U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng1)));
    memset(t31, 0, 8);
    if (*((unsigned int *)t13) != *((unsigned int *)t12))
        goto LAB73;

LAB71:    t14 = (t13 + 4);
    t20 = (t12 + 4);
    if (*((unsigned int *)t14) != *((unsigned int *)t20))
        goto LAB73;

LAB72:    *((unsigned int *)t31) = 1;

LAB73:    memset(t32, 0, 8);
    t21 = (t31 + 4);
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t31);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t21) != 0)
        goto LAB76;

LAB77:    t35 = *((unsigned int *)t30);
    t36 = *((unsigned int *)t32);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t30 + 4);
    t39 = (t32 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB78;

LAB79:
LAB80:    goto LAB70;

LAB74:    *((unsigned int *)t32) = 1;
    goto LAB77;

LAB76:    t33 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB77;

LAB78:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t30 + 4);
    t49 = (t32 + 4);
    t50 = *((unsigned int *)t30);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t32);
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
    goto LAB80;

LAB81:    xsi_set_current_line(149, ng0);

LAB84:    xsi_set_current_line(150, ng0);
    t71 = (t0 + 4072);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    t74 = (t0 + 4072);
    xsi_vlogvar_assign_value(t74, t73, 0, 0, 8);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3912);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB83;

LAB86:    *((unsigned int *)t11) = 1;
    goto LAB89;

LAB91:    t24 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t7);
    *((unsigned int *)t11) = (t24 | t25);
    t26 = *((unsigned int *)t5);
    t27 = *((unsigned int *)t7);
    *((unsigned int *)t5) = (t26 | t27);
    goto LAB90;

}

static void Always_181_5(char *t0)
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

LAB0:    t1 = (t0 + 6704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(181, ng0);
    t2 = (t0 + 7104);
    *((int *)t2) = 1;
    t3 = (t0 + 6736);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(181, ng0);

LAB5:    xsi_set_current_line(182, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
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

LAB10:    xsi_set_current_line(185, ng0);

LAB13:    xsi_set_current_line(186, ng0);
    t2 = (t0 + 4392);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 2, 0LL);

LAB11:    goto LAB2;

LAB9:    xsi_set_current_line(182, ng0);

LAB12:    xsi_set_current_line(183, ng0);
    t15 = ((char*)((ng1)));
    t16 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, 0, 2, 0LL);
    goto LAB11;

}


extern void work_m_08062403368475247545_3336656004_init()
{
	static char *pe[] = {(void *)Cont_75_0,(void *)Cont_76_1,(void *)Cont_77_2,(void *)Cont_95_3,(void *)Always_98_4,(void *)Always_181_5};
	xsi_register_didat("work_m_08062403368475247545_3336656004", "isim/test_ram_bank_isim_beh.exe.sim/work/m_08062403368475247545_3336656004.didat");
	xsi_register_executes(pe);
}
