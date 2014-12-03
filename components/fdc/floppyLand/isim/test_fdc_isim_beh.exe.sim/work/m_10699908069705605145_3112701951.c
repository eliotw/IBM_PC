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
static const char *ng0 = "/afs/ece.cmu.edu/usr/mkaffine/Private/ece545/reposit/IBM_PC/components/fdc/simple_fifo.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {2, 0};
static int ng5[] = {1, 0};



static void Cont_57_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;

LAB0:    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 3320);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    xsi_vlog_generic_get_array_select_value(t5, 8, t4, t8, t11, 2, 1, t14, 10, 2);
    t15 = (t0 + 6376);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memset(t19, 0, 8);
    t20 = 255U;
    t21 = t20;
    t22 = (t5 + 4);
    t23 = *((unsigned int *)t5);
    t20 = (t20 & t23);
    t24 = *((unsigned int *)t22);
    t21 = (t21 & t24);
    t25 = (t19 + 4);
    t26 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t26 | t20);
    t27 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t27 | t21);
    xsi_driver_vfirst_trans(t15, 0, 7);
    t28 = (t0 + 6200);
    *((int *)t28) = 1;

LAB1:    return;
}

static void Cont_58_1(char *t0)
{
    char t6[8];
    char t22[8];
    char t34[8];
    char t55[8];
    char t63[8];
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
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
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
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    int t87;
    int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;

LAB0:    t1 = (t0 + 4640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB12;

LAB13:    memcpy(t63, t22, 8);

LAB14:    t95 = (t0 + 6440);
    t96 = (t95 + 56U);
    t97 = *((char **)t96);
    t98 = (t97 + 56U);
    t99 = *((char **)t98);
    memset(t99, 0, 8);
    t100 = 1U;
    t101 = t100;
    t102 = (t63 + 4);
    t103 = *((unsigned int *)t63);
    t100 = (t100 & t103);
    t104 = *((unsigned int *)t102);
    t101 = (t101 & t104);
    t105 = (t99 + 4);
    t106 = *((unsigned int *)t99);
    *((unsigned int *)t99) = (t106 | t100);
    t107 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t107 | t101);
    xsi_driver_vfirst_trans(t95, 0, 0);
    t108 = (t0 + 6216);
    *((int *)t108) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t35 = (t0 + 2840);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memset(t34, 0, 8);
    t38 = (t37 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t37);
    t42 = (t41 & t40);
    t43 = (t42 & 1U);
    if (t43 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t38) == 0)
        goto LAB15;

LAB17:    t44 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t44) = 1;

LAB18:    t45 = (t34 + 4);
    t46 = (t37 + 4);
    t47 = *((unsigned int *)t37);
    t48 = (~(t47));
    *((unsigned int *)t34) = t48;
    *((unsigned int *)t45) = 0;
    if (*((unsigned int *)t46) != 0)
        goto LAB20;

LAB19:    t53 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t53 & 1U);
    t54 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t54 & 1U);
    memset(t55, 0, 8);
    t56 = (t34 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t34);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t56) != 0)
        goto LAB23;

LAB24:    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t55);
    t66 = (t64 & t65);
    *((unsigned int *)t63) = t66;
    t67 = (t22 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB14;

LAB15:    *((unsigned int *)t34) = 1;
    goto LAB18;

LAB20:    t49 = *((unsigned int *)t34);
    t50 = *((unsigned int *)t46);
    *((unsigned int *)t34) = (t49 | t50);
    t51 = *((unsigned int *)t45);
    t52 = *((unsigned int *)t46);
    *((unsigned int *)t45) = (t51 | t52);
    goto LAB19;

LAB21:    *((unsigned int *)t55) = 1;
    goto LAB24;

LAB23:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB24;

LAB25:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t22 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t22);
    t80 = (~(t79));
    t81 = *((unsigned int *)t77);
    t82 = (~(t81));
    t83 = *((unsigned int *)t55);
    t84 = (~(t83));
    t85 = *((unsigned int *)t78);
    t86 = (~(t85));
    t87 = (t80 & t82);
    t88 = (t84 & t86);
    t89 = (~(t87));
    t90 = (~(t88));
    t91 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t91 & t89);
    t92 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t92 & t90);
    t93 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t93 & t89);
    t94 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t94 & t90);
    goto LAB27;

}

static void Always_60_2(char *t0)
{
    char t6[8];
    char t30[8];
    char t35[8];
    char t42[8];
    char t84[8];
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
    char *t82;
    char *t83;
    char *t85;

LAB0:    t1 = (t0 + 4888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 6232);
    *((int *)t2) = 1;
    t3 = (t0 + 4920);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1480U);
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

LAB11:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t2) != 0)
        goto LAB18;

LAB19:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB20;

LAB21:    memcpy(t42, t6, 8);

LAB22:    t74 = (t42 + 4);
    t75 = *((unsigned int *)t74);
    t76 = (~(t75));
    t77 = *((unsigned int *)t42);
    t78 = (t77 & t76);
    t79 = (t78 != 0);
    if (t79 > 0)
        goto LAB36;

LAB37:
LAB38:
LAB15:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(61, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 10, 0LL);
    goto LAB12;

LAB13:    xsi_set_current_line(62, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 10, 0LL);
    goto LAB15;

LAB16:    *((unsigned int *)t6) = 1;
    goto LAB19;

LAB18:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB19;

LAB20:    t7 = (t0 + 2280U);
    t8 = *((char **)t7);
    memset(t30, 0, 8);
    t7 = (t8 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t7) == 0)
        goto LAB23;

LAB25:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;

LAB26:    t22 = (t30 + 4);
    t28 = (t8 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    *((unsigned int *)t30) = t25;
    *((unsigned int *)t22) = 0;
    if (*((unsigned int *)t28) != 0)
        goto LAB28;

LAB27:    t33 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t33 & 1U);
    t34 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t34 & 1U);
    memset(t35, 0, 8);
    t29 = (t30 + 4);
    t36 = *((unsigned int *)t29);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t29) != 0)
        goto LAB31;

LAB32:    t43 = *((unsigned int *)t6);
    t44 = *((unsigned int *)t35);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t6 + 4);
    t47 = (t35 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB33;

LAB34:
LAB35:    goto LAB22;

LAB23:    *((unsigned int *)t30) = 1;
    goto LAB26;

LAB28:    t26 = *((unsigned int *)t30);
    t27 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t26 | t27);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t31 | t32);
    goto LAB27;

LAB29:    *((unsigned int *)t35) = 1;
    goto LAB32;

LAB31:    t41 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB32;

LAB33:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t6 + 4);
    t57 = (t35 + 4);
    t58 = *((unsigned int *)t6);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t61 = (~(t60));
    t62 = *((unsigned int *)t35);
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
    goto LAB35;

