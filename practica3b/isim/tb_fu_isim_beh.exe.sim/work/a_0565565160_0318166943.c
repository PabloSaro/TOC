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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/hlocal/Nueva carpeta/tb_fu.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );
unsigned char ieee_p_1242562249_sub_2720042465_1035706684(char *, char *, char *, char *, char *);


static void work_a_0565565160_0318166943_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    int t13;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    int64 t28;
    unsigned char t29;

LAB0:    t1 = (t0 + 3312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2088U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = (t0 + 5980);
    *((int *)t2) = 0;
    t5 = (t0 + 5984);
    *((int *)t5) = t4;
    t6 = 0;
    t7 = t4;

LAB4:    if (t6 <= t7)
        goto LAB5;

LAB7:    xsi_set_current_line(111, ng0);

LAB61:    *((char **)t1) = &&LAB62;

LAB1:    return;
LAB5:    xsi_set_current_line(81, ng0);
    t8 = (t0 + 2088U);
    t9 = *((char **)t8);
    t10 = *((int *)t9);
    t8 = (t0 + 5988);
    *((int *)t8) = 0;
    t11 = (t0 + 5992);
    *((int *)t11) = t10;
    t12 = 0;
    t13 = t10;

LAB8:    if (t12 <= t13)
        goto LAB9;

LAB11:
LAB6:    t2 = (t0 + 5980);
    t6 = *((int *)t2);
    t3 = (t0 + 5984);
    t7 = *((int *)t3);
    if (t6 == t7)
        goto LAB7;

LAB58:    t4 = (t6 + 1);
    t6 = t4;
    t5 = (t0 + 5980);
    *((int *)t5) = t6;
    goto LAB4;

LAB9:    xsi_set_current_line(82, ng0);
    t15 = (t0 + 5980);
    t16 = (t0 + 1968U);
    t17 = *((char **)t16);
    t18 = *((int *)t17);
    t16 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, *((int *)t15), t18);
    t19 = (t14 + 12U);
    t20 = *((unsigned int *)t19);
    t20 = (t20 * 1U);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB12;

LAB13:    t22 = (t0 + 3696);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t16, 32U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5988);
    t3 = (t0 + 1968U);
    t5 = *((char **)t3);
    t4 = *((int *)t5);
    t3 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, *((int *)t2), t4);
    t8 = (t14 + 12U);
    t20 = *((unsigned int *)t8);
    t20 = (t20 * 1U);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB14;

LAB15:    t9 = (t0 + 3760);
    t11 = (t9 + 56U);
    t15 = *((char **)t11);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 32U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 5996);
    t5 = (t0 + 3824);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5980);
    t3 = (t0 + 5988);
    t4 = *((int *)t2);
    t10 = *((int *)t3);
    t18 = (t4 + t10);
    t5 = (t0 + 1968U);
    t8 = *((char **)t5);
    t27 = *((int *)t8);
    t5 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, t18, t27);
    t9 = (t14 + 12U);
    t20 = *((unsigned int *)t9);
    t20 = (t20 * 1U);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB16;

LAB17:    t11 = (t0 + 3888);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t5, 32U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(86, ng0);
    t28 = (10 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t28);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB10:    t2 = (t0 + 5988);
    t12 = *((int *)t2);
    t3 = (t0 + 5992);
    t13 = *((int *)t3);
    if (t12 == t13)
        goto LAB11;

LAB57:    t4 = (t12 + 1);
    t12 = t4;
    t5 = (t0 + 5988);
    *((int *)t5) = t12;
    goto LAB8;

