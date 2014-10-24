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
static int ng0[] = {0, 0};
static int ng1[] = {1, 0};
static int ng2[] = {2, 0};



static int sp_log2roundup(char *t1, char *t2)
{
    char t7[8];
    char t20[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;

LAB0:    t0 = 1;

LAB2:    t3 = ((char*)((ng0)));
    t4 = (t1 + 24520);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    t3 = (t1 + 24200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_greater(t7, 32, t5, 32, t6, 32);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB3;

LAB4:
LAB5:    t3 = (t1 + 24520);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t1 + 24360);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    t0 = 0;

LAB1:    return t0;
LAB3:
LAB6:    t14 = ((char*)((ng1)));
    t15 = (t1 + 24680);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 32);

LAB7:    t3 = (t1 + 24680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t1 + 24200);
    t8 = (t6 + 56U);
    t14 = *((char **)t8);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t14, 32);
    t15 = (t7 + 4);
    t9 = *((unsigned int *)t15);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB8;

LAB9:    goto LAB5;

LAB8:
LAB10:    t16 = (t1 + 24520);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng1)));
    memset(t20, 0, 8);
    xsi_vlog_signed_add(t20, 32, t18, 32, t19, 32);
    t21 = (t1 + 24520);
    xsi_vlogvar_assign_value(t21, t20, 0, 0, 32);
    t3 = (t1 + 24680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng2)));
    memset(t7, 0, 8);
    xsi_vlog_signed_multiply(t7, 32, t5, 32, t6, 32);
    t8 = (t1 + 24680);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB7;

}

static int sp_divroundup(char *t1, char *t2)
{
    char t9[8];
    char t11[8];
    char t22[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;

LAB0:    t0 = 1;

LAB2:    t3 = (t1 + 24840);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t1 + 25000);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    xsi_vlog_signed_divide(t9, 32, t5, 32, t8, 32);
    t10 = (t1 + 25320);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);
    t3 = (t1 + 24840);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t1 + 25000);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    xsi_vlog_signed_mod(t9, 32, t5, 32, t8, 32);
    t10 = ((char*)((ng0)));
    memset(t11, 0, 8);
    xsi_vlog_signed_not_equal(t11, 32, t9, 32, t10, 32);
    t12 = (t11 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t11);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB3;

LAB4:
LAB5:    t3 = (t1 + 25320);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t1 + 25160);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    t0 = 0;

LAB1:    return t0;
LAB3:
LAB6:    t18 = (t1 + 25320);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = ((char*)((ng1)));
    memset(t22, 0, 8);
    xsi_vlog_signed_add(t22, 32, t20, 32, t21, 32);
    t23 = (t1 + 25320);
    xsi_vlogvar_assign_value(t23, t22, 0, 0, 32);
    goto LAB5;

}

static void Always_3889_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 26232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 28288);
    *((int *)t2) = 1;
    t3 = (t0 + 26264);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 13720U);
    t5 = *((char **)t4);
    t4 = (t0 + 22920);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 1);
    t2 = (t0 + 13880U);
    t3 = *((char **)t2);
    t2 = (t0 + 23080);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    t2 = (t0 + 11320U);
    t3 = *((char **)t2);
    t2 = (t0 + 23240);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    t2 = (t0 + 11480U);
    t3 = *((char **)t2);
    t2 = (t0 + 23400);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    t2 = (t0 + 11640U);
    t3 = *((char **)t2);
    t2 = (t0 + 23560);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    t2 = (t0 + 11800U);
    t3 = *((char **)t2);
    t2 = (t0 + 23720);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    t2 = (t0 + 11960U);
    t3 = *((char **)t2);
    t2 = (t0 + 23880);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 16);
    t2 = (t0 + 12120U);
    t3 = *((char **)t2);
    t2 = (t0 + 24040);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 9);
    goto LAB2;

}

static void Cont_4115_1(char *t0)
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
    char *t16;

LAB0:    t1 = (t0 + 26480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 21400U);
    t3 = *((char **)t2);
    t2 = (t0 + 28480);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 511U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 8);
    t16 = (t0 + 28304);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_4116_2(char *t0)
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
    char *t16;

LAB0:    t1 = (t0 + 26728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 21720U);
    t3 = *((char **)t2);
    t2 = (t0 + 28544);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 28320);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_4117_3(char *t0)
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
    char *t16;

LAB0:    t1 = (t0 + 26976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 21880U);
    t3 = *((char **)t2);
    t2 = (t0 + 28608);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 28336);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_4118_4(char *t0)
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
    char *t16;

LAB0:    t1 = (t0 + 27224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 21240U);
    t3 = *((char **)t2);
    t2 = (t0 + 28672);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 15U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 3);
    t16 = (t0 + 28352);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_4119_5(char *t0)
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
    char *t16;

LAB0:    t1 = (t0 + 27472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 21560U);
    t3 = *((char **)t2);
    t2 = (t0 + 28736);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 3U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 1);
    t16 = (t0 + 28368);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_4120_6(char *t0)
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
    char *t16;

LAB0:    t1 = (t0 + 27720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 19320U);
    t3 = *((char **)t2);
    t2 = (t0 + 28800);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 28384);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_4130_7(char *t0)
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
    char *t16;

LAB0:    t1 = (t0 + 27968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 12920U);
    t3 = *((char **)t2);
    t2 = (t0 + 28864);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 28400);
    *((int *)t16) = 1;

LAB1:    return;
}


extern void xilinxcorelib_ver_m_12952813341139408366_0032595911_init()
{
	static char *pe[] = {(void *)Always_3889_0,(void *)Cont_4115_1,(void *)Cont_4116_2,(void *)Cont_4117_3,(void *)Cont_4118_4,(void *)Cont_4119_5,(void *)Cont_4120_6,(void *)Cont_4130_7};
	static char *se[] = {(void *)sp_log2roundup,(void *)sp_divroundup};
	xsi_register_didat("xilinxcorelib_ver_m_12952813341139408366_0032595911", "isim/test_ram_2_isim_beh.exe.sim/xilinxcorelib_ver/m_12952813341139408366_0032595911.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