LAB36:    xsi_set_current_line(63, ng0);
    t80 = (t0 + 3320);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    t83 = ((char*)((ng3)));
    memset(t84, 0, 8);
    xsi_vlog_unsigned_add(t84, 10, t82, 10, t83, 10);
    t85 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t85, t84, 0, 0, 10, 0LL);
    goto LAB38;

}

static void Always_66_3(char *t0)
{
    char t6[8];
    char t30[8];
    char t36[8];
    char t51[8];
    char t58[8];
    char t86[8];
    char t94[8];
    char t136[8];
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
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    int t118;
    int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    char *t137;

LAB0:    t1 = (t0 + 5136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 6248);
    *((int *)t2) = 1;
    t3 = (t0 + 5168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1480U);
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

LAB11:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1960U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t2) != 0)
        goto LAB18;

LAB19:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB20;

LAB21:    memcpy(t94, t6, 8);

LAB22:    t126 = (t94 + 4);
    t127 = *((unsigned int *)t126);
    t128 = (~(t127));
    t129 = *((unsigned int *)t94);
    t130 = (t129 & t128);
    t131 = (t130 != 0);
    if (t131 > 0)
        goto LAB50;

LAB51:
LAB52:
LAB15:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(67, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 10, 0LL);
    goto LAB12;

LAB13:    xsi_set_current_line(68, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 10, 0LL);
    goto LAB15;

LAB16:    *((unsigned int *)t6) = 1;
    goto LAB19;

LAB18:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB19;

LAB20:    t7 = (t0 + 2840);
    t8 = (t7 + 56U);
    t21 = *((char **)t8);
    memset(t30, 0, 8);
    t22 = (t21 + 4);
    t17 = *((unsigned int *)t22);
    t18 = (~(t17));
    t19 = *((unsigned int *)t21);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t22) == 0)
        goto LAB23;

LAB25:    t28 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t28) = 1;

LAB26:    t29 = (t30 + 4);
    t31 = (t21 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (~(t24));
    *((unsigned int *)t30) = t25;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t31) != 0)
        goto LAB28;

LAB27:    t34 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t34 & 1U);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t35 & 1U);
    memset(t36, 0, 8);
    t37 = (t30 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t30);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t37) != 0)
        goto LAB31;

LAB32:    t44 = (t36 + 4);
    t45 = *((unsigned int *)t36);
    t46 = (!(t45));
    t47 = *((unsigned int *)t44);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB33;

LAB34:    memcpy(t58, t36, 8);

LAB35:    memset(t86, 0, 8);
    t87 = (t58 + 4);
    t88 = *((unsigned int *)t87);
    t89 = (~(t88));
    t90 = *((unsigned int *)t58);
    t91 = (t90 & t89);
    t92 = (t91 & 1U);
    if (t92 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t87) != 0)
        goto LAB45;

LAB46:    t95 = *((unsigned int *)t6);
    t96 = *((unsigned int *)t86);
    t97 = (t95 & t96);
    *((unsigned int *)t94) = t97;
    t98 = (t6 + 4);
    t99 = (t86 + 4);
    t100 = (t94 + 4);
    t101 = *((unsigned int *)t98);
    t102 = *((unsigned int *)t99);
    t103 = (t101 | t102);
    *((unsigned int *)t100) = t103;
    t104 = *((unsigned int *)t100);
    t105 = (t104 != 0);
    if (t105 == 1)
        goto LAB47;

LAB48:
LAB49:    goto LAB22;

LAB23:    *((unsigned int *)t30) = 1;
    goto LAB26;

LAB28:    t26 = *((unsigned int *)t30);
    t27 = *((unsigned int *)t31);
    *((unsigned int *)t30) = (t26 | t27);
    t32 = *((unsigned int *)t29);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t29) = (t32 | t33);
    goto LAB27;

LAB29:    *((unsigned int *)t36) = 1;
    goto LAB32;

LAB31:    t43 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB32;

LAB33:    t49 = (t0 + 1800U);
    t50 = *((char **)t49);
    memset(t51, 0, 8);
    t49 = (t50 + 4);
    t52 = *((unsigned int *)t49);
    t53 = (~(t52));
    t54 = *((unsigned int *)t50);
    t55 = (t54 & t53);
    t56 = (t55 & 1U);
    if (t56 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t49) != 0)
        goto LAB38;

LAB39:    t59 = *((unsigned int *)t36);
    t60 = *((unsigned int *)t51);
    t61 = (t59 | t60);
    *((unsigned int *)t58) = t61;
    t62 = (t36 + 4);
    t63 = (t51 + 4);
    t64 = (t58 + 4);
    t65 = *((unsigned int *)t62);
    t66 = *((unsigned int *)t63);
    t67 = (t65 | t66);
    *((unsigned int *)t64) = t67;
    t68 = *((unsigned int *)t64);
    t69 = (t68 != 0);
    if (t69 == 1)
        goto LAB40;

LAB41:
LAB42:    goto LAB35;

LAB36:    *((unsigned int *)t51) = 1;
    goto LAB39;

LAB38:    t57 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB39;

LAB40:    t70 = *((unsigned int *)t58);
    t71 = *((unsigned int *)t64);
    *((unsigned int *)t58) = (t70 | t71);
    t72 = (t36 + 4);
    t73 = (t51 + 4);
    t74 = *((unsigned int *)t72);
    t75 = (~(t74));
    t76 = *((unsigned int *)t36);
    t77 = (t76 & t75);
    t78 = *((unsigned int *)t73);
    t79 = (~(t78));
    t80 = *((unsigned int *)t51);
    t81 = (t80 & t79);
    t82 = (~(t77));
    t83 = (~(t81));
    t84 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t84 & t82);
    t85 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t85 & t83);
    goto LAB42;

LAB43:    *((unsigned int *)t86) = 1;
    goto LAB46;

LAB45:    t93 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t93) = 1;
    goto LAB46;

LAB47:    t106 = *((unsigned int *)t94);
    t107 = *((unsigned int *)t100);
    *((unsigned int *)t94) = (t106 | t107);
    t108 = (t6 + 4);
    t109 = (t86 + 4);
    t110 = *((unsigned int *)t6);
    t111 = (~(t110));
    t112 = *((unsigned int *)t108);
    t113 = (~(t112));
    t114 = *((unsigned int *)t86);
    t115 = (~(t114));
    t116 = *((unsigned int *)t109);
    t117 = (~(t116));
    t118 = (t111 & t113);
    t119 = (t115 & t117);
    t120 = (~(t118));
    t121 = (~(t119));
    t122 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t122 & t120);
    t123 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t123 & t121);
    t124 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t124 & t120);
    t125 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t125 & t121);
    goto LAB49;

