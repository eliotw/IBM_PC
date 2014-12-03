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
static const char *ng0 = "/afs/ece.cmu.edu/usr/mkaffine/Private/ece545/reposit/IBM_PC/components/fdc/sdcard.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {4U, 0U};
static unsigned int ng4[] = {8U, 0U};
static unsigned int ng5[] = {12U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};
static int ng8[] = {1, 0};
static unsigned int ng9[] = {511U, 0U};



static void Initial_44_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(44, ng0);

LAB2:    xsi_set_current_line(45, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3912);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4072);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4232);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(48, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4392);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4552);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4712);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4872);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 9);
    xsi_set_current_line(52, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 5032);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 9);
    xsi_set_current_line(53, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 5192);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 5352);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(55, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 5512);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);

LAB1:    return;
}

static void Cont_59_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 6672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4872);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9664);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 511U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 8);
    t18 = (t0 + 9472);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_60_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 6920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9728);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}

static void Cont_61_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 7168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9792);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void Cont_62_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 7416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9856);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void Cont_63_5(char *t0)
{
    char t3[8];
    char t6[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;

LAB0:    t1 = (t0 + 7664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t6, 0, 8);
    t10 = (t6 + 4);
    t11 = (t9 + 4);
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t11);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t16 & 4095U);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 & 4095U);
    xsi_vlogtype_concat(t3, 21, 21, 2U, t6, 12, t5, 9);
    t18 = (t0 + 9920);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memset(t22, 0, 8);
    t23 = 2097151U;
    t24 = t23;
    t25 = (t3 + 4);
    t26 = *((unsigned int *)t3);
    t23 = (t23 & t26);
    t27 = *((unsigned int *)t25);
    t24 = (t24 & t27);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t29 | t23);
    t30 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t30 | t24);
    xsi_driver_vfirst_trans(t18, 0, 20);
    t31 = (t0 + 9488);
    *((int *)t31) = 1;

LAB1:    return;
}

static void Always_66_6(char *t0)
{
    char t6[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;

LAB0:    t1 = (t0 + 7912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 9504);
    *((int *)t2) = 1;
    t3 = (t0 + 7944);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    t2 = (t0 + 1912U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t23 = *((unsigned int *)t3);
    t24 = *((unsigned int *)t6);
    t25 = (t23 & t24);
    *((unsigned int *)t30) = t25;
    t21 = (t3 + 4);
    t22 = (t6 + 4);
    t28 = (t30 + 4);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t31 = (t26 | t27);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB18;

LAB19:
LAB20:    t53 = (t30 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t30);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(73, ng0);

LAB25:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4232);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB23:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(67, ng0);

LAB13:    xsi_set_current_line(68, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB17;

LAB18:    t34 = *((unsigned int *)t30);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t34 | t35);
    t29 = (t3 + 4);
    t36 = (t6 + 4);
    t37 = *((unsigned int *)t3);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    t41 = *((unsigned int *)t6);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t49 & t47);
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t51 & t47);
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t48);
    goto LAB20;

LAB21:    xsi_set_current_line(70, ng0);

LAB24:    xsi_set_current_line(71, ng0);
    t59 = (t0 + 2872U);
    t60 = *((char **)t59);
    t59 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t59, t60, 0, 0, 32, 0LL);
    goto LAB23;

}

static void Always_79_7(char *t0)
{
    char t6[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;

LAB0:    t1 = (t0 + 8160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 9520);
    *((int *)t2) = 1;
    t3 = (t0 + 8192);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(79, ng0);

LAB5:    xsi_set_current_line(80, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    t2 = (t0 + 1912U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t23 = *((unsigned int *)t3);
    t24 = *((unsigned int *)t6);
    t25 = (t23 & t24);
    *((unsigned int *)t30) = t25;
    t21 = (t3 + 4);
    t22 = (t6 + 4);
    t28 = (t30 + 4);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t31 = (t26 | t27);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB18;

LAB19:
LAB20:    t53 = (t30 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t30);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(86, ng0);

LAB25:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4392);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4392);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB23:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(80, ng0);

LAB13:    xsi_set_current_line(81, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 4392);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB17;

LAB18:    t34 = *((unsigned int *)t30);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t34 | t35);
    t29 = (t3 + 4);
    t36 = (t6 + 4);
    t37 = *((unsigned int *)t3);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    t41 = *((unsigned int *)t6);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t49 & t47);
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t51 & t47);
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t48);
    goto LAB20;

