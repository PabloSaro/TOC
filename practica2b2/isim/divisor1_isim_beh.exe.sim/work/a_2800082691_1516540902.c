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
static const char *ng0 = "C:/hlocal/workspaceEMM/toc_clase/divisor1.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2800082691_1516540902_p_0(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    int t19;
    unsigned int t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(32, ng0);
    t1 = xsi_get_transient_memory(25U);
    memset(t1, 0, 25U);
    t5 = t1;
    memset(t5, (unsigned char)2, 25U);
    t6 = (t0 + 3496);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 25U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 3560);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 5400U);
    t6 = xsi_get_transient_memory(25U);
    memset(t6, 0, 25U);
    t7 = t6;
    if (-1 == -1)
        goto LAB10;

LAB11:    t11 = 0;

LAB12:    t12 = (t11 - 24);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t8 = (t7 + t14);
    t15 = (0 - 24);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t17 = (1U * t16);
    memset(t8, (unsigned char)3, t17);
    t9 = (t18 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 24;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t19 = (24 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t20;
    t4 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t5, t2, t6, t18);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t18, t2, t1, 1);
    t6 = (t18 + 12U);
    t11 = *((unsigned int *)t6);
    t13 = (1U * t11);
    t3 = (25U != t13);
    if (t3 == 1)
        goto LAB13;

LAB14:    t7 = (t0 + 3496);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t21 = *((char **)t10);
    memcpy(t21, t5, 25U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3560);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(36, ng0);
    t10 = (t0 + 1672U);
    t21 = *((char **)t10);
    t22 = *((unsigned char *)t21);
    t23 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t22);
    t10 = (t0 + 3560);
    t24 = (t10 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t23;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(37, ng0);
    t1 = xsi_get_transient_memory(25U);
    memset(t1, 0, 25U);
    t2 = t1;
    memset(t2, (unsigned char)2, 25U);
    t5 = (t0 + 3496);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 25U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB10:    t11 = 24;
    goto LAB12;

LAB13:    xsi_size_not_matching(25U, t13, 0);
    goto LAB14;

}

static void work_a_2800082691_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3624);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3416);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2800082691_1516540902_init()
{
	static char *pe[] = {(void *)work_a_2800082691_1516540902_p_0,(void *)work_a_2800082691_1516540902_p_1};
	xsi_register_didat("work_a_2800082691_1516540902", "isim/divisor1_isim_beh.exe.sim/work/a_2800082691_1516540902.didat");
	xsi_register_executes(pe);
}