LAB50:    xsi_set_current_line(69, ng0);
    t132 = (t0 + 3480);
    t133 = (t132 + 56U);
    t134 = *((char **)t133);
    t135 = ((char*)((ng3)));
    memset(t136, 0, 8);
    xsi_vlog_unsigned_add(t136, 10, t134, 10, t135, 10);
    t137 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t137, t136, 0, 0, 10, 0LL);
    goto LAB52;

}

static void Always_72_4(char *t0)
{
    char t6[8];
    char t17[8];
    char t38[8];
    char t53[8];
    char t60[8];
    char t88[8];
    char t96[8];
    char t136[8];
    char t137[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    int t120;
    int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    char *t138;
    char *t139;
    char *t140;
    char *t141;
    char *t142;
    char *t143;
    char *t144;
    char *t145;
    char *t146;
    char *t147;
    unsigned int t148;
    int t149;
    char *t150;
    unsigned int t151;
    int t152;
    int t153;
    unsigned int t154;
    unsigned int t155;
    int t156;
    int t157;

LAB0:    t1 = (t0 + 5384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 6264);
    *((int *)t2) = 1;
    t3 = (t0 + 5416);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);

LAB5:    xsi_set_current_line(73, ng0);
    t4 = (t0 + 1960U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB10;

LAB11:    memcpy(t96, t6, 8);

LAB12:    t128 = (t96 + 4);
    t129 = *((unsigned int *)t128);
    t130 = (~(t129));
    t131 = *((unsigned int *)t96);
    t132 = (t131 & t130);
    t133 = (t132 != 0);
    if (t133 > 0)
        goto LAB40;

LAB41:
LAB42:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t18 = (t0 + 2840);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t17, 0, 8);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB16;

LAB14:    if (*((unsigned int *)t21) == 0)
        goto LAB13;

LAB15:    t27 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t27) = 1;

LAB16:    t28 = (t17 + 4);
    t29 = (t20 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    *((unsigned int *)t17) = t31;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB18;

LAB17:    t36 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t36 & 1U);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & 1U);
    memset(t38, 0, 8);
    t39 = (t17 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t17);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t39) != 0)
        goto LAB21;

LAB22:    t46 = (t38 + 4);
    t47 = *((unsigned int *)t38);
    t48 = (!(t47));
    t49 = *((unsigned int *)t46);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB23;

LAB24:    memcpy(t60, t38, 8);

LAB25:    memset(t88, 0, 8);
    t89 = (t60 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t60);
    t93 = (t92 & t91);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t89) != 0)
        goto LAB35;

LAB36:    t97 = *((unsigned int *)t6);
    t98 = *((unsigned int *)t88);
    t99 = (t97 & t98);
    *((unsigned int *)t96) = t99;
    t100 = (t6 + 4);
    t101 = (t88 + 4);
    t102 = (t96 + 4);
    t103 = *((unsigned int *)t100);
    t104 = *((unsigned int *)t101);
    t105 = (t103 | t104);
    *((unsigned int *)t102) = t105;
    t106 = *((unsigned int *)t102);
    t107 = (t106 != 0);
    if (t107 == 1)
        goto LAB37;

LAB38:
LAB39:    goto LAB12;

LAB13:    *((unsigned int *)t17) = 1;
    goto LAB16;

LAB18:    t32 = *((unsigned int *)t17);
    t33 = *((unsigned int *)t29);
    *((unsigned int *)t17) = (t32 | t33);
    t34 = *((unsigned int *)t28);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t34 | t35);
    goto LAB17;

LAB19:    *((unsigned int *)t38) = 1;
    goto LAB22;

LAB21:    t45 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB22;

LAB23:    t51 = (t0 + 1800U);
    t52 = *((char **)t51);
    memset(t53, 0, 8);
    t51 = (t52 + 4);
    t54 = *((unsigned int *)t51);
    t55 = (~(t54));
    t56 = *((unsigned int *)t52);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t51) != 0)
        goto LAB28;

LAB29:    t61 = *((unsigned int *)t38);
    t62 = *((unsigned int *)t53);
    t63 = (t61 | t62);
    *((unsigned int *)t60) = t63;
    t64 = (t38 + 4);
    t65 = (t53 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB30;

LAB31:
LAB32:    goto LAB25;

LAB26:    *((unsigned int *)t53) = 1;
    goto LAB29;

LAB28:    t59 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB29;

LAB30:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t38 + 4);
    t75 = (t53 + 4);
    t76 = *((unsigned int *)t74);
    t77 = (~(t76));
    t78 = *((unsigned int *)t38);
    t79 = (t78 & t77);
    t80 = *((unsigned int *)t75);
    t81 = (~(t80));
    t82 = *((unsigned int *)t53);
    t83 = (t82 & t81);
    t84 = (~(t79));
    t85 = (~(t83));
    t86 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t86 & t84);
    t87 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t87 & t85);
    goto LAB32;

LAB33:    *((unsigned int *)t88) = 1;
    goto LAB36;

LAB35:    t95 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t95) = 1;
    goto LAB36;

LAB37:    t108 = *((unsigned int *)t96);
    t109 = *((unsigned int *)t102);
    *((unsigned int *)t96) = (t108 | t109);
    t110 = (t6 + 4);
    t111 = (t88 + 4);
    t112 = *((unsigned int *)t6);
    t113 = (~(t112));
    t114 = *((unsigned int *)t110);
    t115 = (~(t114));
    t116 = *((unsigned int *)t88);
    t117 = (~(t116));
    t118 = *((unsigned int *)t111);
    t119 = (~(t118));
    t120 = (t113 & t115);
    t121 = (t117 & t119);
    t122 = (~(t120));
    t123 = (~(t121));
    t124 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t124 & t122);
    t125 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t125 & t123);
    t126 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t126 & t122);
    t127 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t127 & t123);
    goto LAB39;

LAB40:    xsi_set_current_line(73, ng0);
    t134 = (t0 + 2120U);
    t135 = *((char **)t134);
    t134 = (t0 + 3160);
    t138 = (t0 + 3160);
    t139 = (t138 + 72U);
    t140 = *((char **)t139);
    t141 = (t0 + 3160);
    t142 = (t141 + 64U);
    t143 = *((char **)t142);
    t144 = (t0 + 3480);
    t145 = (t144 + 56U);
    t146 = *((char **)t145);
    xsi_vlog_generic_convert_array_indices(t136, t137, t140, t143, 2, 1, t146, 10, 2);
    t147 = (t136 + 4);
    t148 = *((unsigned int *)t147);
    t149 = (!(t148));
    t150 = (t137 + 4);
    t151 = *((unsigned int *)t150);
    t152 = (!(t151));
    t153 = (t149 && t152);
    if (t153 == 1)
        goto LAB43;