LAB21:    xsi_set_current_line(83, ng0);

LAB24:    xsi_set_current_line(84, ng0);
    t59 = (t0 + 2872U);
    t60 = *((char **)t59);
    t59 = (t0 + 4392);
    xsi_vlogvar_wait_assign_value(t59, t60, 0, 0, 32, 0LL);
    goto LAB23;

}

static void Always_92_8(char *t0)
{
    char t6[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;

LAB0:    t1 = (t0 + 8408U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 9536);
    *((int *)t2) = 1;
    t3 = (t0 + 8440);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(92, ng0);

LAB5:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    t2 = (t0 + 1912U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t23 = *((unsigned int *)t3);
    t24 = *((unsigned int *)t6);
    t25 = (t23 & t24);
    *((unsigned int *)t30) = t25;
    t21 = (t3 + 4);
    t22 = (t6 + 4);
    t28 = (t30 + 4);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t31 = (t26 | t27);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB18;

LAB19:
LAB20:    t53 = (t30 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t30);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(99, ng0);

LAB25:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4552);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB23:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(93, ng0);

LAB13:    xsi_set_current_line(94, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB17;

LAB18:    t34 = *((unsigned int *)t30);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t34 | t35);
    t29 = (t3 + 4);
    t36 = (t6 + 4);
    t37 = *((unsigned int *)t3);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    t41 = *((unsigned int *)t6);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t49 & t47);
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t51 & t47);
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t48);
    goto LAB20;

LAB21:    xsi_set_current_line(96, ng0);

LAB24:    xsi_set_current_line(97, ng0);
    t59 = (t0 + 2872U);
    t60 = *((char **)t59);
    t59 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t59, t60, 0, 0, 32, 0LL);
    goto LAB23;

}

static void Always_105_9(char *t0)
{
    char t6[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;

LAB0:    t1 = (t0 + 8656U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 9552);
    *((int *)t2) = 1;
    t3 = (t0 + 8688);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(105, ng0);

LAB5:    xsi_set_current_line(106, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    t2 = (t0 + 1912U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t23 = *((unsigned int *)t3);
    t24 = *((unsigned int *)t6);
    t25 = (t23 & t24);
    *((unsigned int *)t30) = t25;
    t21 = (t3 + 4);
    t22 = (t6 + 4);
    t28 = (t30 + 4);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t31 = (t26 | t27);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB18;

LAB19:
LAB20:    t53 = (t30 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t30);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(112, ng0);

LAB25:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4712);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4712);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB23:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(106, ng0);

LAB13:    xsi_set_current_line(107, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 4712);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB17;

LAB18:    t34 = *((unsigned int *)t30);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t34 | t35);
    t29 = (t3 + 4);
    t36 = (t6 + 4);
    t37 = *((unsigned int *)t3);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    t41 = *((unsigned int *)t6);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t49 & t47);
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t51 & t47);
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t48);
    goto LAB20;

LAB21:    xsi_set_current_line(109, ng0);

LAB24:    xsi_set_current_line(110, ng0);
    t59 = (t0 + 2872U);
    t60 = *((char **)t59);
    t59 = (t0 + 4712);
    xsi_vlogvar_wait_assign_value(t59, t60, 0, 0, 32, 0LL);
    goto LAB23;

}

