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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/vibhu/Downloads/TEMP/KGPminiRISC_test.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "AP with a = %d, d = %d";
static const char *ng4 = "Val = %d";
static int ng5[] = {2, 0};
static const char *ng6 = "Sum of first 5 terms of AP: ";
static int ng7[] = {19, 0};



static void Initial_52_0(char *t0)
{
    char t5[8];
    char t8[8];
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 3000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);

LAB4:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2808);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2808);
    xsi_process_wait(t2, 300000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 5152);
    t4 = *((char **)t3);
    t6 = ((((char*)(t4))) + 56U);
    t7 = *((char **)t6);
    t9 = (t0 + 5232);
    t10 = *((char **)t9);
    t11 = ((((char*)(t10))) + 72U);
    t12 = *((char **)t11);
    t13 = (t0 + 5312);
    t14 = *((char **)t13);
    t15 = ((((char*)(t14))) + 64U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng1)));
    xsi_vlog_generic_get_array_select_value(t8, 32, t7, t12, t16, 2, 1, t17, 32, 1);
    t19 = (t0 + 5392);
    t20 = *((char **)t19);
    t21 = ((((char*)(t20))) + 56U);
    t22 = *((char **)t21);
    t24 = (t0 + 5472);
    t25 = *((char **)t24);
    t26 = ((((char*)(t25))) + 72U);
    t27 = *((char **)t26);
    t28 = (t0 + 5552);
    t29 = *((char **)t28);
    t30 = ((((char*)(t29))) + 64U);
    t31 = *((char **)t30);
    t32 = ((char*)((ng2)));
    xsi_vlog_generic_get_array_select_value(t23, 32, t22, t27, t31, 2, 1, t32, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)119, t8, 32, (char)119, t23, 32);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 5632);
    t3 = *((char **)t2);
    t4 = ((((char*)(t3))) + 56U);
    t6 = *((char **)t4);
    t7 = (t0 + 5712);
    t9 = *((char **)t7);
    t10 = ((((char*)(t9))) + 72U);
    t11 = *((char **)t10);
    t12 = (t0 + 5792);
    t13 = *((char **)t12);
    t14 = ((((char*)(t13))) + 64U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng5)));
    xsi_vlog_generic_get_array_select_value(t8, 32, t6, t11, t15, 2, 1, t16, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng4, 2, t0, (char)119, t8, 32);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5840);
    t3 = *((char **)t2);
    t4 = ((((char*)(t3))) + 56U);
    t6 = *((char **)t4);
    t7 = (t0 + 5888);
    t9 = *((char **)t7);
    t10 = ((((char*)(t9))) + 72U);
    t11 = *((char **)t10);
    t12 = (t0 + 5936);
    t13 = *((char **)t12);
    t14 = ((((char*)(t13))) + 64U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng7)));
    xsi_vlog_generic_get_array_select_value(t5, 32, t6, t11, t15, 1, 1, t16, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng6, 2, t0, (char)119, t5, 32);
    goto LAB1;

}

static void Always_86_1(char *t0)
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

LAB0:    t1 = (t0 + 3248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);

LAB4:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3056);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 1288);
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
    t24 = (t0 + 1288);
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


extern void work_m_07096742385062425340_2247680202_init()
{
	static char *pe[] = {(void *)Initial_52_0,(void *)Always_86_1};
	xsi_register_didat("work_m_07096742385062425340_2247680202", "isim/KGPminiRISC_test_isim_beh.exe.sim/work/m_07096742385062425340_2247680202.didat");
	xsi_register_executes(pe);
}