LAB44:    goto LAB42;

LAB43:    t154 = *((unsigned int *)t136);
    t155 = *((unsigned int *)t137);
    t156 = (t154 - t155);
    t157 = (t156 + 1);
    xsi_vlogvar_wait_assign_value(t134, t135, 0, *((unsigned int *)t137), t157, 0LL);
    goto LAB44;

}

static void Always_76_5(char *t0)
{
    char t6[8];
    char t30[8];
    char t35[8];
    char t42[8];
    char t74[8];
    char t89[8];
    char t97[8];
    char t137[8];
    char t147[8];
    char t165[8];
    char t166[8];
    char t167[8];
    char t183[8];
    char t191[8];
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
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    char *t88;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    int t121;
    int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    char *t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    char *t160;
    char *t161;
    char *t162;
    char *t163;
    char *t164;
    char *t168;
    char *t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    char *t182;
    char *t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    char *t190;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    char *t195;
    char *t196;
    char *t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    char *t205;
    char *t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    int t215;
    int t216;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    char *t223;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    char *t229;
    char *t230;

LAB0:    t1 = (t0 + 5632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 6280);
    *((int *)t2) = 1;
    t3 = (t0 + 5664);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);

LAB5:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 1480U);
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

LAB11:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t2) != 0)
        goto LAB18;

LAB19:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB20;

LAB21:    memcpy(t42, t6, 8);

LAB22:    memset(t74, 0, 8);
    t75 = (t42 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t42);
    t79 = (t78 & t77);
    t80 = (t79 & 1U);
    if (t80 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t75) != 0)
        goto LAB38;

LAB39:    t82 = (t74 + 4);
    t83 = *((unsigned int *)t74);
    t84 = *((unsigned int *)t82);
    t85 = (t83 || t84);
    if (t85 > 0)
        goto LAB40;

LAB41:    memcpy(t97, t74, 8);

LAB42:    t129 = (t97 + 4);
    t130 = *((unsigned int *)t129);
    t131 = (~(t130));
    t132 = *((unsigned int *)t97);
    t133 = (t132 & t131);
    t134 = (t133 != 0);
    if (t134 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB56;

LAB54:    if (*((unsigned int *)t2) == 0)
        goto LAB53;

LAB55:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;

LAB56:    t5 = (t6 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    *((unsigned int *)t6) = t15;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB58;

LAB57:    t20 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t20 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t31 = (t27 & 1U);
    if (t31 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t8) != 0)
        goto LAB61;

LAB62:    t22 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t33 = *((unsigned int *)t22);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB63;

LAB64:    memcpy(t42, t30, 8);

LAB65:    memset(t74, 0, 8);
    t75 = (t42 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t42);
    t79 = (t78 & t77);
    t80 = (t79 & 1U);
    if (t80 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t75) != 0)
        goto LAB75;

LAB76:    t82 = (t74 + 4);
    t83 = *((unsigned int *)t74);
    t84 = *((unsigned int *)t82);
    t85 = (t83 || t84);
    if (t85 > 0)
        goto LAB77;

LAB78:    memcpy(t137, t74, 8);

LAB79:    memset(t147, 0, 8);
    t148 = (t137 + 4);
    t149 = *((unsigned int *)t148);
    t150 = (~(t149));
    t151 = *((unsigned int *)t137);
    t152 = (t151 & t150);
    t153 = (t152 & 1U);
    if (t153 != 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t148) != 0)
        goto LAB95;

LAB96:    t155 = (t147 + 4);
    t156 = *((unsigned int *)t147);
    t157 = *((unsigned int *)t155);
    t158 = (t156 || t157);
    if (t158 > 0)
        goto LAB97;

LAB98:    memcpy(t191, t147, 8);

LAB99:    t223 = (t191 + 4);
    t224 = *((unsigned int *)t223);
    t225 = (~(t224));
    t226 = *((unsigned int *)t191);
    t227 = (t226 & t225);
    t228 = (t227 != 0);
    if (t228 > 0)
        goto LAB111;

LAB112:
LAB113:
LAB52:
LAB15:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(77, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    goto LAB12;

LAB13:    xsi_set_current_line(78, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    goto LAB15;

LAB16:    *((unsigned int *)t6) = 1;
    goto LAB19;

LAB18:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB19;

LAB20:    t7 = (t0 + 1960U);
    t8 = *((char **)t7);
    memset(t30, 0, 8);
    t7 = (t8 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t7) == 0)
        goto LAB23;

LAB25:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;

LAB26:    t22 = (t30 + 4);
    t28 = (t8 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    *((unsigned int *)t30) = t25;
    *((unsigned int *)t22) = 0;
    if (*((unsigned int *)t28) != 0)
        goto LAB28;

LAB27:    t33 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t33 & 1U);
    t34 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t34 & 1U);
    memset(t35, 0, 8);
    t29 = (t30 + 4);
    t36 = *((unsigned int *)t29);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t29) != 0)
        goto LAB31;

LAB32:    t43 = *((unsigned int *)t6);
    t44 = *((unsigned int *)t35);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t6 + 4);
    t47 = (t35 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB33;

LAB34:
LAB35:    goto LAB22;

LAB23:    *((unsigned int *)t30) = 1;
    goto LAB26;

LAB28:    t26 = *((unsigned int *)t30);
    t27 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t26 | t27);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t31 | t32);
    goto LAB27;

LAB29:    *((unsigned int *)t35) = 1;
    goto LAB32;

LAB31:    t41 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB32;

LAB33:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t6 + 4);
    t57 = (t35 + 4);
    t58 = *((unsigned int *)t6);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t61 = (~(t60));
    t62 = *((unsigned int *)t35);
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
    goto LAB35;

LAB36:    *((unsigned int *)t74) = 1;
    goto LAB39;

LAB38:    t81 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB39;

LAB40:    t86 = (t0 + 2840);
    t87 = (t86 + 56U);
    t88 = *((char **)t87);
    memset(t89, 0, 8);
    t90 = (t88 + 4);
    t91 = *((unsigned int *)t90);
    t92 = (~(t91));
    t93 = *((unsigned int *)t88);
    t94 = (t93 & t92);
    t95 = (t94 & 1U);
    if (t95 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t90) != 0)
        goto LAB45;

LAB46:    t98 = *((unsigned int *)t74);
    t99 = *((unsigned int *)t89);
    t100 = (t98 & t99);
    *((unsigned int *)t97) = t100;
    t101 = (t74 + 4);
    t102 = (t89 + 4);
    t103 = (t97 + 4);
    t104 = *((unsigned int *)t101);
    t105 = *((unsigned int *)t102);
    t106 = (t104 | t105);
    *((unsigned int *)t103) = t106;
    t107 = *((unsigned int *)t103);
    t108 = (t107 != 0);
    if (t108 == 1)
        goto LAB47;

