/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_459(char*, char *);
extern void execute_460(char*, char *);
extern void execute_461(char*, char *);
extern void execute_1305(char*, char *);
extern void execute_1306(char*, char *);
extern void execute_1307(char*, char *);
extern void execute_1308(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_1251(char*, char *);
extern void execute_1259(char*, char *);
extern void execute_1260(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_469(char*, char *);
extern void execute_16(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_478(char*, char *);
extern void execute_481(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_483(char*, char *);
extern void execute_484(char*, char *);
extern void execute_485(char*, char *);
extern void execute_488(char*, char *);
extern void execute_489(char*, char *);
extern void execute_490(char*, char *);
extern void execute_491(char*, char *);
extern void execute_487(char*, char *);
extern void execute_22(char*, char *);
extern void execute_493(char*, char *);
extern void execute_494(char*, char *);
extern void execute_495(char*, char *);
extern void execute_496(char*, char *);
extern void execute_497(char*, char *);
extern void execute_498(char*, char *);
extern void execute_499(char*, char *);
extern void execute_500(char*, char *);
extern void execute_492(char*, char *);
extern void execute_41(char*, char *);
extern void execute_548(char*, char *);
extern void execute_549(char*, char *);
extern void execute_550(char*, char *);
extern void execute_551(char*, char *);
extern void execute_547(char*, char *);
extern void execute_552(char*, char *);
extern void execute_553(char*, char *);
extern void execute_554(char*, char *);
extern void execute_44(char*, char *);
extern void execute_555(char*, char *);
extern void execute_46(char*, char *);
extern void execute_556(char*, char *);
extern void execute_557(char*, char *);
extern void execute_558(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_756(char*, char *);
extern void execute_757(char*, char *);
extern void execute_758(char*, char *);
extern void execute_761(char*, char *);
extern void execute_762(char*, char *);
extern void execute_763(char*, char *);
extern void execute_764(char*, char *);
extern void execute_179(char*, char *);
extern void execute_768(char*, char *);
extern void execute_769(char*, char *);
extern void execute_767(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_922(char*, char *);
extern void execute_923(char*, char *);
extern void execute_924(char*, char *);
extern void execute_925(char*, char *);
extern void execute_463(char*, char *);
extern void execute_464(char*, char *);
extern void execute_465(char*, char *);
extern void execute_1309(char*, char *);
extern void execute_1310(char*, char *);
extern void execute_1311(char*, char *);
extern void execute_1312(char*, char *);
extern void execute_1313(char*, char *);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_20(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_22(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_27(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_179(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_747(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_752(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_782(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_787(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_817(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_822(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_852(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_857(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_862(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_867(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_872(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_937(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_967(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_972(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1002(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1007(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1037(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1042(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1072(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[198] = {(funcp)execute_459, (funcp)execute_460, (funcp)execute_461, (funcp)execute_1305, (funcp)execute_1306, (funcp)execute_1307, (funcp)execute_1308, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_1251, (funcp)execute_1259, (funcp)execute_1260, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_466, (funcp)execute_467, (funcp)execute_468, (funcp)execute_469, (funcp)execute_16, (funcp)execute_18, (funcp)execute_19, (funcp)execute_478, (funcp)execute_481, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_483, (funcp)execute_484, (funcp)execute_485, (funcp)execute_488, (funcp)execute_489, (funcp)execute_490, (funcp)execute_491, (funcp)execute_487, (funcp)execute_22, (funcp)execute_493, (funcp)execute_494, (funcp)execute_495, (funcp)execute_496, (funcp)execute_497, (funcp)execute_498, (funcp)execute_499, (funcp)execute_500, (funcp)execute_492, (funcp)execute_41, (funcp)execute_548, (funcp)execute_549, (funcp)execute_550, (funcp)execute_551, (funcp)execute_547, (funcp)execute_552, (funcp)execute_553, (funcp)execute_554, (funcp)execute_44, (funcp)execute_555, (funcp)execute_46, (funcp)execute_556, (funcp)execute_557, (funcp)execute_558, (funcp)execute_67, (funcp)execute_68, (funcp)execute_118, (funcp)execute_119, (funcp)execute_127, (funcp)execute_128, (funcp)execute_756, (funcp)execute_757, (funcp)execute_758, (funcp)execute_761, (funcp)execute_762, (funcp)execute_763, (funcp)execute_764, (funcp)execute_179, (funcp)execute_768, (funcp)execute_769, (funcp)execute_767, (funcp)execute_279, (funcp)execute_280, (funcp)execute_281, (funcp)execute_922, (funcp)execute_923, (funcp)execute_924, (funcp)execute_925, (funcp)execute_463, (funcp)execute_464, (funcp)execute_465, (funcp)execute_1309, (funcp)execute_1310, (funcp)execute_1311, (funcp)execute_1312, (funcp)execute_1313, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_15, (funcp)transaction_16, (funcp)transaction_20, (funcp)transaction_21, (funcp)transaction_22, (funcp)transaction_23, (funcp)transaction_24, (funcp)transaction_25, (funcp)transaction_26, (funcp)transaction_27, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_63, (funcp)transaction_65, (funcp)transaction_68, (funcp)transaction_70, (funcp)transaction_73, (funcp)transaction_75, (funcp)transaction_78, (funcp)transaction_80, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_86, (funcp)transaction_88, (funcp)transaction_91, (funcp)transaction_93, (funcp)transaction_96, (funcp)transaction_98, (funcp)transaction_101, (funcp)transaction_103, (funcp)transaction_105, (funcp)transaction_106, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_108, (funcp)transaction_109, (funcp)transaction_112, (funcp)transaction_113, (funcp)transaction_116, (funcp)transaction_117, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_123, (funcp)transaction_125, (funcp)transaction_127, (funcp)transaction_129, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_140, (funcp)transaction_141, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_154, (funcp)transaction_156, (funcp)transaction_158, (funcp)transaction_163, (funcp)transaction_165, (funcp)transaction_167, (funcp)transaction_169, (funcp)transaction_171, (funcp)transaction_173, (funcp)transaction_175, (funcp)transaction_177, (funcp)transaction_179, (funcp)transaction_181, (funcp)transaction_190, (funcp)transaction_195, (funcp)transaction_200, (funcp)transaction_717, (funcp)transaction_747, (funcp)transaction_752, (funcp)transaction_782, (funcp)transaction_787, (funcp)transaction_817, (funcp)transaction_822, (funcp)transaction_852, (funcp)transaction_857, (funcp)transaction_862, (funcp)transaction_867, (funcp)transaction_872, (funcp)transaction_937, (funcp)transaction_967, (funcp)transaction_972, (funcp)transaction_1002, (funcp)transaction_1007, (funcp)transaction_1037, (funcp)transaction_1042, (funcp)transaction_1072};
const int NumRelocateId= 198;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/DIV_sim_func_synth/xsim.reloc",  (void **)funcTab, 198);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/DIV_sim_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/DIV_sim_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/DIV_sim_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/DIV_sim_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/DIV_sim_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
