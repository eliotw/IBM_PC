#ifndef __DO_RMAHDR_
#define __DO_RMAHDR_

#ifdef __cplusplus
  extern "C" {
#endif

typedef unsigned long UP;
typedef unsigned U;
typedef unsigned char UB;
typedef unsigned short US;
typedef unsigned char SVAL;
typedef unsigned char TYPEB;
typedef unsigned char scalar;
typedef struct vec32 vec32;
typedef struct qird QIRD;
typedef unsigned char UST_e;
typedef unsigned uscope_t;
typedef U  NumLibs_t;
struct vec32 {
    U  I1;
    U  I2;
};
typedef unsigned RP;
typedef unsigned RO;
typedef unsigned short HsimEdge;
typedef unsigned char HsimExprChar;
typedef U  FlatNodeNum;
typedef U  InstNum;
typedef unsigned long long TimeStamp64;
typedef U  TimeStamp;
typedef TimeStamp  RmaTimeStamp;
typedef TimeStamp64  RmaTimeStamp64;
typedef union {
    double I503;
    unsigned long long I486;
    unsigned  I504[2];
} rma_clock_struct;
typedef struct eblk EBLK;
typedef int (* E_fn)(void);
struct eblk {
    struct eblk * I491;
    E_fn  I492;
    struct iptmpl * I493;
    unsigned I501;
    struct eblk * I502;
};
typedef struct {
    RP  I491;
    RP  I492;
    RP  I493;
    unsigned I501;
    RP  I502;
} RmaEblk;
typedef union {
    double I503;
    unsigned long long I486;
    unsigned  I504[2];
} clock_struct;
typedef clock_struct  RmaClockStruct;
typedef enum {
    PD_SING = 0,
    PD_RF = 1,
    PD_PLSE = 2,
    PD_PLSE_RF = 3,
    PD_NULL = 4
} PD_e;
typedef struct RmaRetain_t RmaRetain;
struct RmaRetain_t {
    RmaEblk  I490;
    RP  I524;
    RP  I525;
    U  I526;
    US  I527 :1;
    US  I528 :4;
    US  newval :2;
    US  I530 :2;
    US  I167 :2;
};
typedef struct MPSched MPS;
typedef struct RmaMPSched RmaMps;
struct MPSched {
    MPS  * I514;
    scalar  I515;
    scalar  I516;
    scalar  I517;
    scalar  fHsim :1;
    scalar  I167 :6;
    U  I519;
    EBLK  I520;
    void * I521;
    UP   I522[1];
};
struct RmaMPSched {
    RP  I514;
    scalar  I515;
    scalar  I516;
    scalar  I517;
    scalar  fHsim :1;
    scalar  I167 :6;
    U  I519;
    RmaEblk  I520;
    RP  I521;
    RP   I522[1];
};
typedef struct RmaMPSchedPulse RmaMpsp;
struct RmaMPSchedPulse {
    RP  I514;
    scalar  I515;
    scalar  I516;
    scalar  I517;
    scalar  I167;
    U  I519;
    RmaEblk  I520;
    scalar  I534;
    scalar  I535;
    scalar  I536;
    scalar  I537;
    U  I538;
    RmaClockStruct  I539;
    RmaClockStruct  I540;
    U  state;
    U  I542;
    RP  I493;
    RP  I543;
    RP  I544;
    RP   I522[1];
};
typedef struct MPItem MPI;
typedef struct {
    RmaEblk  I490;
    RP  I547;
    scalar  I548;
    scalar  I534;
    scalar  I549;
} RmaTransEventHdr;
typedef struct RmaMPSchedPulseNewCsdf RmaMpspNewCsdf;
struct RmaMPSchedPulseNewCsdf {
    RP  I514;
    scalar  I515;
    scalar  I516;
    scalar  I517;
    scalar  fHsim :1;
    scalar  I167 :6;
    U  I519;
    RmaEblk  I520;
    scalar  I534;
    scalar  I535;
    scalar  I536;
    scalar  I537;
    U  state :4;
    U  I551 :28;
    RmaClockStruct  I539;
    RmaClockStruct  I540;
    RP  I552;
    RP  I493;
    RP  I553;
    RP   I522[1];
};
typedef struct red_t {
    U  I554;
    U  I555;
    U  I556;
} RED;
typedef struct predd {
    PD_e  I167;
    RED   I557[1];
} PREDD;
typedef unsigned long long ULL;
typedef struct {
    RP  I558;
    RP  I543;
    RP  I493;
    RP  I544;
    RmaEblk  I490;
    RmaEblk  I559;
    RP  I560;
    scalar  I548;
    scalar  I534;
    char state;
    uscope_t  I561;
    U  I562;
    RP  I563;
    scalar  I535;
    scalar  I536;
    scalar  I537;
    RmaClockStruct  I539;
    RmaClockStruct  I540;
    RP  I521;
} RmaPulse;
typedef enum {
    QIRDModuleC = 1,
    QIRDSVPackageC = 2
} QIRDModuleType;
typedef struct {
    U  I564 :1;
    U  I565 :1;
    U  I566 :1;
    U  I567 :1;
    U  I568 :1;
    U  I569 :1;
    U  I570 :1;
    U  I571 :1;
    U  I572 :1;
    U  I573 :1;
    U  I574 :1;
    U  I575 :1;
    U  I576 :1;
    U  I577 :1;
    U  I578 :1;
    U  I579 :1;
    U  I580 :1;
    U  I581 :1;
    U  I582 :1;
    U  I583 :1;
    QIRDModuleType  I584 :2;
    U  I585 :1;
    U  I586 :1;
    U  I587 :1;
    U  I588 :1;
    U  I589 :1;
    U  I590 :1;
    U  I591 :1;
    U  I592 :1;
    U  I593 :1;
    U  I594 :1;
    U  I595 :1;
    U  I596 :1;
} BitFlags;
struct qird {
    US  I4;
    US  I5;
    U  I6;
    U  I7;
    char * I8;
    char * I9;
    U  * I10;
    char * I11;
    U  I12;
    U  I13;
    struct vcd_rt * I14;
    U  I16;
    struct _vcdOffset_rt * I17;
    UP  * I19;
    U  I20;
    UP  * I21;
    U  I22;
    U  I23;
    U  I24;
    U  * I25;
    U  * I26;
    void * I27;
    U  I28;
    int I29;
    UP  I30;
    U  I31;
    U  I32;
    U  I33;
    UP  I34;
    U  * I35;
    BitFlags  I36;
    U  I37;
    U  I38;
    U  I39;
    U  I40;
    U  I41;
    U  * I42;
    U  I43;
    U  * I44;
    U  I45;
    U  I46;
    U  I47;
    U  I48;
    U  I49;
    U  I50;
    U  I51;
    U  * I52;
    U  I53;
    U  I54;
    U  * I55;
    U  I56;
    U  * I57;
    U  I58;
    U  I59;
    U  I60;
    U  I61;
    U  * I62;
    U  I63;
    U  * I64;
    U  I65;
    U  I66;
    U  I67;
    U  I68;
    U  I69;
    U  I70;
    U  * I71;
    char * I72;
    U  I73;
    U  I74;
    U  I75;
    U  I76;
    U  I77;
    U  * I78;
    U  I79;
    U  I80;
    UP  * I81;
    U  I82;
    U  I83;
    UP  * I84;
    U  I85;
    U  I86;
    U  I87;
    U  I88;
    U  I89;
    U  I90;
    U  * I91;
    U  I92;
    U  I93;
    U  * I94;
    U  * I95;
    U  * I96;
    U  * I97;
    U  * I98;
    U  I99;
    U  I100;
    struct taskInfo * I101;
    U  I103;
    U  I104;
    int * I105;
    U  I106;
    U  I107;
    U  I108;
    U  I109;
    U  I110;
    struct qrefer * I111;
    U  * I113;
    unsigned * I114;
    void * I115;
    U  I116;
    U  I117;
    U  I118;
    U  I119;
    U  * I120;
    U  I121;
    U  * I122;
    U  I123;
    U  I124;
    U  I125;
    U  * I126;
    U  I127;
    U  * I128;
    U  I129;
    U  I130;
    U  * I131;
    U  I132;
    U  I133;
    U  * I134;
    U  * I135;
    U  * I136;
    U  I137;
    U  I138;
    U  I139;
    U  I140;
    U  I141;
    struct qrefee * I142;
    U  * I144;
    U  I145;
    struct qdefrefee * I146;
    U  * I148;
    int (* I149)(void);
    char * I150;
    U  I151;
    U  I152;
    void * I153;
    NumLibs_t  I154;
    char * I155;
    U  * I156;
    U  I157;
    U  I158;
    U  I159;
    U  I160;
    U  I161;
    U  * I162;
    U  * I163;
    int I164;
    struct clock_load * I165;
    int I180;
    struct clock_data * I181;
    int I197;
    struct clock_hiconn * I198;
    U  I202;
    int I203;
    U  I204;
    int I205;
    U  * I206;
    U  * I207;
    U  I208;
    void * I209;
    U  I210;
    U  I211;
    UP  * I212;
    void * I213;
    U  I214;
    UP  * I215;
    U  * I216;
    int (* I217)(void);
    U  * I218;
    UP  * I219;
    U  * I220;
    U  I221;
    U  I222;
    U  I223;
    UP  * I224;
    U  * I225;
    U  I226 :1;
    U  I227 :1;
    U  I228 :1;
    U  I229 :1;
    U  I230 :28;
    U  I231;
    U  I232;
    U  I233;
    U  I234;
    UP  * I235;
    UP  * I236;
    U  * I237;
    U  * I238;
    UP  * I239;
    UP  * I240;
    UP  * I241;
    U  * I242;
    UP  * I243;
    UP  * I244;
    U  I245;
    U  I246;
    U  I247;
    UP  * I248;
    UP  * I249;
    UP  * I250;
    UP  * I251;
    UP  * I252;
    UP  * I253;
    UP  * I254;
    UP  * I255;
    UP  * I256;
    UP  * I257;
    UP  * I258;
    U  I259;
    U  I260;
    U  I261;
    U  I262;
    U  I263;
    U  I264;
    U  I265;
    U  I266;
    U  I267;
    U  I268;
    struct daidirInfo * I269;
    struct vcs_tftable * I271;
    U  I273;
    UP  * I274;
    UP  (* I275)(void);
    UP  (* I276)(void);
    UP  (* I277)(void);
    UP  (* I278)(void);
    int * I279;
    int (* I280)(void);
    char * I281;
    UP  * I282;
    UP  * I283;
    int (* I284)(void);
    int * I285;
    U  * I286;
    void * I287;
    U  I288;
    U  I289;
    U  I290;
    U  I291;
    U  I292;
    U  I293;
    UP  * I294;
    U  * I295;
    U  * I296;
    U  I297 :15;
    U  I298 :14;
    U  I299 :1;
    U  I300 :1;
    U  I301 :1;
    U  I302 :3;
    U  I303 :1;
    U  I304 :1;
    U  I305 :1;
    U  I306 :18;
    U  I307 :3;
    U  I308 :5;
    struct scope * I309;
    U  I311;
    U  I312;
    U  I313;
    U  * I314;
    U  * I315;
    U  * I316;
    U  I317;
    U  I318;
    U  I319;
    struct pcbt * I320;
    U  I329;
    U  I330;
    void * I331;
    int I332;
    U  I333;
    U  I334;
    U  I335;
    U  I336;
    U  I337;
    void * I338;
    UP  * I339;
    U  I340;
    U  I341;
    void * I342;
    U  I343;
    void * I344;
    U  I345;
    void * I346;
    U  I347;
    int (* I348)(void);
    int (* I349)(void);
    void * I350;
    void * I351;
    void * I352;
    U  I353;
    U  I354;
    char * I355;
    U  I356;
    U  * I357;
    U  I358;
    U  * I359;
    U  I360;
    U  I361;
    U  I362;
    U  I363;
    U  I364;
    U  I365;
    U  * I366;
    U  I367;
    U  I368;
    U  * I369;
    U  I370;
    U  * I371;
    char * I372;
    U  I373;
    U  I374;
    U  I375;
    U  I376;
    U  * I377;
    U  I378;
    U  I379;
    struct cosim_info * I380;
    U  I382;
    U  * I383;
    U  I384;
    U  I385;
    U  * I386;
    U  I387;
    U  * I388;
    U  I389;
    U  I390;
    U  * I391;
    U  I392;
    U  I393;
    U  I394;
    U  * I395;
    U  I396;
    U  I397;
    U  I398;
    U  I399;
    U  I400;
    U  I401;
    U  I402;
    U  I403;
    U  * I404;
    U  * I405;
    void (* I406)(void);
    U  * I407;
    UP  * I408;
    struct mhdl_outInfo * I409;
    UP  * I411;
    U  I412;
    UP  * I413;
    U  I414;
    void * I415;
    U  * I416;
    void * I417;
    U  I418;
    U  I419;
    void * I420;
    void * I421;
    U  * I422;
    U  * I423;
    U  * I424;
    U  * I425;
    void * I426;
    U  I427;
    void * I428;
    U  * I429;
    char * I430;
    int (* I431)(void);
    U  * I432;
    char * I433;
    char * I434;
    U  I435;
    U  * I436;
    struct regInitInfo * I437;
    UP  * I439;
    U  * I440;
    char * I441;
    U  I442;
    U  I443;
    U  I444;
    U  I445;
    U  I446;
    U  I447;
    U  I448;
    U  I449;
    U  * I450;
    U  * I451;
    U  I452;
    U  I453;
    U  I454;
    UP  * I455;
    U  I456;
    UP  * I457;
    U  I458;
    U  I459;
    U  I460;
    U  * I461;
    U  * I462;
    UP  * I463;
    UP  * I464;
    void * I465;
    UP  I466;
    void * I467;
    void * I468;
    void * I469;
    U  I470;
    U  I471;
    U  I472;
    U  I473;
    U  * I474;
    U  I475;
    U  * I476;
    U  I477;
    U  I478;
    U  * I479;
};
typedef struct pcbt {
    U  * I322;
    UP  I323;
    U  I324;
    U  I325;
    U  I326;
    U  I327;
    U  I328;
} PCBT;
struct iptmpl {
    QIRD  * I495;
    struct vcs_globals_t * I496;
    void * I498;
    UP  I499;
    UP  I500;
    struct iptmpl * I493[2];
};
typedef unsigned long long FileOffset;
typedef struct _hsimPeriodL {
    char  I620[256];
    struct _hsimPeriodL * I598;
} HsimPeriodL;
typedef struct {
    U   I622[2];
    U  I623 :1;
    U  I624 :1;
    U  I625 :8;
    U  I626 :8;
    U  I627 :8;
    U  I628 :4;
    unsigned long long I629;
    unsigned long long I630;
    unsigned long long I631;
    unsigned long long I632;
    unsigned long long I633;
    U  I634;
    U  I635;
    U  I636;
    U  I637;
    HsimPeriodL  * I638;
    HsimPeriodL  * I639;
    U  I640;
} HsimSignalMonitor;
typedef struct {
    scalar  I641;
    U  I642;
    U  I643;
    U  I644;
    U  I645;
    U  I646;
    U  I647;
    U  I648;
    HsimSignalMonitor  * I649;
    RmaTimeStamp64  I650;
    U  I651;
    FlatNodeNum  I652;
    InstNum  I653;
} HsimNodeRecord;
typedef struct {
    RP  I654;
    RP  I493;
} RmaIbfIp;
typedef struct {
    RP  I654;
    RP  I655;
} RmaIbfPcode;
typedef struct {
    RmaEblk  I490;
} RmaEvTriggeredOrSyncLoadCg;
typedef struct {
    RmaEblk  I490;
    RP  I656;
    vec32  I657;
} RmaAnySchedVCg;
typedef struct {
    RmaEblk  I490;
    RP  I656;
    vec32   I658[1];
} RmaAnySchedWCg;
typedef struct {
    RmaEblk  I490;
    RP  I656;
    scalar   I659[1];
} RmaAnySchedECg;
typedef struct {
    RP  I660;
} RmaRootCbkCg;
typedef struct {
    RP  I661;
} RmaRootVcdCg;
typedef struct {
    RP  I662;
} RmaRootForceCbkCg;
typedef struct {
    RmaEblk  I490;
    RP  I663;
} RmaForceCbkJmpCg;
typedef struct {
    RP  ptable;
    RP  pfn;
    RP  I655;
} Rma1InputGateFaninCgS;
typedef struct {
    U  I5;
    U  iinput;
    RP  I669;
} RmaCondOptLoad;
typedef struct {
    U  I5;
    U  iinput;
    RP  I669;
} RmaCellStateUpdate;
typedef struct {
    U  I5;
    U  state;
    US  I670;
    US  I615;
    U  * I671;
} RmaCellState;
typedef struct {
    U  iinput;
    RP  I672;
} RmaMultiInputLogicGateCg;
typedef struct {
    U  iinput;
    RP  ptable;
    RP  I672;
} RmaSeqPrimEdgeInputCg;
typedef struct {
    RmaEblk  I490;
    RP  I655;
} RmaSched0GateCg;
typedef struct {
    scalar  I673;
    RmaEblk  I490;
    RP  I655;
    RP  pfn;
} RmaSchedDeltaGateCg;
typedef struct {
    UB  I674;
    RP  I675;
    RP  I676;
} RmaPropNodeSeqLhsSCg;
typedef struct {
    RmaEblk  I490;
    RP  I655;
    U  I677;
    U   I483[1];
} RmaBitEdgeEblk;
typedef struct {
    U  I5;
    RP  I557;
    RmaEblk  I490;
    RmaIbfPcode  I678;
} RmaGateDelay;
typedef struct {
    U  I5;
    union {
        RP  I754;
        RP  I964;
        RP  I970;
    } I524;
    RmaIbfPcode  I678;
} RmaMPDelay;
typedef struct {
    U  I5;
    RmaPulse  I679;
    RmaIbfPcode  I678;
} RmaMPPulseHybridDelay;
typedef struct {
    U  I5;
    RmaIbfPcode  I678;
    RmaMps  I680;
} RmaMPHybridDelay;
typedef struct {
    U  I5;
    U  I681;
    RmaIbfPcode  I678;
    RmaEblk  I520;
} RmaMPHybridDelayPacked;
typedef struct {
    U  I5;
    RmaIbfPcode  I678;
    RmaMpspNewCsdf  I682;
} RmaMPPulseDelay;
typedef struct {
    U  I5;
    RmaMpsp  I682;
    RmaIbfPcode  I678;
} RmaMPPulseOptHybridDelay;
typedef struct {
    U  I5;
    U  I556;
    RmaTransEventHdr  I599;
    RP  I553;
    RmaIbfPcode  I678;
} RmaNtcTransDelay;
typedef struct {
    U  I5;
    U  I556;
    RmaEblk  I490;
    RmaIbfPcode  I678;
} RmaNtcTransMpwOptDelay;
typedef struct {
    U  I5;
    RmaEblk  I490;
    RmaIbfPcode  I678;
} RmaNtcTransZeroDelay;
typedef struct {
    U  I5;
    U  I683;
    U  I684;
    RmaTransEventHdr  I599;
    RP  I553;
    RmaIbfPcode  I678;
} RmaNtcTransDelayRF;
typedef struct {
    U  I5;
    U  I683;
    U  I684;
    RmaEblk  I490;
    RmaIbfPcode  I678;
} RmaNtcTransMpwOptDelayRF;
typedef struct {
    U  I5;
    RP  I685;
    RmaTransEventHdr  I599;
    RP  I553;
    RmaIbfPcode  I678;
} RmaICTransDelay;
typedef struct {
    U  I5;
    RP  I685;
    RmaEblk  I490;
    RmaIbfPcode  I678;
} RmaICTransMpwOptDelay;
typedef struct {
    U  I5;
    RmaEblk  I490;
    RmaIbfPcode  I678;
} RmaICTransZeroDelay;
typedef struct {
    U  I5;
    RP  I557;
    RmaEblk  I490;
    RmaIbfPcode  I678;
} RmaICSimpleDelay;
typedef struct {
    U  I5;
    union {
        RP  psimple;
        RP  I964;
        RP  I970;
    } I524;
    RmaIbfPcode  I678;
} RmaICDelay;
typedef struct {
    U  I5;
    RP  I557;
    RmaEblk  I490;
    RmaIbfPcode  I678;
} RmaPortDelay;
typedef struct TableAssign_ {
    struct TableAssign_ * I598;
    struct TableAssign_ * I547;
    U  I5;
    U  iinput;
    RP  ptable;
    RP  I672;
} TableAssign;
typedef struct TableAssignList_ {
    U  I5;
    TableAssign  * I547;
    TableAssign  * I687;
} TableAssignList;
typedef struct {
    RP  I688;
} RmaWakeupListCg;
typedef struct {
    U  I689;
    U  I690;
    RmaTimeStamp   I691[1];
} RmaTsArray;
typedef struct {
    RP  I598;
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
} RmaTcCoreSimple;
typedef struct {
    RP  I598;
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
    RP  I702;
} RmaTcCoreConditional;
typedef struct {
    RP  I598;
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
    RP  I702;
    RP  I703;
} RmaTcCoreConditionalOpt;
typedef struct {
    RP  I598;
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
    RP  I703;
    RP  I704;
} RmaTcCoreConditionalMtc;
typedef struct {
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
} RmaTcCoreSimpleNoList;
typedef struct {
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
    RP  I705;
} RmaTcCoreSimpleNoListMdb;
typedef struct {
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
    RP  I702;
} RmaTcCoreConditionalNoList;
typedef struct {
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
    RP  I702;
    RP  I703;
} RmaTcCoreConditionalOptNoList;
typedef struct {
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
    RP  I703;
    RP  I704;
} RmaTcCoreConditionalMtcNoList;
typedef struct {
    RP  I692;
    RP  I487;
    U  I693;
    scalar  I694;
    scalar  I695;
    US  I696 :1;
    US  I697 :1;
    US  I698 :1;
    US  I699 :1;
    US  I700 :1;
    US  I701 :11;
    RP  I702;
    RP  I705;
} RmaTcCoreConditionalNoListMdb;
typedef struct {
    RP  I706;
    RmaTimeStamp  I707;
    scalar  I708;
} RmaConditionalTSLoadNoList;
typedef struct {
    RP  I598;
    RP  I706;
    RmaTimeStamp  I707;
    scalar  I708;
} RmaConditionalTSLoad;
typedef struct {
    RmaTimeStamp  I707;
    scalar  I708;
    US  I694;
    RP  I703;
} RmaConditionalTSLoadOptNoList;
typedef struct {
    RP  I598;
    RmaTimeStamp  I707;
    scalar  I708;
    US  I694;
    RP  I703;
} RmaConditionalTSLoadOpt;
typedef struct {
    RP  I703;
    RP  I709;
} RmaConditionalTSLoadMtcNoList;
typedef struct {
    RP  I598;
    RP  I703;
    RP  I709;
} RmaConditionalTSLoadMtc;
typedef struct {
    US  I710;
    scalar  val;
    RmaIbfPcode  I678;
} RmaScanSwitchData;
struct clock_load {
    U  I167 :5;
    U  I168 :12;
    U  I169 :1;
    U  I170 :2;
    U  I171 :1;
    U  I172 :1;
    U  I173 :1;
    U  I174 :9;
    U  I175;
    U  I176;
    void (* pfn)(void * I178, char val);
};
typedef struct clock_data {
    U  I183 :1;
    U  I184 :1;
    U  I185 :1;
    U  I186 :1;
    U  I167 :5;
    U  I168 :12;
    U  I187 :6;
    U  I188 :1;
    U  I170 :2;
    U  I171 :1;
    U  I174 :1;
    U  I189;
    U  I190;
    U  I191;
    U  I175;
    U  I192;
    U  I193;
    U  I194;
    U  I195;
    U  I196;
} HdbsClockData;
struct clock_hiconn {
    U  I200;
    U  I201;
    U  I175;
    U  I170;
};
typedef struct _RmaDaiCg {
    RP  I711;
    RP  I712;
    U  I713;
} RmaDaiCg;
typedef union _RmaCbkMemOptUnion {
    RP  I711;
    RP  I714;
    RP  I715;
} RmaCbkMemOptUnion;
typedef struct _RmaDaiOptCg {
    RmaCbkMemOptUnion  I716;
} RmaDaiOptCg;
struct futq {
    struct futq * I505;
    struct futq * I507;
    RmaEblk  * I508;
    RmaEblk  * I509;
    U  I501;
};
struct sched_table {
    struct futq * I510;
    struct futq I511;
    struct hash_bucket * I512;
};
struct dummyq_struct {
    clock_struct  I717;
    EBLK  * I718;
    EBLK  * I719;
    struct futq * I720;
    struct futq * I721;
    struct sched_table * I722;
    struct millenium * I724;
    EBLK  * I726;
    EBLK  * I727;
    EBLK  * I728;
    EBLK  * I729;
    EBLK  * I730;
    EBLK  * I731;
    EBLK  * I732;
    EBLK  * I733;
    EBLK  * I734;
    EBLK  * I735;
    EBLK  * I736;
    EBLK  * I737;
    EBLK  * I738;
    EBLK  * I739;
    EBLK  * I740;
    EBLK  * I741;
    MPS  * I742;
};
typedef void (* FP)(void *  , scalar   );
typedef void (* FP1)(void *  );
typedef U  (* FPU1)(void *  );
typedef void (* FPV)(void *  , UB  *  );
typedef void (* FPLSEL)(void *  , scalar   , U   );
typedef void (* FPLSELV)(void *  , vec32  *  , U   , U   );
typedef void (* FPFPV)(UB  *  , UB  *  , U   , U   , U   , U   , U   , UB  *  , U   );
typedef void (* FPRPV)(UB  *  , U   , U   , U   );
typedef void (* FPEVCDLSEL)(void *  , scalar   , U   , UB  *  );
typedef void (* FPEVCDLSELV)(void *  , vec32  *  , U   , U   , UB  *  );
extern UB   Xvalchg[];
extern UB   X4val[];
extern UB   X3val[];
extern UB   XcvtstrTR[];
extern UB   Xbuf[];
extern UB   Xbitnot[];
extern UB   Xwor[];
extern UB   Xwand[];
extern U   Xbitnot4val[];
extern UB   globalTable1Input[];
extern unsigned long long vcs_clocks;
extern UB   Xunion[];
extern U  fRTFrcRelCbk;
extern FP  txpFnPtr;
extern FP   rmaFunctionArray[];
extern UB  dummyScalar;
extern UB  fScalarIsForced;
extern UB  fScalarIsReleased;
extern U  fNotimingchecks;
extern RP  * iparr;
extern FP1  * rmaPostAnySchedFnPtr;
extern FP1  * rmaPostAnySchedVFnPtr;
extern FP1  * rmaPostAnySchedWFnPtr;
extern FP1  * rmaPostAnySchedEFnPtr;
extern FP1  * rmaPostSchedUpdateClockStatusFnPtr;
extern FP1  * rmaPostSchedUpdateClockStatusNonCongruentFnPtr;
extern FP1  * rmaPostSchedUpdateEvTrigFnPtr;
extern FP1  * rmaSched0UpdateEvTrigFnPtr;
extern FP1  * rmaPostSchedRecoveryResetDbsFnPtr;
extern U  fGblDataOrTime0Prop;
extern UB   rmaEdgeStatusValArr[];
extern FP1  * propForceCbkSPostSchedCgFnPtr;
extern FP1  * propForceCbkMemoptSPostSchedCgFnPtr;
extern UB  * ptableGbl;
extern U  mhdl_delta_count;
extern int fZeroUser;


extern void *mempcpy(void* s1, void* s2, unsigned n);
extern UB* rmaEvalDelays(UB* pcode, scalar val);
extern UB* rmaEvalDelaysV(UB* pcode, vec32* pval);
extern void rmaPopTransEvent(UB* pcode);
extern void rmaSetupFuncArray(UP* ra);
extern void SinitHsimPats(void);
extern void VVrpDaicb(void* ip, U nIndex);
extern int SDaicb(void *ip, U nIndex);
extern void SDaicbForHsimNoFlagScalar(void* pDaiCb, unsigned char value);
extern void SDaicbForHsimNoFlagStrengthScalar(void* pDaiCb, unsigned char value);
extern void SDaicbForHsimNoFlag(void* pRmaDaiCg, unsigned char value);
extern void SDaicbForHsimNoFlag2(void* pRmaDaiCg, unsigned char value);
extern void SDaicbForHsimWithFlag(void* pRmaDaiCg, unsigned char value);
extern void SDaicbForHsimNoFlagFrcRel(void* pRmaDaiCg, unsigned char reason, int msb, int lsb, int ndx);
extern void SDaicbForHsimNoFlagFrcRel2(void* pRmaDaiCg, unsigned char reason, int msb, int lsb, int ndx);
extern void VcsHsimValueChangeCB(void* pRmaDaiCg, void* pValue, unsigned int valueFormat);
extern U isNonDesignNodeCallbackList(void* pRmaDaiCg);
extern void SDaicbForHsimCbkMemOptNoFlagScalar(void* pDaiCb, unsigned char value, unsigned char isStrength);
extern void SDaicbForHsimCbkMemOptWithFlagScalar(void* pDaiCb, unsigned char value, unsigned char isStrength);
extern void SDaicbForHsimCbkMemOptNoFlagScalar(void* pDaiCb, unsigned char value, unsigned char isStrength);
extern void SDaicbForHsimCbkMemOptWithFlagScalar(void* pDaiCb, unsigned char value, unsigned char isStrength);
extern void VVrpNonEventNonRegdScalarForHsimOptCbkMemopt(void* ip, U nIndex);
extern void SDaicbForHsimCbkMemOptNoFlagDynElabScalar(U* mem, unsigned char value, unsigned char isStrength);
extern void SDaicbForHsimCbkMemOptWithFlagDynElabScalar(U* mem, unsigned char value, unsigned char isStrength);
extern void SDaicbForHsimCbkMemOptNoFlagDynElabFrcRel(U* mem, unsigned char reason, int msb, int lsb, int ndx);
extern void SDaicbForHsimCbkMemOptNoFlagFrcRel(void* pDaiCb, unsigned char reason, int msb, int lsb, int ndx);
extern void hsimDispatchCbkMemOptForVcd(RP p, U val);
extern void* hsimGetCbkMemOptCallback(RP p);
extern void hsimDispatchCbkMemOptNoDynElabS(RP* p, U val, U isStrength);
extern void* hsimGetCbkPtrNoDynElab(RP p);
extern void hsimDispatchCbkMemOptDynElabS(U** pvcdarr, U** pcbkarr, U val, U isStrength);
extern void hsimDispatchCbkMemOptNoDynElabVector(RP* /*RmaDaiOptCg* */p, void* pval, U /*RmaValueType*/ vt, U cbits);
extern void copyAndPropRootCbkCgS(RmaRootCbkCg* pRootCbk, scalar val);
extern void copyAndPropRootCbkCgV(RmaRootCbkCg* rootCbk, vec32* pval);
extern void copyAndPropRootCbkCgW(RmaRootCbkCg* rootCbk, vec32* pval);
extern void copyAndPropRootCbkCgE(RmaRootCbkCg* rootCbk, scalar* pval);
extern void dumpRootVcdCg(RmaRootVcdCg* pRootVcd, scalar val);
extern void Wsvvar_callback_non_dynamic1(RP* ptr, int);
extern void rmaExecEvSyncList(RP plist);
extern void Wsvvar_callback_virt_intf(RP* ptr);
extern void Wsvvar_callback_hsim_var(RP* ptr);
extern void checkAndConvertVec32To2State(vec32* value, vec32* svalue, U cbits, U* pforcedBits);
extern unsigned int fGblDataOrTime0Prop;
extern void SchedSemiLerMP1(UB* pmps, U partId);
extern void SchedSemiLerMPO(UB* pmpso, U partId);
extern void rmaDummyPropagate(void);
extern void hsUpdateModpathTimeStamp(UB* pmps);
extern void doMpd32One(UB* pmps);
extern void SchedSemiLerMP(UB* ppulse, U partId);
extern void scheduleuna(UB *e, U t);
extern void scheduleuna_mp(EBLK *e, unsigned t);
extern void schedule(UB *e, U t);
extern void sched_hsopt(struct dummyq_struct * pQ, EBLK *e, U t);
extern void sched_millenium(struct dummyq_struct * pQ, void *e, U thigh, U t);
extern void schedule_1(EBLK *e);
extern void sched0(UB *e);
extern void sched0Raptor(UB *e);
extern void sched0lq(UB *e);
extern void sched0una(UB *e);
extern void sched0una_th(struct dummyq_struct *pq, UB *e);
extern void scheduleuna_mp_th(struct dummyq_struct *pq, EBLK *e, unsigned t);
extern void schedal(UB *e);
extern void sched0_th(struct dummyq_struct * pQ, UB *e);
extern void sched0_hsim_front_th(struct dummyq_struct * pQ, UB *e);
extern void sched0_hsim_frontlq_th(struct dummyq_struct * pQ, UB *e);
extern void sched0lq_th(struct dummyq_struct * pQ, UB *e);
extern void schedal_th(struct dummyq_struct * pQ, UB *e);
extern void scheduleuna_th(struct dummyq_struct * pQ, UB *e, U t);
extern void schedule_th(struct dummyq_struct * pQ, UB *e, U t);
extern void schedule_1_th(struct dummyq_struct * pQ, EBLK *peblk);
extern void SetupLER_th(struct dummyq_struct * pQ, UB *e);
extern void SchedSemiLer_th(struct dummyq_struct * pQ, EBLK *e);
extern void SchedSemiLerTXP_th(struct dummyq_struct * pQ, EBLK *e);
extern void SchedSemiLerTXPFreeVar_th(struct dummyq_struct * pQ, EBLK *e);
extern U getVcdFlags(UB *ip);
extern void VVrpNonEventNonRegdScalarForHsimOpt(void* ip, U nIndex);
extern void VVrpNonEventNonRegdScalarForHsimOpt2(void* ip, U nIndex);
extern void SchedSemiLerTBReactiveRegion(struct eblk* peblk);
extern void SchedSemiLerTBReactiveRegion_th(struct eblk* peblk, U partId);
extern void SchedSemiLerTr(UB* peblk, U partId);
extern void sched0sd_hsim(UB* peblk);
extern void appendNtcEvent(UB* phdr, scalar s, U schedDelta);
extern void hsimRegisterEdge(void* sm,  scalar s);
extern U pvcsGetPartId();
extern void HsimPVCSPartIdCheck(U instNo);
extern void debug_func(U partId, struct dummyq_struct* pQ, EBLK* EblkLastEventx); 
extern struct dummyq_struct* pvcsGetQ(U thid);
extern EBLK* pvcsGetLastEventEblk(U thid);
extern void insertTransEvent(RmaTransEventHdr* phdr, scalar s, scalar pv,	scalar resval, U schedDelta, int re, UB* predd, U fpdd);
extern void insertNtcEventRF(RmaTransEventHdr* phdr, scalar s, scalar pv, scalar resval, U schedDelta, U* delays);
extern U doTimingViolation(RmaTimeStamp ts,RP* pdata, U fskew, U limit, U floaded, U fcondopt);
extern void sched_gate_hsim(EBLK* peblk, unsigned t, RP* offset);
extern int getCurSchedRegion();
extern FP getRoutPtr(RP, U);
extern U rmaChangeCheckAndUpdateE(scalar* pvalDst, scalar* pvalSrc, U cbits);
extern void rmaUpdateE(scalar* pvalDst, scalar* pvalSrc, U cbits);
extern U rmaChangeCheckAndUpdateEFromW(scalar* pvalDst, vec32* pvalSrc, U cbits);
extern void rmaLhsPartSelUpdateE(scalar* pvalDst, scalar* pvalSrc, U index, U width);
extern void rmaUpdateWithForceSelectorE(scalar* pvalDst, scalar* pvalSrc, U cbits, U* pforceSelector);
extern void rmaUpdateWFromE(vec32* pvalDst, scalar* pvalSrc, U cbits);
extern U rmaLhsPartSelWithChangeCheckE(scalar* pvalDst, scalar* pvalSrc, U index, U width);
extern void rmaLhsPartSelWFromE(vec32* pvalDst, scalar* pvalSrc, U index,U width);
extern U rmaChangeCheckAndUpdateW(vec32* pvalDst, vec32* pvalSrc, U cbits);
extern void rmaUpdateW(vec32* pvalDst, vec32* pvalSrc, U cbits);
extern void rmaUpdateEFromW(scalar* pvalDst, vec32* pvalSrc, U cbits);
extern U rmaLhsPartSelWithChangeCheckW(vec32* pvalDst, vec32* pvalSrc, U index,U width);
extern void rmaLhsPartSelEFromW(scalar* pvalDst, vec32* pvalSrc, U index,U width);
extern U rmaLhsPartSelWithChangeCheckEFromW(scalar* pvalDst, vec32* pvalSrc, U index,U width);
extern void rmaLhsPartSelUpdateW(vec32* pvalDst, vec32* pvalSrc, U index, U width);
extern void rmaEvalWunionW(vec32* dst, vec32* src, U cbits, U count);
extern void rmaEvalWorW(vec32* dst, vec32* src, U cbits, U count);
extern void rmaEvalWandW(vec32* dst, vec32* src, U cbits, U count);
extern void rmaEvalUnionE(scalar* dst, scalar* src, U cbits, U count, RP ptable);
typedef U RmaCgFunctionType;
extern RmaIbfPcode* rmaEvalPartSelectsW(vec32* pvec32, U startIndex, U onWidth, U offWidth, U count, RmaIbfPcode* pibfPcode, U fnonRootForce);
extern RmaIbfPcode* rmaEvalPartSelectsEToE(scalar* pv, U startIndex, U onWidth, U offWidth, U count, RmaIbfPcode* pibfPcode, U fnonRootForce, UB* pevcdStatus);
extern RmaIbfPcode* rmaEvalPartSelectsEToW(scalar* pv, U startIndex, U onWidth, U offWidth, U count, RmaIbfPcode* pibfPcode, U fnonRootForce);
extern U rmaEvalBitPosEdgeW(vec32* pvalCurr, vec32* pvalPrev, U cbits, U* pedges);
extern U rmaEvalBitNegEdgeW(vec32* pvalCurr, vec32* pvalPrev, U cbits, U* pedges);
extern U rmaEvalBitChangeW(vec32* pvalCurr, vec32* pvalPrev, U cbits, U* pedges);
extern U rmaEvalBitPosEdgeW(vec32* pvalCurr, vec32* pvalPrev, U cbits, U* pedges);
extern U rmaEvalBitNegEdgeW(vec32* pvalCurr, vec32* pvalPrev, U cbits, U* pedges);
extern U rmaEvalBitChangeW(vec32* pvalCurr, vec32* pvalPrev, U cbits, U* pedges);
extern U VcsForceVecVCg(UB* pcode, UB* pval, UB* pvDst, UB* pvCur, U fullcbits, U ibeginSrc, U ibeginDst, U width, U/*RmaValueConvType*/ convtype, U/*RmaForceType*/ frcType, UB* prhs, UB* prhsDst, U frhs, U* pforcedbits, U fisRoot);
extern U VcsReleaseVecVCg(UB* pcode, UB* pvDst, U fullcbits, U ibeginDst, U width, UB* prhsDst, U frhs, U* pforcedbits, U fisRoot);
extern U VcsForceVecWCg(UB* pcode, UB* pval, UB* pvDst, UB* pvCur, U fullcbits, U ibeginSrc, U ibeginDst, U width, U/*RmaValueConvType*/ convtype, U /*RmaForceType*/ frcType, UB* prhs, UB* prhsDst, U frhs, U* pforcedbits, U fisRoot);
extern U VcsReleaseVecWCg(UB* pcode, UB* pvDst, U fullcbits, U ibeginDst, U width, UB* prhsDst, U frhs, U* pforcedbits, U fisRoot);
extern U VcsForceVecECg(UB* pcode, UB* pval, UB* pvDst, UB* pvCur, U fullcbits, U ibeginSrc, U ibeginDst, U width, U /*RmaValueConvType*/ convtype, U /*RmaForceType*/ frcType,UB* prhs, UB* prhsDst, U frhs, U* pforcedbits, U fisRoot);
extern U VcsReleaseVecCg(UB* pcode, UB* pvDst, U ibeginDst, U width, U /*RmaValueType*/ type,U fisRoot, UB* prhsDst, U frhs, U* pforcedbits);
extern U VcsDriveBitsAndDoChangeCheckV(vec32* pvSel, vec32* pvCur, U fullcbits, U* pforcedbits, U isRoot);
extern U VcsDriveBitsAndDoChangeCheckW(vec32* pvSel, vec32* pvCur, U fullcbits, U* pforcedbits, U isRoot);
extern U VcsDriveBitsAndDoChangeCheckE(scalar* pvSel, scalar* pvCur, U fullcbits, U* pforcedbits, U isRoot);
extern void cgvecDebug_Eblk(UB* pcode);
extern U rmaCmpW(vec32* pvalDst, vec32* pvalSrc, U index, U width);
extern void copyVec32ArrMask(vec32* pv1, vec32* pv2, U len, U* mask);
extern void* memcpy(void*, const void*, size_t);
extern int memcmp(const void*, const void*, size_t);
extern UB* rmaProcessScanSwitches(UB* pcode, scalar val);
extern UB* rmaProcessScanChainOptSeqPrims(UB* pcode, scalar val);
extern void schedResetRecoveryDbs(U cedges, EBLK* peblkFirst);
extern UB* rmaEvalUnaryOpV(UB* pcode, vec32* pval);
extern UB* rmaEvalBinaryOpV(UB* pcode, vec32* pval);
extern UB* rmaEvalBinaryOpVOneFanoutCount(UB* pcode, vec32* pval);
extern UB* rmaEvalBinaryOpVLargeFanoutCount(UB* pcode, vec32* pval);
extern UB* rmaEvalAndOpVOneFanoutCount(UB* pcode, vec32* value);
extern UB* rmaEvalAndOpVLargeFanoutCount(UB* pcode, vec32* value);
extern UB* rmaEvalAndOpV(UB* pcode, vec32* value);
extern UB* rmaEvalOrOpVOneFanoutCount(UB* pcode, vec32* value);
extern UB* rmaEvalOrOpVLargeFanoutCount(UB* pcode, vec32* value);
extern UB* rmaEvalOrOpV(UB* pcode, vec32* value);
extern UB* rmaEvalTernaryOpV(UB* pcode, vec32* pval);
extern UB* rmaEvalUnaryOpW(UB* pcode, vec32* pval);
extern UB* rmaEvalBinaryOpW(UB* pcode, vec32* pval);
extern UB* rmaEvalTernaryOpW(UB* pcode, vec32* pval);
extern UB* rmaEvalUnaryOpE(UB* pcode, scalar* pv);
extern UB* rmaEvalBinaryOpE(UB* pcode, scalar* pv);
extern UB* rmaEvalTernaryOpE(UB* pcode, scalar* pv);
extern UB* rmaEvalTernaryOpS(UB* pcode, scalar val);
extern scalar rmaGetScalarFromWCg(vec32* pval, U index);
extern void rmaSetScalarInWCg(vec32* pval, U index, scalar s);
extern void rmaCountRaptorBits(void* pval, void* pvalPrev, U cbits, U vt);
extern void setHsimFunc(void* ip);
extern void unsetHsimFunc(void* ip);
extern UB* getEvcdStatusByFlagsE(scalar* pscalar, UB* pevcdTBDriverFlags, U cdrivers, UB* table, U cbits);
extern UB* getEvcdStatusByFlagsV(vec32* pvec32, UB* pevcdTBDriverFlags, U cdrivers, UB* table, U cbits);
extern UB* getEvcdStatusByFlagsS(scalar* pscalar, UB* pevcdTBDriverFlags, U cdrivers, UB* table);
extern UB* getSingleDrvEvcdStatusS(UB value, U fTBDriver);
extern UB* getSingleDrvEvcdStatusE(scalar* pscalars, U fTBDriver, U cbits);
extern UB* getSingleDrvEvcdStatusV(scalar* pscalars, U fTBDriver, U cbits);
extern UB* getEvcdStatusByDrvEvcdStatus(UB* pdrvevcdStatus, U cdrivers, UB* table, U cbits);
extern void evcdCallback(UP pcode, U cbits);
extern UB* getSavedEvcdStatus(void);
extern void saveEvcdStatus(UB*);
extern void mhdlMarkExport(void*, U);
extern void CallMhdlCoercedPort(void*, UP);


#ifdef __cplusplus
extern "C" {
#endif
void  schedNewEvent(struct dummyq_struct * I748, EBLK  * I749, U  I556);
U   bsfFun(U  I760);
#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
  }
#endif
#endif /*__DO_RMAHDR_*/