LAB48:
LAB49:    goto LAB42;

LAB43:    *((unsigned int *)t89) = 1;
    goto LAB46;

LAB45:    t96 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t96) = 1;
    goto LAB46;

LAB47:    t109 = *((unsigned int *)t97);
    t110 = *((unsigned int *)t103);
    *((unsigned int *)t97) = (t109 | t110);
    t111 = (t74 + 4);
    t112 = (t89 + 4);
    t113 = *((unsigned int *)t74);
    t114 = (~(t113));
    t115 = *((unsigned int *)t111);
    t116 = (~(t115));
    t117 = *((unsigned int *)t89);
    t118 = (~(t117));
    t119 = *((unsigned int *)t112);
    t120 = (~(t119));
    t121 = (t114 & t116);
    t122 = (t118 & t120);
    t123 = (~(t121));
    t124 = (~(t122));
    t125 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t125 & t123);
    t126 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t126 & t124);
    t127 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t127 & t123);
    t128 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t128 & t124);
    goto LAB49;

LAB50:    xsi_set_current_line(79, ng0);
    t135 = ((char*)((ng2)));
    t136 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t136, t135, 0, 0, 1, 0LL);
    goto LAB52;

LAB53:    *((unsigned int *)t6) = 1;
    goto LAB56;

LAB58:    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t16 | t17);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t7);
    *((unsigned int *)t5) = (t18 | t19);
    goto LAB57;

LAB59:    *((unsigned int *)t30) = 1;
    goto LAB62;

LAB61:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB62;

LAB63:    t28 = (t0 + 1960U);
    t29 = *((char **)t28);
    memset(t35, 0, 8);
    t28 = (t29 + 4);
    t36 = *((unsigned int *)t28);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t28) != 0)
        goto LAB68;

LAB69:    t43 = *((unsigned int *)t30);
    t44 = *((unsigned int *)t35);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t30 + 4);
    t47 = (t35 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB70;

LAB71:
LAB72:    goto LAB65;

LAB66:    *((unsigned int *)t35) = 1;
    goto LAB69;

LAB68:    t41 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB69;

LAB70:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t30 + 4);
    t57 = (t35 + 4);
    t58 = *((unsigned int *)t30);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t61 = (~(t60));
    t62 = *((unsigned int *)t35);
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
    goto LAB72;

LAB73:    *((unsigned int *)t74) = 1;
    goto LAB76;

LAB75:    t81 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB76;

LAB77:    t86 = (t0 + 2840);
    t87 = (t86 + 56U);
    t88 = *((char **)t87);
    memset(t89, 0, 8);
    t90 = (t88 + 4);
    t91 = *((unsigned int *)t90);
    t92 = (~(t91));
    t93 = *((unsigned int *)t88);
    t94 = (t93 & t92);
    t95 = (t94 & 1U);
    if (t95 != 0)
        goto LAB83;

LAB81:    if (*((unsigned int *)t90) == 0)
        goto LAB80;

LAB82:    t96 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t96) = 1;

LAB83:    t101 = (t89 + 4);
    t102 = (t88 + 4);
    t98 = *((unsigned int *)t88);
    t99 = (~(t98));
    *((unsigned int *)t89) = t99;
    *((unsigned int *)t101) = 0;
    if (*((unsigned int *)t102) != 0)
        goto LAB85;

LAB84:    t107 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t107 & 1U);
    t108 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t108 & 1U);
    memset(t97, 0, 8);
    t103 = (t89 + 4);
    t109 = *((unsigned int *)t103);
    t110 = (~(t109));
    t113 = *((unsigned int *)t89);
    t114 = (t113 & t110);
    t115 = (t114 & 1U);
    if (t115 != 0)
        goto LAB86;

LAB87:    if (*((unsigned int *)t103) != 0)
        goto LAB88;

LAB89:    t116 = *((unsigned int *)t74);
    t117 = *((unsigned int *)t97);
    t118 = (t116 & t117);
    *((unsigned int *)t137) = t118;
    t112 = (t74 + 4);
    t129 = (t97 + 4);
    t135 = (t137 + 4);
    t119 = *((unsigned int *)t112);
    t120 = *((unsigned int *)t129);
    t123 = (t119 | t120);
    *((unsigned int *)t135) = t123;
    t124 = *((unsigned int *)t135);
    t125 = (t124 != 0);
    if (t125 == 1)
        goto LAB90;

LAB91:
LAB92:    goto LAB79;

LAB80:    *((unsigned int *)t89) = 1;
    goto LAB83;

LAB85:    t100 = *((unsigned int *)t89);
    t104 = *((unsigned int *)t102);
    *((unsigned int *)t89) = (t100 | t104);
    t105 = *((unsigned int *)t101);
    t106 = *((unsigned int *)t102);
    *((unsigned int *)t101) = (t105 | t106);
    goto LAB84;

LAB86:    *((unsigned int *)t97) = 1;
    goto LAB89;

LAB88:    t111 = (t97 + 4);
    *((unsigned int *)t97) = 1;
    *((unsigned int *)t111) = 1;
    goto LAB89;

LAB90:    t126 = *((unsigned int *)t137);
    t127 = *((unsigned int *)t135);
    *((unsigned int *)t137) = (t126 | t127);
    t136 = (t74 + 4);
    t138 = (t97 + 4);
    t128 = *((unsigned int *)t74);
    t130 = (~(t128));
    t131 = *((unsigned int *)t136);
    t132 = (~(t131));
    t133 = *((unsigned int *)t97);
    t134 = (~(t133));
    t139 = *((unsigned int *)t138);
    t140 = (~(t139));
    t121 = (t130 & t132);
    t122 = (t134 & t140);
    t141 = (~(t121));
    t142 = (~(t122));
    t143 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t143 & t141);
    t144 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t144 & t142);
    t145 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t145 & t141);
    t146 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t146 & t142);
    goto LAB92;

LAB93:    *((unsigned int *)t147) = 1;
    goto LAB96;

LAB95:    t154 = (t147 + 4);
    *((unsigned int *)t147) = 1;
    *((unsigned int *)t154) = 1;
    goto LAB96;

