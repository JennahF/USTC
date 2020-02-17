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
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_135795(char*, char *);
extern void execute_135796(char*, char *);
extern void execute_135797(char*, char *);
extern void execute_135798(char*, char *);
extern void execute_135799(char*, char *);
extern void execute_65795(char*, char *);
extern void execute_65796(char*, char *);
extern void execute_65797(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_66115(char*, char *);
extern void execute_66117(char*, char *);
extern void execute_66119(char*, char *);
extern void execute_66120(char*, char *);
extern void execute_8(char*, char *);
extern void execute_65799(char*, char *);
extern void execute_65800(char*, char *);
extern void execute_65801(char*, char *);
extern void execute_65802(char*, char *);
extern void execute_65798(char*, char *);
extern void execute_12(char*, char *);
extern void execute_13(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg(char*, char*, char*);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void execute_28(char*, char *);
extern void execute_65808(char*, char *);
extern void execute_65809(char*, char *);
extern void execute_65810(char*, char *);
extern void execute_65811(char*, char *);
extern void execute_65812(char*, char *);
extern void execute_65813(char*, char *);
extern void execute_65814(char*, char *);
extern void execute_65815(char*, char *);
extern void execute_65807(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_65835(char*, char *);
extern void execute_65836(char*, char *);
extern void execute_65837(char*, char *);
extern void execute_65838(char*, char *);
extern void execute_136(char*, char *);
extern void execute_65896(char*, char *);
extern void execute_65897(char*, char *);
extern void execute_65895(char*, char *);
extern void execute_65981(char*, char *);
extern void execute_65982(char*, char *);
extern void execute_65983(char*, char *);
extern void execute_65986(char*, char *);
extern void execute_65987(char*, char *);
extern void execute_65988(char*, char *);
extern void execute_65989(char*, char *);
extern void execute_66515(char*, char *);
extern void execute_66521(char*, char *);
extern void execute_66528(char*, char *);
extern void execute_66531(char*, char *);
extern void execute_66532(char*, char *);
extern void execute_66537(char*, char *);
extern void execute_66543(char*, char *);
extern void execute_764(char*, char *);
extern void execute_765(char*, char *);
extern void execute_766(char*, char *);
extern void execute_66445(char*, char *);
extern void execute_66446(char*, char *);
extern void execute_66447(char*, char *);
extern void execute_66448(char*, char *);
extern void execute_867(char*, char *);
extern void execute_869(char*, char *);
extern void execute_18863(char*, char *);
extern void execute_18864(char*, char *);
extern void execute_72302(char*, char *);
extern void execute_72303(char*, char *);
extern void execute_72304(char*, char *);
extern void execute_72305(char*, char *);
extern void execute_72306(char*, char *);
extern void execute_72307(char*, char *);
extern void execute_72308(char*, char *);
extern void execute_18895(char*, char *);
extern void execute_18896(char*, char *);
extern void execute_72332(char*, char *);
extern void execute_72333(char*, char *);
extern void execute_72334(char*, char *);
extern void execute_72335(char*, char *);
extern void execute_72336(char*, char *);
extern void execute_72337(char*, char *);
extern void execute_72338(char*, char *);
extern void execute_18911(char*, char *);
extern void execute_18912(char*, char *);
extern void execute_72347(char*, char *);
extern void execute_72348(char*, char *);
extern void execute_72349(char*, char *);
extern void execute_72350(char*, char *);
extern void execute_72351(char*, char *);
extern void execute_72352(char*, char *);
extern void execute_72353(char*, char *);
extern void execute_135731(char*, char *);
extern void execute_135732(char*, char *);
extern void execute_135733(char*, char *);
extern void execute_65726(char*, char *);
extern void execute_135734(char*, char *);
extern void execute_65738(char*, char *);
extern void execute_135740(char*, char *);
extern void execute_135741(char*, char *);
extern void execute_135742(char*, char *);
extern void execute_65792(char*, char *);
extern void execute_65793(char*, char *);
extern void execute_65794(char*, char *);
extern void execute_135800(char*, char *);
extern void execute_135801(char*, char *);
extern void execute_135802(char*, char *);
extern void execute_135803(char*, char *);
extern void execute_135804(char*, char *);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_697(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_715(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_719(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_720(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_721(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_223(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_263(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_268(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_273(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_439(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_453(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_458(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_463(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_473(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_487(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_492(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_497(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_502(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_515(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_965(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_970(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_975(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_980(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_992(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_997(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1002(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1007(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1019(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1024(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1029(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1034(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1039(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1051(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1063(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1068(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1073(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1085(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1090(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1095(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1187(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1217(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1232(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1237(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1242(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1247(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1252(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1311(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1316(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1326(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1331(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1336(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1341(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1346(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1433(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1438(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1443(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1448(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1453(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1458(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1463(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1468(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[245] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_135795, (funcp)execute_135796, (funcp)execute_135797, (funcp)execute_135798, (funcp)execute_135799, (funcp)execute_65795, (funcp)execute_65796, (funcp)execute_65797, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_66115, (funcp)execute_66117, (funcp)execute_66119, (funcp)execute_66120, (funcp)execute_8, (funcp)execute_65799, (funcp)execute_65800, (funcp)execute_65801, (funcp)execute_65802, (funcp)execute_65798, (funcp)execute_12, (funcp)execute_13, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_16, (funcp)execute_17, (funcp)vlog_simple_process_execute_0_fast_no_reg, (funcp)execute_24, (funcp)execute_25, (funcp)execute_28, (funcp)execute_65808, (funcp)execute_65809, (funcp)execute_65810, (funcp)execute_65811, (funcp)execute_65812, (funcp)execute_65813, (funcp)execute_65814, (funcp)execute_65815, (funcp)execute_65807, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_65835, (funcp)execute_65836, (funcp)execute_65837, (funcp)execute_65838, (funcp)execute_136, (funcp)execute_65896, (funcp)execute_65897, (funcp)execute_65895, (funcp)execute_65981, (funcp)execute_65982, (funcp)execute_65983, (funcp)execute_65986, (funcp)execute_65987, (funcp)execute_65988, (funcp)execute_65989, (funcp)execute_66515, (funcp)execute_66521, (funcp)execute_66528, (funcp)execute_66531, (funcp)execute_66532, (funcp)execute_66537, (funcp)execute_66543, (funcp)execute_764, (funcp)execute_765, (funcp)execute_766, (funcp)execute_66445, (funcp)execute_66446, (funcp)execute_66447, (funcp)execute_66448, (funcp)execute_867, (funcp)execute_869, (funcp)execute_18863, (funcp)execute_18864, (funcp)execute_72302, (funcp)execute_72303, (funcp)execute_72304, (funcp)execute_72305, (funcp)execute_72306, (funcp)execute_72307, (funcp)execute_72308, (funcp)execute_18895, (funcp)execute_18896, (funcp)execute_72332, (funcp)execute_72333, (funcp)execute_72334, (funcp)execute_72335, (funcp)execute_72336, (funcp)execute_72337, (funcp)execute_72338, (funcp)execute_18911, (funcp)execute_18912, (funcp)execute_72347, (funcp)execute_72348, (funcp)execute_72349, (funcp)execute_72350, (funcp)execute_72351, (funcp)execute_72352, (funcp)execute_72353, (funcp)execute_135731, (funcp)execute_135732, (funcp)execute_135733, (funcp)execute_65726, (funcp)execute_135734, (funcp)execute_65738, (funcp)execute_135740, (funcp)execute_135741, (funcp)execute_135742, (funcp)execute_65792, (funcp)execute_65793, (funcp)execute_65794, (funcp)execute_135800, (funcp)execute_135801, (funcp)execute_135802, (funcp)execute_135803, (funcp)execute_135804, (funcp)transaction_13, (funcp)transaction_23, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_695, (funcp)transaction_696, (funcp)transaction_697, (funcp)transaction_698, (funcp)transaction_699, (funcp)transaction_700, (funcp)transaction_715, (funcp)transaction_716, (funcp)transaction_717, (funcp)transaction_719, (funcp)transaction_720, (funcp)transaction_721, (funcp)transaction_223, (funcp)transaction_228, (funcp)transaction_233, (funcp)transaction_238, (funcp)transaction_243, (funcp)transaction_248, (funcp)transaction_253, (funcp)transaction_258, (funcp)transaction_263, (funcp)transaction_268, (funcp)transaction_273, (funcp)transaction_439, (funcp)transaction_453, (funcp)transaction_458, (funcp)transaction_463, (funcp)transaction_468, (funcp)transaction_473, (funcp)transaction_487, (funcp)transaction_492, (funcp)transaction_497, (funcp)transaction_502, (funcp)transaction_515, (funcp)transaction_965, (funcp)transaction_970, (funcp)transaction_975, (funcp)transaction_980, (funcp)transaction_992, (funcp)transaction_997, (funcp)transaction_1002, (funcp)transaction_1007, (funcp)transaction_1019, (funcp)transaction_1024, (funcp)transaction_1029, (funcp)transaction_1034, (funcp)transaction_1039, (funcp)transaction_1051, (funcp)transaction_1063, (funcp)transaction_1068, (funcp)transaction_1073, (funcp)transaction_1085, (funcp)transaction_1090, (funcp)transaction_1095, (funcp)transaction_1100, (funcp)transaction_1112, (funcp)transaction_1117, (funcp)transaction_1122, (funcp)transaction_1127, (funcp)transaction_1132, (funcp)transaction_1137, (funcp)transaction_1142, (funcp)transaction_1147, (funcp)transaction_1152, (funcp)transaction_1157, (funcp)transaction_1162, (funcp)transaction_1167, (funcp)transaction_1172, (funcp)transaction_1177, (funcp)transaction_1182, (funcp)transaction_1187, (funcp)transaction_1192, (funcp)transaction_1197, (funcp)transaction_1202, (funcp)transaction_1207, (funcp)transaction_1212, (funcp)transaction_1217, (funcp)transaction_1222, (funcp)transaction_1227, (funcp)transaction_1232, (funcp)transaction_1237, (funcp)transaction_1242, (funcp)transaction_1247, (funcp)transaction_1252, (funcp)transaction_1311, (funcp)transaction_1316, (funcp)transaction_1321, (funcp)transaction_1326, (funcp)transaction_1331, (funcp)transaction_1336, (funcp)transaction_1341, (funcp)transaction_1346, (funcp)transaction_1433, (funcp)transaction_1438, (funcp)transaction_1443, (funcp)transaction_1448, (funcp)transaction_1453, (funcp)transaction_1458, (funcp)transaction_1463, (funcp)transaction_1468};
const int NumRelocateId= 245;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/board_sim_func_impl/xsim.reloc",  (void **)funcTab, 245);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/board_sim_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/board_sim_func_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/board_sim_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/board_sim_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/board_sim_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
