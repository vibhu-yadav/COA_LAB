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
static const char *ng0 = "/home/vibhu/Downloads/TEMP/Verilog/JumpControl.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {7U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {8U, 0U};
static unsigned int ng5[] = {9U, 0U};
static unsigned int ng6[] = {10U, 0U};
static unsigned int ng7[] = {11U, 0U};
static unsigned int ng8[] = {12U, 0U};
static unsigned int ng9[] = {13U, 0U};
static unsigned int ng10[] = {14U, 0U};



static void Always_35_0(char *t0)
{
    char t7[8];
    char t18[8];
    char t27[8];
    char t35[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
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
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3160);
    *((int *)t2) = 1;
    t3 = (t0 + 2872);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);

LAB26:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    memset(t7, 0, 8);
    t4 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t4) != 0)
        goto LAB29;

LAB30:    t14 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t14);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB31;

LAB32:    memcpy(t35, t7, 8);

LAB33:    t67 = (t35 + 4);
    t68 = *((unsigned int *)t67);
    t69 = (~(t68));
    t70 = *((unsigned int *)t35);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB45;

LAB46:
LAB47:    goto LAB25;

LAB9:    xsi_set_current_line(42, ng0);

LAB48:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    memset(t7, 0, 8);
    t4 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB52;

LAB50:    if (*((unsigned int *)t4) == 0)
        goto LAB49;

LAB51:    t13 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t13) = 1;

LAB52:    memset(t18, 0, 8);
    t14 = (t7 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t7);
    t21 = (t17 & t16);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t14) != 0)
        goto LAB55;

LAB56:    t20 = (t18 + 4);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t20);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB57;

LAB58:    memcpy(t35, t18, 8);

LAB59:    t67 = (t35 + 4);
    t68 = *((unsigned int *)t67);
    t69 = (~(t68));
    t70 = *((unsigned int *)t35);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB67;

LAB68:
LAB69:    goto LAB25;

LAB11:    xsi_set_current_line(46, ng0);

LAB70:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    memset(t7, 0, 8);
    t4 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB74;

LAB72:    if (*((unsigned int *)t4) == 0)
        goto LAB71;

LAB73:    t13 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t13) = 1;

LAB74:    t14 = (t7 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t7);
    t21 = (t17 & t16);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB75;

LAB76:
LAB77:    goto LAB25;

LAB13:    xsi_set_current_line(51, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB25;

LAB15:    xsi_set_current_line(53, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB25;

LAB17:    xsi_set_current_line(55, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB25;

LAB19:    xsi_set_current_line(56, ng0);

LAB78:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB79;

LAB80:
LAB81:    goto LAB25;

LAB21:    xsi_set_current_line(60, ng0);

LAB82:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    memset(t7, 0, 8);
    t4 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB86;

LAB84:    if (*((unsigned int *)t4) == 0)
        goto LAB83;

LAB85:    t13 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t13) = 1;

LAB86:    t14 = (t7 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t7);
    t21 = (t17 & t16);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB87;

LAB88:
LAB89:    goto LAB25;

LAB27:    *((unsigned int *)t7) = 1;
    goto LAB30;

LAB29:    t13 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB30;

LAB31:    t19 = (t0 + 1528U);
    t20 = *((char **)t19);
    memset(t18, 0, 8);
    t19 = (t20 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (~(t21));
    t23 = *((unsigned int *)t20);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB37;

LAB35:    if (*((unsigned int *)t19) == 0)
        goto LAB34;

LAB36:    t26 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t26) = 1;

LAB37:    memset(t27, 0, 8);
    t28 = (t18 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t18);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t28) != 0)
        goto LAB40;

LAB41:    t36 = *((unsigned int *)t7);
    t37 = *((unsigned int *)t27);
    t38 = (t36 & t37);
    *((unsigned int *)t35) = t38;
    t39 = (t7 + 4);
    t40 = (t27 + 4);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t39);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB42;