LAB97:    t159 = (t0 + 3000);
    t160 = (t159 + 56U);
    t161 = *((char **)t160);
    t162 = ((char*)((ng4)));
    t163 = (t0 + 608);
    t164 = *((char **)t163);
    memset(t165, 0, 8);
    xsi_vlog_unsigned_power(t165, 32, t162, 32, t164, 32, 1);
    t163 = ((char*)((ng5)));
    memset(t166, 0, 8);
    xsi_vlog_unsigned_minus(t166, 32, t165, 32, t163, 32);
    memset(t167, 0, 8);
    t168 = (t161 + 4);
    t169 = (t166 + 4);
    t170 = *((unsigned int *)t161);
    t171 = *((unsigned int *)t166);
    t172 = (t170 ^ t171);
    t173 = *((unsigned int *)t168);
    t174 = *((unsigned int *)t169);
    t175 = (t173 ^ t174);
    t176 = (t172 | t175);
    t177 = *((unsigned int *)t168);
    t178 = *((unsigned int *)t169);
    t179 = (t177 | t178);
    t180 = (~(t179));
    t181 = (t176 & t180);
    if (t181 != 0)
        goto LAB103;

LAB100:    if (t179 != 0)
        goto LAB102;

LAB101:    *((unsigned int *)t167) = 1;

LAB103:    memset(t183, 0, 8);
    t184 = (t167 + 4);
    t185 = *((unsigned int *)t184);
    t186 = (~(t185));
    t187 = *((unsigned int *)t167);
    t188 = (t187 & t186);
    t189 = (t188 & 1U);
    if (t189 != 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t184) != 0)
        goto LAB106;

LAB107:    t192 = *((unsigned int *)t147);
    t193 = *((unsigned int *)t183);
    t194 = (t192 & t193);
    *((unsigned int *)t191) = t194;
    t195 = (t147 + 4);
    t196 = (t183 + 4);
    t197 = (t191 + 4);
    t198 = *((unsigned int *)t195);
    t199 = *((unsigned int *)t196);
    t200 = (t198 | t199);
    *((unsigned int *)t197) = t200;
    t201 = *((unsigned int *)t197);
    t202 = (t201 != 0);
    if (t202 == 1)
        goto LAB108;

LAB109:
LAB110:    goto LAB99;

LAB102:    t182 = (t167 + 4);
    *((unsigned int *)t167) = 1;
    *((unsigned int *)t182) = 1;
    goto LAB103;

LAB104:    *((unsigned int *)t183) = 1;
    goto LAB107;

LAB106:    t190 = (t183 + 4);
    *((unsigned int *)t183) = 1;
    *((unsigned int *)t190) = 1;
    goto LAB107;

LAB108:    t203 = *((unsigned int *)t191);
    t204 = *((unsigned int *)t197);
    *((unsigned int *)t191) = (t203 | t204);
    t205 = (t147 + 4);
    t206 = (t183 + 4);
    t207 = *((unsigned int *)t147);
    t208 = (~(t207));
    t209 = *((unsigned int *)t205);
    t210 = (~(t209));
    t211 = *((unsigned int *)t183);
    t212 = (~(t211));
    t213 = *((unsigned int *)t206);
    t214 = (~(t213));
    t215 = (t208 & t210);
    t216 = (t212 & t214);
    t217 = (~(t215));
    t218 = (~(t216));
    t219 = *((unsigned int *)t197);
    *((unsigned int *)t197) = (t219 & t217);
    t220 = *((unsigned int *)t197);
    *((unsigned int *)t197) = (t220 & t218);
    t221 = *((unsigned int *)t191);
    *((unsigned int *)t191) = (t221 & t217);
    t222 = *((unsigned int *)t191);
    *((unsigned int *)t191) = (t222 & t218);
    goto LAB110;

LAB111:    xsi_set_current_line(80, ng0);
    t229 = ((char*)((ng3)));
    t230 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t230, t229, 0, 0, 1, 0LL);
    goto LAB113;

}

static void Always_83_6(char *t0)
{
    char t6[8];
    char t30[8];
    char t35[8];
    char t42[8];
    char t74[8];
    char t86[8];
    char t105[8];
    char t113[8];
    char t155[8];
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
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    int t137;
    int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    char *t151;
    char *t152;
    char *t153;
    char *t154;
    char *t156;
    char *t157;
    char *t158;

LAB0:    t1 = (t0 + 5880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6296);
    *((int *)t2) = 1;
    t3 = (t0 + 5912);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(83, ng0);

LAB5:    xsi_set_current_line(84, ng0);
    t4 = (t0 + 1480U);
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

LAB11:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t2) != 0)
        goto LAB18;

LAB19:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB20;

LAB21:    memcpy(t42, t6, 8);

LAB22:    memset(t74, 0, 8);
    t75 = (t42 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t42);
    t79 = (t78 & t77);
    t80 = (t79 & 1U);
    if (t80 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t75) != 0)
        goto LAB38;

LAB39:    t82 = (t74 + 4);
    t83 = *((unsigned int *)t74);
    t84 = *((unsigned int *)t82);
    t85 = (t83 || t84);
    if (t85 > 0)
        goto LAB40;

LAB41:    memcpy(t113, t74, 8);

LAB42:    t145 = (t113 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB62;

LAB60:    if (*((unsigned int *)t2) == 0)
        goto LAB59;

LAB61:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;

LAB62:    t5 = (t6 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    *((unsigned int *)t6) = t15;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB64;

LAB63:    t20 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t20 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t31 = (t27 & 1U);
    if (t31 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t8) != 0)
        goto LAB67;

LAB68:    t22 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t33 = *((unsigned int *)t22);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB69;

LAB70:    memcpy(t42, t30, 8);

LAB71:    memset(t74, 0, 8);
    t75 = (t42 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t42);
    t79 = (t78 & t77);
    t80 = (t79 & 1U);
    if (t80 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t75) != 0)
        goto LAB81;

LAB82:    t82 = (t74 + 4);
    t83 = *((unsigned int *)t74);
    t84 = *((unsigned int *)t82);
    t85 = (t83 || t84);
    if (t85 > 0)
        goto LAB83;

LAB84:    memcpy(t113, t74, 8);

LAB85:    t152 = (t113 + 4);
    t146 = *((unsigned int *)t152);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB99;

LAB100:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t2) != 0)
        goto LAB104;

LAB105:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB106;

LAB107:    memcpy(t35, t6, 8);

LAB108:    memset(t42, 0, 8);
    t47 = (t35 + 4);
    t59 = *((unsigned int *)t47);
    t60 = (~(t59));
    t61 = *((unsigned int *)t35);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB116;

LAB117:    if (*((unsigned int *)t47) != 0)
        goto LAB118;

LAB119:    t56 = (t42 + 4);
    t64 = *((unsigned int *)t42);
    t65 = *((unsigned int *)t56);
    t68 = (t64 || t65);
    if (t68 > 0)
        goto LAB120;

LAB121:    memcpy(t86, t42, 8);