static void Always_118_10(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 8904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 9568);
    *((int *)t2) = 1;
    t3 = (t0 + 8936);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);

LAB5:    xsi_set_current_line(119, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(123, ng0);

LAB14:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 5032);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4872);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 9, 0LL);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 5512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(119, ng0);

LAB13:    xsi_set_current_line(120, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 4872);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 9, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB12;

}

static void Always_130_11(char *t0)
{
    char t11[8];
    char t24[8];
    char t62[8];
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
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t85;

LAB0:    t1 = (t0 + 9152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 9584);
    *((int *)t2) = 1;
    t3 = (t0 + 9184);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(134, ng0);

LAB5:    xsi_set_current_line(135, ng0);
    t4 = (t0 + 5352);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(187, ng0);

LAB69:    xsi_set_current_line(188, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5032);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 9);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5192);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4072);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(136, ng0);

LAB18:    xsi_set_current_line(137, ng0);
    t9 = ((char*)((ng1)));
    t10 = (t0 + 5032);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 9);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5192);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4072);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    t2 = (t0 + 1912U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t2 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB22;

LAB19:    if (t21 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t11) = 1;

LAB22:    t25 = *((unsigned int *)t3);
    t26 = *((unsigned int *)t11);
    t27 = (t25 & t26);
    *((unsigned int *)t24) = t27;
    t10 = (t3 + 4);
    t28 = (t11 + 4);
    t29 = (t24 + 4);
    t30 = *((unsigned int *)t10);
    t31 = *((unsigned int *)t28);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB23;

LAB24:
LAB25:    t54 = (t24 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t24);
    t58 = (t57 & t56);
    t59 = (t58 != 0);
    if (t59 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(152, ng0);

LAB47:    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB28:    goto LAB17;

LAB9:    xsi_set_current_line(156, ng0);

LAB48:    xsi_set_current_line(157, ng0);
    t3 = (t0 + 4872);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng8)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t5, 9, t7, 32);
    t9 = (t0 + 5032);
    xsi_vlogvar_assign_value(t9, t11, 0, 0, 9);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5192);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(160, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4072);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(161, ng0);
    t2 = (t0 + 4872);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t11, 0, 8);
    t7 = (t4 + 4);
    t9 = (t5 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t9);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t9);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB52;

LAB49:    if (t21 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t11) = 1;

LAB52:    t28 = (t11 + 4);
    t25 = *((unsigned int *)t28);
    t26 = (~(t25));
    t27 = *((unsigned int *)t11);
    t30 = (t27 & t26);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(164, ng0);

LAB57:    xsi_set_current_line(165, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB55:    goto LAB17;

LAB11:    xsi_set_current_line(168, ng0);

LAB58:    xsi_set_current_line(169, ng0);
    t3 = (t0 + 4872);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng8)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t5, 9, t7, 32);
    t9 = (t0 + 5032);
    xsi_vlogvar_assign_value(t9, t11, 0, 0, 9);
    xsi_set_current_line(170, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5192);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4072);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(173, ng0);
    t2 = (t0 + 4872);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t11, 0, 8);
    t7 = (t4 + 4);
    t9 = (t5 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t9);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t9);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB62;

LAB59:    if (t21 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t11) = 1;

LAB62:    t28 = (t11 + 4);
    t25 = *((unsigned int *)t28);
    t26 = (~(t25));
    t27 = *((unsigned int *)t11);
    t30 = (t27 & t26);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(176, ng0);

LAB67:    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB65:    goto LAB17;

LAB13:    xsi_set_current_line(180, ng0);

LAB68:    xsi_set_current_line(181, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5032);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 9);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5192);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4072);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB17;

LAB21:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB22;

