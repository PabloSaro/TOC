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
static const char *ng0 = "C:/Users/usuario_local/Downloads/tb_muneca.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0577210736_0318166943_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (5 * 1000LL);
    t8 = (t0 + 3976);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(65, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_0577210736_0318166943_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t7 = (250 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0577210736_0318166943_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;

LAB0:    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 6228);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(81, ng0);
    t9 = (50 * 1000LL);
    t2 = (t0 + 3256);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6230);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(83, ng0);
    t9 = (200 * 1000LL);
    t2 = (t0 + 3256);
    xsi_process_wait(t2, t9);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(84, ng0);

LAB14:    t2 = (t0 + 3768);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t4 = (t0 + 3768);
    *((int *)t4) = 0;
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6232);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(86, ng0);

LAB18:    t2 = (t0 + 3784);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    t4 = (t0 + 3784);
    *((int *)t4) = 0;
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 6234);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(92, ng0);

LAB24:    t2 = (t0 + 3800);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB17:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    t2 = (t0 + 6236);
    xsi_report(t2, 22U, (unsigned char)2);
    goto LAB21;

LAB22:    t4 = (t0 + 3800);
    *((int *)t4) = 0;
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 6258);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB26;

LAB27:    xsi_set_current_line(97, ng0);

LAB30:    t2 = (t0 + 3816);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB23:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB22;
    else
        goto LAB24;

LAB25:    goto LAB23;

LAB26:    t2 = (t0 + 6260);
    xsi_report(t2, 20U, (unsigned char)2);
    goto LAB27;

LAB28:    t4 = (t0 + 3816);
    *((int *)t4) = 0;
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB34;

LAB35:    t10 = (unsigned char)0;

LAB36:    if (t10 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 6299);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(102, ng0);

LAB39:    t2 = (t0 + 3832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB29:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB28;
    else
        goto LAB30;

LAB31:    goto LAB29;

LAB32:    t2 = (t0 + 6280);
    xsi_report(t2, 19U, (unsigned char)2);
    goto LAB33;

LAB34:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t10 = t14;
    goto LAB36;

LAB37:    t4 = (t0 + 3832);
    *((int *)t4) = 0;
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB41;

LAB42:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 6322);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(107, ng0);

LAB45:    t2 = (t0 + 3848);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB38:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB37;
    else
        goto LAB39;

LAB40:    goto LAB38;

LAB41:    t2 = (t0 + 6301);
    xsi_report(t2, 21U, (unsigned char)2);
    goto LAB42;

LAB43:    t4 = (t0 + 3848);
    *((int *)t4) = 0;
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB49;

LAB50:    t10 = (unsigned char)0;

LAB51:    if (t10 == 0)
        goto LAB47;

LAB48:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6345);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(112, ng0);

LAB54:    t2 = (t0 + 3864);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB44:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB43;
    else
        goto LAB45;

LAB46:    goto LAB44;

LAB47:    t2 = (t0 + 6324);
    xsi_report(t2, 21U, (unsigned char)2);
    goto LAB48;

LAB49:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB51;

LAB52:    t4 = (t0 + 3864);
    *((int *)t4) = 0;
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB56;

LAB57:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 6366);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(117, ng0);

LAB60:    t2 = (t0 + 3880);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB53:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB52;
    else
        goto LAB54;

LAB55:    goto LAB53;

LAB56:    t2 = (t0 + 6347);
    xsi_report(t2, 19U, (unsigned char)2);
    goto LAB57;

LAB58:    t4 = (t0 + 3880);
    *((int *)t4) = 0;
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB64;

LAB65:    t10 = (unsigned char)0;

LAB66:    if (t10 == 0)
        goto LAB62;

LAB63:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 6387);
    t4 = (t0 + 4104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(122, ng0);

LAB69:    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB70;
    goto LAB1;

LAB59:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB58;
    else
        goto LAB60;

LAB61:    goto LAB59;

LAB62:    t2 = (t0 + 6368);
    xsi_report(t2, 19U, (unsigned char)2);
    goto LAB63;

LAB64:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t10 = t14;
    goto LAB66;

LAB67:    t4 = (t0 + 3896);
    *((int *)t4) = 0;
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB71;

LAB72:    xsi_set_current_line(126, ng0);

LAB75:    *((char **)t1) = &&LAB76;
    goto LAB1;

LAB68:    t3 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t10 == 1)
        goto LAB67;
    else
        goto LAB69;

LAB70:    goto LAB68;

LAB71:    t2 = (t0 + 6389);
    xsi_report(t2, 19U, (unsigned char)2);
    goto LAB72;

LAB73:    goto LAB2;

LAB74:    goto LAB73;

LAB76:    goto LAB74;

}


extern void work_a_0577210736_0318166943_init()
{
	static char *pe[] = {(void *)work_a_0577210736_0318166943_p_0,(void *)work_a_0577210736_0318166943_p_1,(void *)work_a_0577210736_0318166943_p_2};
	xsi_register_didat("work_a_0577210736_0318166943", "isim/tb_muneca_isim_beh.exe.sim/work/a_0577210736_0318166943.didat");
	xsi_register_executes(pe);
}