LAB12:    xsi_size_not_matching(32U, t20, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(32U, t20, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(32U, t20, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5792U);
    t5 = (t0 + 1672U);
    t8 = *((char **)t5);
    t5 = (t0 + 5808U);
    t21 = ieee_p_1242562249_sub_2720042465_1035706684(IEEE_P_1242562249, t3, t2, t8, t5);
    if (t21 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(90, ng0);
    t28 = (90 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t28);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    t9 = (t0 + 5999);
    xsi_report(t9, 27U, (unsigned char)2);
    goto LAB23;

LAB24:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 6026);
    t5 = (t0 + 3824);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5980);
    t3 = (t0 + 5988);
    t4 = *((int *)t2);
    t10 = *((int *)t3);
    t18 = (t4 - t10);
    t5 = (t0 + 1968U);
    t8 = *((char **)t5);
    t27 = *((int *)t8);
    t5 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, t18, t27);
    t9 = (t14 + 12U);
    t20 = *((unsigned int *)t9);
    t20 = (t20 * 1U);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB28;

LAB29:    t11 = (t0 + 3888);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t5, 32U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(93, ng0);
    t28 = (10 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t28);

LAB32:    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_size_not_matching(32U, t20, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5792U);
    t5 = (t0 + 1672U);
    t8 = *((char **)t5);
    t5 = (t0 + 5808U);
    t21 = ieee_p_1242562249_sub_2720042465_1035706684(IEEE_P_1242562249, t3, t2, t8, t5);
    if (t21 == 0)
        goto LAB34;

LAB35:    xsi_set_current_line(97, ng0);
    t28 = (90 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t28);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB31:    goto LAB30;

LAB33:    goto LAB31;

LAB34:    t9 = (t0 + 6029);
    xsi_report(t9, 27U, (unsigned char)2);
    goto LAB35;

LAB36:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 6056);
    t5 = (t0 + 3824);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5980);
    t3 = (t0 + 5988);
    t4 = *((int *)t2);
    t10 = *((int *)t3);
    t21 = (t4 > t10);
    if (t21 != 0)
        goto LAB40;

LAB42:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 5988);
    t3 = (t0 + 1968U);
    t5 = *((char **)t3);
    t4 = *((int *)t5);
    t3 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, *((int *)t2), t4);
    t8 = (t14 + 12U);
    t20 = *((unsigned int *)t8);
    t20 = (t20 * 1U);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB45;

LAB46:    t9 = (t0 + 3888);
    t11 = (t9 + 56U);
    t15 = *((char **)t11);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 32U);
    xsi_driver_first_trans_fast(t9);

LAB41:    xsi_set_current_line(104, ng0);
    t28 = (10 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t28);

LAB49:    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(100, ng0);
    t5 = (t0 + 5980);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t18 = *((int *)t9);
    t8 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, *((int *)t5), t18);
    t11 = (t14 + 12U);
    t20 = *((unsigned int *)t11);
    t20 = (t20 * 1U);
    t29 = (32U != t20);
    if (t29 == 1)
        goto LAB43;

LAB44:    t15 = (t0 + 3888);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t22 = *((char **)t19);
    memcpy(t22, t8, 32U);
    xsi_driver_first_trans_fast(t15);
    goto LAB41;

LAB43:    xsi_size_not_matching(32U, t20, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(32U, t20, 0);
    goto LAB46;

LAB47:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5792U);
    t5 = (t0 + 1672U);
    t8 = *((char **)t5);
    t5 = (t0 + 5808U);
    t21 = ieee_p_1242562249_sub_2720042465_1035706684(IEEE_P_1242562249, t3, t2, t8, t5);
    if (t21 == 0)
        goto LAB51;

LAB52:    xsi_set_current_line(108, ng0);
    t28 = (90 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t28);

LAB55:    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB48:    goto LAB47;

LAB50:    goto LAB48;

LAB51:    t9 = (t0 + 6059);
    xsi_report(t9, 27U, (unsigned char)2);
    goto LAB52;

LAB53:    goto LAB10;

LAB54:    goto LAB53;

LAB56:    goto LAB54;

LAB59:    goto LAB2;

LAB60:    goto LAB59;

LAB62:    goto LAB60;

}


extern void work_a_0565565160_0318166943_init()
{
	static char *pe[] = {(void *)work_a_0565565160_0318166943_p_0};
	xsi_register_didat("work_a_0565565160_0318166943", "isim/tb_fu_isim_beh.exe.sim/work/a_0565565160_0318166943.didat");
	xsi_register_executes(pe);
}