LAB23:    t35 = *((unsigned int *)t24);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t24) = (t35 | t36);
    t37 = (t3 + 4);
    t38 = (t11 + 4);
    t39 = *((unsigned int *)t3);
    t40 = (~(t39));
    t41 = *((unsigned int *)t37);
    t42 = (~(t41));
    t43 = *((unsigned int *)t11);
    t44 = (~(t43));
    t45 = *((unsigned int *)t38);
    t46 = (~(t45));
    t8 = (t40 & t42);
    t47 = (t44 & t46);
    t48 = (~(t8));
    t49 = (~(t47));
    t50 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t50 & t48);
    t51 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t51 & t49);
    t52 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t52 & t48);
    t53 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t53 & t49);
    goto LAB25;

LAB26:    xsi_set_current_line(141, ng0);

LAB29:    xsi_set_current_line(142, ng0);
    t60 = (t0 + 2872U);
    t61 = *((char **)t60);
    t60 = ((char*)((ng6)));
    memset(t62, 0, 8);
    t63 = (t61 + 4);
    t64 = (t60 + 4);
    t65 = *((unsigned int *)t61);
    t66 = *((unsigned int *)t60);
    t67 = (t65 ^ t66);
    t68 = *((unsigned int *)t63);
    t69 = *((unsigned int *)t64);
    t70 = (t68 ^ t69);
    t71 = (t67 | t70);
    t72 = *((unsigned int *)t63);
    t73 = *((unsigned int *)t64);
    t74 = (t72 | t73);
    t75 = (~(t74));
    t76 = (t71 & t75);
    if (t76 != 0)
        goto LAB33;

LAB30:    if (t74 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t62) = 1;

LAB33:    t78 = (t62 + 4);
    t79 = *((unsigned int *)t78);
    t80 = (~(t79));
    t81 = *((unsigned int *)t62);
    t82 = (t81 & t80);
    t83 = (t82 != 0);
    if (t83 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2872U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB41;

LAB38:    if (t21 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t11) = 1;

LAB41:    t9 = (t11 + 4);
    t25 = *((unsigned int *)t9);
    t26 = (~(t25));
    t27 = *((unsigned int *)t11);
    t30 = (t27 & t26);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(148, ng0);

LAB46:    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB44:
LAB36:    goto LAB28;

LAB32:    t77 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(142, ng0);

LAB37:    xsi_set_current_line(143, ng0);
    t84 = ((char*)((ng3)));
    t85 = (t0 + 5512);
    xsi_vlogvar_assign_value(t85, t84, 0, 0, 4);
    goto LAB36;

LAB40:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(145, ng0);

LAB45:    xsi_set_current_line(146, ng0);
    t10 = ((char*)((ng6)));
    t28 = (t0 + 5512);
    xsi_vlogvar_assign_value(t28, t10, 0, 0, 4);
    goto LAB44;

LAB51:    t10 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB52;

LAB53:    xsi_set_current_line(161, ng0);

LAB56:    xsi_set_current_line(162, ng0);
    t29 = ((char*)((ng4)));
    t37 = (t0 + 5512);
    xsi_vlogvar_assign_value(t37, t29, 0, 0, 4);
    goto LAB55;

LAB61:    t10 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(173, ng0);

LAB66:    xsi_set_current_line(174, ng0);
    t29 = ((char*)((ng4)));
    t37 = (t0 + 5512);
    xsi_vlogvar_assign_value(t37, t29, 0, 0, 4);
    goto LAB65;

}


extern void work_m_13488998349911473861_0000854576_init()
{
	static char *pe[] = {(void *)Initial_44_0,(void *)Cont_59_1,(void *)Cont_60_2,(void *)Cont_61_3,(void *)Cont_62_4,(void *)Cont_63_5,(void *)Always_66_6,(void *)Always_79_7,(void *)Always_92_8,(void *)Always_105_9,(void *)Always_118_10,(void *)Always_130_11};
	xsi_register_didat("work_m_13488998349911473861_0000854576", "isim/test_fdc_isim_beh.exe.sim/work/m_13488998349911473861_0000854576.didat");
	xsi_register_executes(pe);
}
