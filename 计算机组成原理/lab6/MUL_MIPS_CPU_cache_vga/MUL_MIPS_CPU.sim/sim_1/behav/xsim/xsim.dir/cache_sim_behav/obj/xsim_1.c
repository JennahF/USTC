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
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_4325(char*, char *);
extern void execute_4326(char*, char *);
extern void execute_4327(char*, char *);
extern void execute_4328(char*, char *);
extern void execute_4329(char*, char *);
extern void execute_4330(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_10(char*, char *);
extern void execute_11(char*, char *);
extern void execute_1320(char*, char *);
extern void execute_1321(char*, char *);
extern void execute_1322(char*, char *);
extern void execute_1323(char*, char *);
extern void execute_1324(char*, char *);
extern void execute_1325(char*, char *);
extern void execute_1326(char*, char *);
extern void execute_1327(char*, char *);
extern void execute_1328(char*, char *);
extern void execute_1329(char*, char *);
extern void execute_1330(char*, char *);
extern void execute_1331(char*, char *);
extern void execute_1332(char*, char *);
extern void execute_1333(char*, char *);
extern void execute_1334(char*, char *);
extern void execute_4320(char*, char *);
extern void execute_4321(char*, char *);
extern void execute_4322(char*, char *);
extern void execute_4323(char*, char *);
extern void execute_4324(char*, char *);
extern void execute_13(char*, char *);
extern void execute_1335(char*, char *);
extern void execute_2827(char*, char *);
extern void execute_2828(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_1336(char*, char *);
extern void execute_1337(char*, char *);
extern void execute_1338(char*, char *);
extern void execute_1339(char*, char *);
extern void execute_1340(char*, char *);
extern void execute_1341(char*, char *);
extern void execute_1342(char*, char *);
extern void execute_1343(char*, char *);
extern void execute_1344(char*, char *);
extern void execute_1345(char*, char *);
extern void execute_1346(char*, char *);
extern void execute_1347(char*, char *);
extern void execute_1348(char*, char *);
extern void execute_1349(char*, char *);
extern void execute_1350(char*, char *);
extern void execute_1351(char*, char *);
extern void execute_1352(char*, char *);
extern void execute_1353(char*, char *);
extern void execute_1354(char*, char *);
extern void execute_1355(char*, char *);
extern void execute_1356(char*, char *);
extern void execute_1357(char*, char *);
extern void execute_1358(char*, char *);
extern void execute_1359(char*, char *);
extern void execute_1360(char*, char *);
extern void execute_1361(char*, char *);
extern void execute_1362(char*, char *);
extern void execute_1363(char*, char *);
extern void execute_1364(char*, char *);
extern void execute_1365(char*, char *);
extern void execute_1366(char*, char *);
extern void execute_1367(char*, char *);
extern void execute_1368(char*, char *);
extern void execute_1369(char*, char *);
extern void execute_1370(char*, char *);
extern void execute_1371(char*, char *);
extern void execute_1372(char*, char *);
extern void execute_1373(char*, char *);
extern void execute_1374(char*, char *);
extern void execute_1375(char*, char *);
extern void execute_1376(char*, char *);
extern void execute_1377(char*, char *);
extern void execute_1378(char*, char *);
extern void execute_1379(char*, char *);
extern void execute_1380(char*, char *);
extern void execute_1381(char*, char *);
extern void execute_1382(char*, char *);
extern void execute_1383(char*, char *);
extern void execute_1384(char*, char *);
extern void execute_1385(char*, char *);
extern void execute_1386(char*, char *);
extern void execute_1387(char*, char *);
extern void execute_1388(char*, char *);
extern void execute_1389(char*, char *);
extern void execute_1390(char*, char *);
extern void execute_1391(char*, char *);
extern void execute_1392(char*, char *);
extern void execute_1393(char*, char *);
extern void execute_1394(char*, char *);
extern void execute_1395(char*, char *);
extern void execute_1396(char*, char *);
extern void execute_1397(char*, char *);
extern void execute_1398(char*, char *);
extern void execute_1399(char*, char *);
extern void execute_21(char*, char *);
extern void execute_1402(char*, char *);
extern void execute_1403(char*, char *);
extern void execute_1404(char*, char *);
extern void execute_1405(char*, char *);
extern void execute_1406(char*, char *);
extern void execute_1407(char*, char *);
extern void execute_1408(char*, char *);
extern void execute_1409(char*, char *);
extern void execute_1401(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_1689(char*, char *);
extern void execute_1690(char*, char *);
extern void execute_1691(char*, char *);
extern void execute_372(char*, char *);
extern void execute_373(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_1884(char*, char *);
extern void execute_1885(char*, char *);
extern void execute_1887(char*, char *);
extern void execute_1888(char*, char *);
extern void execute_376(char*, char *);
extern void execute_1890(char*, char *);
extern void execute_1891(char*, char *);
extern void execute_1892(char*, char *);
extern void execute_1893(char*, char *);
extern void execute_1889(char*, char *);
extern void execute_1317(char*, char *);
extern void execute_1318(char*, char *);
extern void execute_1319(char*, char *);
extern void execute_4331(char*, char *);
extern void execute_4332(char*, char *);
extern void execute_4333(char*, char *);
extern void execute_4334(char*, char *);
extern void execute_4335(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_606(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_610(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_614(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_618(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_622(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_626(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_634(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_638(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_642(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_646(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_650(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_654(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_658(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_662(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_666(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_670(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_678(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_682(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_686(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_690(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_710(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_714(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_718(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_722(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_734(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_738(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_742(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_746(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_750(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_754(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_758(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_762(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_766(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_770(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_774(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_778(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_782(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_786(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_790(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_794(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_798(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_802(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_806(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_810(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_814(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_818(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_822(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_826(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_830(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_834(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_838(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_842(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_846(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_850(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_854(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_858(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2220(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2224(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2232(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2240(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2244(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2252(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2260(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2264(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2268(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2272(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2276(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2280(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2284(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2288(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2292(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2296(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2300(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2308(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2312(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2316(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2324(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2332(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2336(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2340(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2344(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2348(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2356(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2360(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2364(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2368(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2372(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2376(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2380(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2384(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2388(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2392(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2396(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2408(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2412(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2416(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2420(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[270] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_4325, (funcp)execute_4326, (funcp)execute_4327, (funcp)execute_4328, (funcp)execute_4329, (funcp)execute_4330, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)execute_11, (funcp)execute_1320, (funcp)execute_1321, (funcp)execute_1322, (funcp)execute_1323, (funcp)execute_1324, (funcp)execute_1325, (funcp)execute_1326, (funcp)execute_1327, (funcp)execute_1328, (funcp)execute_1329, (funcp)execute_1330, (funcp)execute_1331, (funcp)execute_1332, (funcp)execute_1333, (funcp)execute_1334, (funcp)execute_4320, (funcp)execute_4321, (funcp)execute_4322, (funcp)execute_4323, (funcp)execute_4324, (funcp)execute_13, (funcp)execute_1335, (funcp)execute_2827, (funcp)execute_2828, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_1336, (funcp)execute_1337, (funcp)execute_1338, (funcp)execute_1339, (funcp)execute_1340, (funcp)execute_1341, (funcp)execute_1342, (funcp)execute_1343, (funcp)execute_1344, (funcp)execute_1345, (funcp)execute_1346, (funcp)execute_1347, (funcp)execute_1348, (funcp)execute_1349, (funcp)execute_1350, (funcp)execute_1351, (funcp)execute_1352, (funcp)execute_1353, (funcp)execute_1354, (funcp)execute_1355, (funcp)execute_1356, (funcp)execute_1357, (funcp)execute_1358, (funcp)execute_1359, (funcp)execute_1360, (funcp)execute_1361, (funcp)execute_1362, (funcp)execute_1363, (funcp)execute_1364, (funcp)execute_1365, (funcp)execute_1366, (funcp)execute_1367, (funcp)execute_1368, (funcp)execute_1369, (funcp)execute_1370, (funcp)execute_1371, (funcp)execute_1372, (funcp)execute_1373, (funcp)execute_1374, (funcp)execute_1375, (funcp)execute_1376, (funcp)execute_1377, (funcp)execute_1378, (funcp)execute_1379, (funcp)execute_1380, (funcp)execute_1381, (funcp)execute_1382, (funcp)execute_1383, (funcp)execute_1384, (funcp)execute_1385, (funcp)execute_1386, (funcp)execute_1387, (funcp)execute_1388, (funcp)execute_1389, (funcp)execute_1390, (funcp)execute_1391, (funcp)execute_1392, (funcp)execute_1393, (funcp)execute_1394, (funcp)execute_1395, (funcp)execute_1396, (funcp)execute_1397, (funcp)execute_1398, (funcp)execute_1399, (funcp)execute_21, (funcp)execute_1402, (funcp)execute_1403, (funcp)execute_1404, (funcp)execute_1405, (funcp)execute_1406, (funcp)execute_1407, (funcp)execute_1408, (funcp)execute_1409, (funcp)execute_1401, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_1689, (funcp)execute_1690, (funcp)execute_1691, (funcp)execute_372, (funcp)execute_373, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_1884, (funcp)execute_1885, (funcp)execute_1887, (funcp)execute_1888, (funcp)execute_376, (funcp)execute_1890, (funcp)execute_1891, (funcp)execute_1892, (funcp)execute_1893, (funcp)execute_1889, (funcp)execute_1317, (funcp)execute_1318, (funcp)execute_1319, (funcp)execute_4331, (funcp)execute_4332, (funcp)execute_4333, (funcp)execute_4334, (funcp)execute_4335, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_606, (funcp)transaction_610, (funcp)transaction_614, (funcp)transaction_618, (funcp)transaction_622, (funcp)transaction_626, (funcp)transaction_630, (funcp)transaction_634, (funcp)transaction_638, (funcp)transaction_642, (funcp)transaction_646, (funcp)transaction_650, (funcp)transaction_654, (funcp)transaction_658, (funcp)transaction_662, (funcp)transaction_666, (funcp)transaction_670, (funcp)transaction_674, (funcp)transaction_678, (funcp)transaction_682, (funcp)transaction_686, (funcp)transaction_690, (funcp)transaction_694, (funcp)transaction_698, (funcp)transaction_702, (funcp)transaction_706, (funcp)transaction_710, (funcp)transaction_714, (funcp)transaction_718, (funcp)transaction_722, (funcp)transaction_726, (funcp)transaction_730, (funcp)transaction_734, (funcp)transaction_738, (funcp)transaction_742, (funcp)transaction_746, (funcp)transaction_750, (funcp)transaction_754, (funcp)transaction_758, (funcp)transaction_762, (funcp)transaction_766, (funcp)transaction_770, (funcp)transaction_774, (funcp)transaction_778, (funcp)transaction_782, (funcp)transaction_786, (funcp)transaction_790, (funcp)transaction_794, (funcp)transaction_798, (funcp)transaction_802, (funcp)transaction_806, (funcp)transaction_810, (funcp)transaction_814, (funcp)transaction_818, (funcp)transaction_822, (funcp)transaction_826, (funcp)transaction_830, (funcp)transaction_834, (funcp)transaction_838, (funcp)transaction_842, (funcp)transaction_846, (funcp)transaction_850, (funcp)transaction_854, (funcp)transaction_858, (funcp)transaction_2168, (funcp)transaction_2172, (funcp)transaction_2176, (funcp)transaction_2180, (funcp)transaction_2184, (funcp)transaction_2188, (funcp)transaction_2192, (funcp)transaction_2196, (funcp)transaction_2200, (funcp)transaction_2204, (funcp)transaction_2208, (funcp)transaction_2212, (funcp)transaction_2216, (funcp)transaction_2220, (funcp)transaction_2224, (funcp)transaction_2228, (funcp)transaction_2232, (funcp)transaction_2236, (funcp)transaction_2240, (funcp)transaction_2244, (funcp)transaction_2248, (funcp)transaction_2252, (funcp)transaction_2256, (funcp)transaction_2260, (funcp)transaction_2264, (funcp)transaction_2268, (funcp)transaction_2272, (funcp)transaction_2276, (funcp)transaction_2280, (funcp)transaction_2284, (funcp)transaction_2288, (funcp)transaction_2292, (funcp)transaction_2296, (funcp)transaction_2300, (funcp)transaction_2304, (funcp)transaction_2308, (funcp)transaction_2312, (funcp)transaction_2316, (funcp)transaction_2320, (funcp)transaction_2324, (funcp)transaction_2328, (funcp)transaction_2332, (funcp)transaction_2336, (funcp)transaction_2340, (funcp)transaction_2344, (funcp)transaction_2348, (funcp)transaction_2352, (funcp)transaction_2356, (funcp)transaction_2360, (funcp)transaction_2364, (funcp)transaction_2368, (funcp)transaction_2372, (funcp)transaction_2376, (funcp)transaction_2380, (funcp)transaction_2384, (funcp)transaction_2388, (funcp)transaction_2392, (funcp)transaction_2396, (funcp)transaction_2400, (funcp)transaction_2404, (funcp)transaction_2408, (funcp)transaction_2412, (funcp)transaction_2416, (funcp)transaction_2420};
const int NumRelocateId= 270;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/cache_sim_behav/xsim.reloc",  (void **)funcTab, 270);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/cache_sim_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/cache_sim_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/cache_sim_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/cache_sim_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/cache_sim_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