LAB43:
LAB44:    goto LAB33;

LAB34:    *((unsigned int *)t18) = 1;
    goto LAB37;

LAB38:    *((unsigned int *)t27) = 1;
    goto LAB41;

LAB40:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB41;

LAB42:    t47 = *((unsigned int *)t35);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t35) = (t47 | t48);
    t49 = (t7 + 4);
    t50 = (t27 + 4);
    t51 = *((unsigned int *)t7);
    t52 = (~(t51));
    t53 = *((unsigned int *)t49);
    t54 = (~(t53));
    t55 = *((unsigned int *)t27);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (~(t57));
    t59 = (t52 & t54);
    t60 = (t56 & t58);
    t61 = (~(t59));
    t62 = (~(t60));
    t63 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t63 & t61);
    t64 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t64 & t62);
    t65 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t65 & t61);
    t66 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t66 & t62);
    goto LAB44;

LAB45:    xsi_set_current_line(40, ng0);
    t73 = ((char*)((ng3)));
    t74 = (t0 + 1928);
    xsi_vlogvar_assign_value(t74, t73, 0, 0, 1);
    goto LAB47;

LAB49:    *((unsigned int *)t7) = 1;
    goto LAB52;

LAB53:    *((unsigned int *)t18) = 1;
    goto LAB56;

LAB55:    t19 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB56;

LAB57:    t26 = (t0 + 1528U);
    t28 = *((char **)t26);
    memset(t27, 0, 8);
    t26 = (t28 + 4);
    t29 = *((unsigned int *)t26);
    t30 = (~(t29));
    t31 = *((unsigned int *)t28);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t26) != 0)
        goto LAB62;

LAB63:    t36 = *((unsigned int *)t18);
    t37 = *((unsigned int *)t27);
    t38 = (t36 & t37);
    *((unsigned int *)t35) = t38;
    t39 = (t18 + 4);
    t40 = (t27 + 4);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t39);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB64;

LAB65:
LAB66:    goto LAB59;

LAB60:    *((unsigned int *)t27) = 1;
    goto LAB63;

LAB62:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB63;

LAB64:    t47 = *((unsigned int *)t35);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t35) = (t47 | t48);
    t49 = (t18 + 4);
    t50 = (t27 + 4);
    t51 = *((unsigned int *)t18);
    t52 = (~(t51));
    t53 = *((unsigned int *)t49);
    t54 = (~(t53));
    t55 = *((unsigned int *)t27);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (~(t57));
    t59 = (t52 & t54);
    t60 = (t56 & t58);
    t61 = (~(t59));
    t62 = (~(t60));
    t63 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t63 & t61);
    t64 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t64 & t62);
    t65 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t65 & t61);
    t66 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t66 & t62);
    goto LAB66;

LAB67:    xsi_set_current_line(44, ng0);
    t73 = ((char*)((ng3)));
    t74 = (t0 + 1928);
    xsi_vlogvar_assign_value(t74, t73, 0, 0, 1);
    goto LAB69;

LAB71:    *((unsigned int *)t7) = 1;
    goto LAB74;

LAB75:    xsi_set_current_line(48, ng0);
    t19 = ((char*)((ng3)));
    t20 = (t0 + 1928);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    goto LAB77;

LAB79:    xsi_set_current_line(58, ng0);
    t13 = ((char*)((ng3)));
    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 1);
    goto LAB81;

LAB83:    *((unsigned int *)t7) = 1;
    goto LAB86;

LAB87:    xsi_set_current_line(62, ng0);
    t19 = ((char*)((ng3)));
    t20 = (t0 + 1928);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    goto LAB89;

}


extern void work_m_01341892808434018575_1611753747_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_01341892808434018575_1611753747", "isim/miniRISC_wrapper_test_isim_beh.exe.sim/work/m_01341892808434018575_1611753747.didat");
	xsi_register_executes(pe);
}