LAB122:    t96 = (t86 + 4);
    t110 = *((unsigned int *)t96);
    t111 = (~(t110));
    t114 = *((unsigned int *)t86);
    t115 = (t114 & t111);
    t116 = (t115 != 0);
    if (t116 > 0)
        goto LAB130;

LAB131:
LAB132:
LAB101:
LAB58:
LAB15:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(84, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 10, 0LL);
    goto LAB12;

LAB13:    xsi_set_current_line(85, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 10, 0LL);
    goto LAB15;

LAB16:    *((unsigned int *)t6) = 1;
    goto LAB19;

LAB18:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB19;

LAB20:    t7 = (t0 + 1960U);
    t8 = *((char **)t7);
    memset(t30, 0, 8);
    t7 = (t8 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t7) == 0)
        goto LAB23;

LAB25:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;

LAB26:    t22 = (t30 + 4);
    t28 = (t8 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    *((unsigned int *)t30) = t25;
    *((unsigned int *)t22) = 0;
    if (*((unsigned int *)t28) != 0)
        goto LAB28;

LAB27:    t33 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t33 & 1U);
    t34 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t34 & 1U);
    memset(t35, 0, 8);
    t29 = (t30 + 4);
    t36 = *((unsigned int *)t29);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t29) != 0)
        goto LAB31;

LAB32:    t43 = *((unsigned int *)t6);
    t44 = *((unsigned int *)t35);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t6 + 4);
    t47 = (t35 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB33;

LAB34:
LAB35:    goto LAB22;

LAB23:    *((unsigned int *)t30) = 1;
    goto LAB26;

LAB28:    t26 = *((unsigned int *)t30);
    t27 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t26 | t27);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t31 | t32);
    goto LAB27;

LAB29:    *((unsigned int *)t35) = 1;
    goto LAB32;

LAB31:    t41 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB32;

LAB33:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t6 + 4);
    t57 = (t35 + 4);
    t58 = *((unsigned int *)t6);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t61 = (~(t60));
    t62 = *((unsigned int *)t35);
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
    goto LAB35;

LAB36:    *((unsigned int *)t74) = 1;
    goto LAB39;

LAB38:    t81 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB39;

LAB40:    t87 = (t0 + 2280U);
    t88 = *((char **)t87);
    memset(t86, 0, 8);
    t87 = (t88 + 4);
    t89 = *((unsigned int *)t87);
    t90 = (~(t89));
    t91 = *((unsigned int *)t88);
    t92 = (t91 & t90);
    t93 = (t92 & 1U);
    if (t93 != 0)
        goto LAB46;

LAB44:    if (*((unsigned int *)t87) == 0)
        goto LAB43;

LAB45:    t94 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t94) = 1;

LAB46:    t95 = (t86 + 4);
    t96 = (t88 + 4);
    t97 = *((unsigned int *)t88);
    t98 = (~(t97));
    *((unsigned int *)t86) = t98;
    *((unsigned int *)t95) = 0;
    if (*((unsigned int *)t96) != 0)
        goto LAB48;

LAB47:    t103 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t103 & 1U);
    t104 = *((unsigned int *)t95);
    *((unsigned int *)t95) = (t104 & 1U);
    memset(t105, 0, 8);
    t106 = (t86 + 4);
    t107 = *((unsigned int *)t106);
    t108 = (~(t107));
    t109 = *((unsigned int *)t86);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t106) != 0)
        goto LAB51;

LAB52:    t114 = *((unsigned int *)t74);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t117 = (t74 + 4);
    t118 = (t105 + 4);
    t119 = (t113 + 4);
    t120 = *((unsigned int *)t117);
    t121 = *((unsigned int *)t118);
    t122 = (t120 | t121);
    *((unsigned int *)t119) = t122;
    t123 = *((unsigned int *)t119);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB42;

LAB43:    *((unsigned int *)t86) = 1;
    goto LAB46;

LAB48:    t99 = *((unsigned int *)t86);
    t100 = *((unsigned int *)t96);
    *((unsigned int *)t86) = (t99 | t100);
    t101 = *((unsigned int *)t95);
    t102 = *((unsigned int *)t96);
    *((unsigned int *)t95) = (t101 | t102);
    goto LAB47;

LAB49:    *((unsigned int *)t105) = 1;
    goto LAB52;

LAB51:    t112 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t112) = 1;
    goto LAB52;

LAB53:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t119);
    *((unsigned int *)t113) = (t125 | t126);
    t127 = (t74 + 4);
    t128 = (t105 + 4);
    t129 = *((unsigned int *)t74);
    t130 = (~(t129));
    t131 = *((unsigned int *)t127);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t128);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t141 & t139);
    t142 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB55;

LAB56:    xsi_set_current_line(86, ng0);
    t151 = (t0 + 3000);
    t152 = (t151 + 56U);
    t153 = *((char **)t152);
    t154 = ((char*)((ng3)));
    memset(t155, 0, 8);
    xsi_vlog_unsigned_minus(t155, 10, t153, 10, t154, 10);
    t156 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t156, t155, 0, 0, 10, 0LL);
    goto LAB58;

LAB59:    *((unsigned int *)t6) = 1;
    goto LAB62;

LAB64:    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t16 | t17);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t7);
    *((unsigned int *)t5) = (t18 | t19);
    goto LAB63;

LAB65:    *((unsigned int *)t30) = 1;
    goto LAB68;

LAB67:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB68;

LAB69:    t28 = (t0 + 1960U);
    t29 = *((char **)t28);
    memset(t35, 0, 8);
    t28 = (t29 + 4);
    t36 = *((unsigned int *)t28);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t28) != 0)
        goto LAB74;

LAB75:    t43 = *((unsigned int *)t30);
    t44 = *((unsigned int *)t35);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t30 + 4);
    t47 = (t35 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB76;

LAB77:
LAB78:    goto LAB71;

LAB72:    *((unsigned int *)t35) = 1;
    goto LAB75;

LAB74:    t41 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB75;

LAB76:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t30 + 4);
    t57 = (t35 + 4);
    t58 = *((unsigned int *)t30);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t61 = (~(t60));
    t62 = *((unsigned int *)t35);
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
    goto LAB78;

LAB79:    *((unsigned int *)t74) = 1;
    goto LAB82;

LAB81:    t81 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB82;

LAB83:    t87 = (t0 + 2840);
    t88 = (t87 + 56U);
    t94 = *((char **)t88);
    memset(t86, 0, 8);
    t95 = (t94 + 4);
    t89 = *((unsigned int *)t95);
    t90 = (~(t89));
    t91 = *((unsigned int *)t94);
    t92 = (t91 & t90);
    t93 = (t92 & 1U);
    if (t93 != 0)
        goto LAB89;

LAB87:    if (*((unsigned int *)t95) == 0)
        goto LAB86;

LAB88:    t96 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t96) = 1;

