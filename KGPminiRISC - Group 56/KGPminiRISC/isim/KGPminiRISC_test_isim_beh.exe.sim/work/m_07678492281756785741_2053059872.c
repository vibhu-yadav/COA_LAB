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
static const char *ng0 = "/home/vibhu/Downloads/TEMP/diff_encoder.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {32U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {8U, 0U};
static unsigned int ng8[] = {16U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {6U, 0U};
static unsigned int ng11[] = {64U, 0U};
static unsigned int ng12[] = {7U, 0U};
static unsigned int ng13[] = {128U, 0U};
static unsigned int ng14[] = {256U, 0U};
static unsigned int ng15[] = {9U, 0U};
static unsigned int ng16[] = {512U, 0U};
static unsigned int ng17[] = {10U, 0U};
static unsigned int ng18[] = {1024U, 0U};
static unsigned int ng19[] = {11U, 0U};
static unsigned int ng20[] = {2048U, 0U};
static unsigned int ng21[] = {12U, 0U};
static unsigned int ng22[] = {4096U, 0U};
static unsigned int ng23[] = {13U, 0U};
static unsigned int ng24[] = {8192U, 0U};
static unsigned int ng25[] = {14U, 0U};
static unsigned int ng26[] = {16384U, 0U};
static unsigned int ng27[] = {15U, 0U};
static unsigned int ng28[] = {32768U, 0U};
static unsigned int ng29[] = {65536U, 0U};
static unsigned int ng30[] = {17U, 0U};
static unsigned int ng31[] = {131072U, 0U};
static unsigned int ng32[] = {18U, 0U};
static unsigned int ng33[] = {262144U, 0U};
static unsigned int ng34[] = {19U, 0U};
static unsigned int ng35[] = {524288U, 0U};
static unsigned int ng36[] = {20U, 0U};
static unsigned int ng37[] = {1048576U, 0U};
static unsigned int ng38[] = {21U, 0U};
static unsigned int ng39[] = {2097152U, 0U};
static unsigned int ng40[] = {22U, 0U};
static unsigned int ng41[] = {4194304U, 0U};
static unsigned int ng42[] = {23U, 0U};
static unsigned int ng43[] = {8388608U, 0U};
static unsigned int ng44[] = {24U, 0U};
static unsigned int ng45[] = {16777216U, 0U};
static unsigned int ng46[] = {25U, 0U};
static unsigned int ng47[] = {33554432U, 0U};
static unsigned int ng48[] = {26U, 0U};
static unsigned int ng49[] = {67108864U, 0U};
static unsigned int ng50[] = {27U, 0U};
static unsigned int ng51[] = {134217728U, 0U};
static unsigned int ng52[] = {28U, 0U};
static unsigned int ng53[] = {268435456U, 0U};
static unsigned int ng54[] = {29U, 0U};
static unsigned int ng55[] = {536870912U, 0U};
static unsigned int ng56[] = {30U, 0U};
static unsigned int ng57[] = {1073741824U, 0U};
static unsigned int ng58[] = {31U, 0U};



static void Always_34_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2680);
    *((int *)t2) = 1;
    t3 = (t0 + 2392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng33)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng35)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng37)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng39)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng41)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng43)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng45)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng47)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng49)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB61;

LAB62:    t2 = ((char*)((ng51)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB63;

LAB64:    t2 = ((char*)((ng53)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng55)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng57)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB69;

LAB70:
LAB72:
LAB71:    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng58)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);

LAB73:    goto LAB2;

LAB7:    xsi_set_current_line(36, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1448);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 6);
    goto LAB73;

LAB9:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB11:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB13:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB15:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB17:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB19:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB21:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB23:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB25:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB27:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB29:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB31:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB33:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB35:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng25)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB37:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng27)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB39:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB41:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB43:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB45:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB47:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng36)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB49:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng38)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB51:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng40)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB53:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng42)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB55:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng44)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB57:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng46)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB59:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng48)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB61:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng50)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB63:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng52)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB65:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng54)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB67:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng56)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

LAB69:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng58)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB73;

}


extern void work_m_07678492281756785741_2053059872_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_07678492281756785741_2053059872", "isim/KGPminiRISC_test_isim_beh.exe.sim/work/m_07678492281756785741_2053059872.didat");
	xsi_register_executes(pe);
}