LAB89:    t106 = (t86 + 4);
    t112 = (t94 + 4);
    t97 = *((unsigned int *)t94);
    t98 = (~(t97));
    *((unsigned int *)t86) = t98;
    *((unsigned int *)t106) = 0;
    if (*((unsigned int *)t112) != 0)
        goto LAB91;

LAB90:    t103 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t103 & 1U);
    t104 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t104 & 1U);
    memset(t105, 0, 8);
    t117 = (t86 + 4);
    t107 = *((unsigned int *)t117);
    t108 = (~(t107));
    t109 = *((unsigned int *)t86);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB92;

LAB93:    if (*((unsigned int *)t117) != 0)
        goto LAB94;

LAB95:    t114 = *((unsigned int *)t74);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t119 = (t74 + 4);
    t127 = (t105 + 4);
    t128 = (t113 + 4);
    t120 = *((unsigned int *)t119);
    t121 = *((unsigned int *)t127);
    t122 = (t120 | t121);
    *((unsigned int *)t128) = t122;
    t123 = *((unsigned int *)t128);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB96;

LAB97:
LAB98:    goto LAB85;

LAB86:    *((unsigned int *)t86) = 1;
    goto LAB89;

LAB91:    t99 = *((unsigned int *)t86);
    t100 = *((unsigned int *)t112);
    *((unsigned int *)t86) = (t99 | t100);
    t101 = *((unsigned int *)t106);
    t102 = *((unsigned int *)t112);
    *((unsigned int *)t106) = (t101 | t102);
    goto LAB90;

LAB92:    *((unsigned int *)t105) = 1;
    goto LAB95;

LAB94:    t118 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t118) = 1;
    goto LAB95;

LAB96:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t128);
    *((unsigned int *)t113) = (t125 | t126);
    t145 = (t74 + 4);
    t151 = (t105 + 4);
    t129 = *((unsigned int *)t74);
    t130 = (~(t129));
    t131 = *((unsigned int *)t145);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t151);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t141 & t139);
    t142 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB98;

LAB99:    xsi_set_current_line(87, ng0);
    t153 = (t0 + 3000);
    t154 = (t153 + 56U);
    t156 = *((char **)t154);
    t157 = ((char*)((ng3)));
    memset(t155, 0, 8);
    xsi_vlog_unsigned_add(t155, 10, t156, 10, t157, 10);
    t158 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t158, t155, 0, 0, 10, 0LL);
    goto LAB101;

LAB102:    *((unsigned int *)t6) = 1;
    goto LAB105;

LAB104:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB105;

LAB106:    t7 = (t0 + 1960U);
    t8 = *((char **)t7);
    memset(t30, 0, 8);
    t7 = (t8 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB109;

LAB110:    if (*((unsigned int *)t7) != 0)
        goto LAB111;

LAB112:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t30);
    t26 = (t24 & t25);
    *((unsigned int *)t35) = t26;
    t22 = (t6 + 4);
    t28 = (t30 + 4);
    t29 = (t35 + 4);
    t27 = *((unsigned int *)t22);
    t31 = *((unsigned int *)t28);
    t32 = (t27 | t31);
    *((unsigned int *)t29) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB113;

LAB114:
LAB115:    goto LAB108;

LAB109:    *((unsigned int *)t30) = 1;
    goto LAB112;

LAB111:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB112;

LAB113:    t36 = *((unsigned int *)t35);
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t35) = (t36 | t37);
    t41 = (t6 + 4);
    t46 = (t30 + 4);
    t38 = *((unsigned int *)t6);
    t39 = (~(t38));
    t40 = *((unsigned int *)t41);
    t43 = (~(t40));
    t44 = *((unsigned int *)t30);
    t45 = (~(t44));
    t49 = *((unsigned int *)t46);
    t50 = (~(t49));
    t66 = (t39 & t43);
    t67 = (t45 & t50);
    t51 = (~(t66));
    t52 = (~(t67));
    t53 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t53 & t51);
    t54 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t54 & t52);
    t55 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t55 & t51);
    t58 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t58 & t52);
    goto LAB115;

LAB116:    *((unsigned int *)t42) = 1;
    goto LAB119;

LAB118:    t48 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB119;

LAB120:    t57 = (t0 + 2280U);
    t75 = *((char **)t57);
    memset(t74, 0, 8);
    t57 = (t75 + 4);
    t69 = *((unsigned int *)t57);
    t70 = (~(t69));
    t71 = *((unsigned int *)t75);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB123;

LAB124:    if (*((unsigned int *)t57) != 0)
        goto LAB125;

LAB126:    t76 = *((unsigned int *)t42);
    t77 = *((unsigned int *)t74);
    t78 = (t76 & t77);
    *((unsigned int *)t86) = t78;
    t82 = (t42 + 4);
    t87 = (t74 + 4);
    t88 = (t86 + 4);
    t79 = *((unsigned int *)t82);
    t80 = *((unsigned int *)t87);
    t83 = (t79 | t80);
    *((unsigned int *)t88) = t83;
    t84 = *((unsigned int *)t88);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB127;

LAB128:
LAB129:    goto LAB122;

LAB123:    *((unsigned int *)t74) = 1;
    goto LAB126;

LAB125:    t81 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB126;

LAB127:    t89 = *((unsigned int *)t86);
    t90 = *((unsigned int *)t88);
    *((unsigned int *)t86) = (t89 | t90);
    t94 = (t42 + 4);
    t95 = (t74 + 4);
    t91 = *((unsigned int *)t42);
    t92 = (~(t91));
    t93 = *((unsigned int *)t94);
    t97 = (~(t93));
    t98 = *((unsigned int *)t74);
    t99 = (~(t98));
    t100 = *((unsigned int *)t95);
    t101 = (~(t100));
    t137 = (t92 & t97);
    t138 = (t99 & t101);
    t102 = (~(t137));
    t103 = (~(t138));
    t104 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t104 & t102);
    t107 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t107 & t103);
    t108 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t108 & t102);
    t109 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t109 & t103);
    goto LAB129;

LAB130:    xsi_set_current_line(88, ng0);
    t106 = ((char*)((ng3)));
    t112 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t112, t106, 0, 0, 10, 0LL);
    goto LAB132;

}


extern void work_m_10699908069705605145_3112701951_init()
{
	static char *pe[] = {(void *)Cont_57_0,(void *)Cont_58_1,(void *)Always_60_2,(void *)Always_66_3,(void *)Always_72_4,(void *)Always_76_5,(void *)Always_83_6};
	xsi_register_didat("work_m_10699908069705605145_3112701951", "isim/test_fdc_isim_beh.exe.sim/work/m_10699908069705605145_3112701951.didat");
	xsi_register_executes(pe);
}
