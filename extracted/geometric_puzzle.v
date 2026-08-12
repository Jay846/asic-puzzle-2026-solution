// Auto-generated structural Verilog netlist from GDS geometric extraction
// Source GDS: puzzle.gds

module puzzle (
  I,
  O[0],
  O[1],
  O[2],
  O[3],
  O[4],
  O[5],
  O[6],
  O[7],
  clk,
  enable,
  rst_n,
  success
);

  input I;
  input O[0];
  input O[1];
  input O[2];
  input O[3];
  input O[4];
  input O[5];
  input O[6];
  input O[7];
  input clk;
  input enable;
  input rst_n;
  output success;

  wire net_n0;
  wire net_n1;
  wire net_n100;
  wire net_n101;
  wire net_n102;
  wire net_n103;
  wire net_n104;
  wire net_n105;
  wire net_n106;
  wire net_n107;
  wire net_n108;
  wire net_n109;
  wire net_n11;
  wire net_n110;
  wire net_n113;
  wire net_n114;
  wire net_n115;
  wire net_n116;
  wire net_n117;
  wire net_n118;
  wire net_n119;
  wire net_n12;
  wire net_n120;
  wire net_n121;
  wire net_n123;
  wire net_n124;
  wire net_n125;
  wire net_n126;
  wire net_n127;
  wire net_n128;
  wire net_n129;
  wire net_n13;
  wire net_n130;
  wire net_n131;
  wire net_n132;
  wire net_n133;
  wire net_n134;
  wire net_n135;
  wire net_n136;
  wire net_n137;
  wire net_n138;
  wire net_n139;
  wire net_n14;
  wire net_n140;
  wire net_n141;
  wire net_n142;
  wire net_n143;
  wire net_n144;
  wire net_n145;
  wire net_n146;
  wire net_n147;
  wire net_n148;
  wire net_n149;
  wire net_n15;
  wire net_n150;
  wire net_n151;
  wire net_n152;
  wire net_n153;
  wire net_n154;
  wire net_n156;
  wire net_n157;
  wire net_n158;
  wire net_n159;
  wire net_n16;
  wire net_n160;
  wire net_n161;
  wire net_n162;
  wire net_n163;
  wire net_n164;
  wire net_n165;
  wire net_n166;
  wire net_n167;
  wire net_n168;
  wire net_n169;
  wire net_n17;
  wire net_n170;
  wire net_n171;
  wire net_n172;
  wire net_n173;
  wire net_n174;
  wire net_n175;
  wire net_n176;
  wire net_n177;
  wire net_n178;
  wire net_n179;
  wire net_n18;
  wire net_n180;
  wire net_n181;
  wire net_n182;
  wire net_n183;
  wire net_n184;
  wire net_n185;
  wire net_n186;
  wire net_n187;
  wire net_n188;
  wire net_n189;
  wire net_n19;
  wire net_n190;
  wire net_n191;
  wire net_n192;
  wire net_n193;
  wire net_n194;
  wire net_n195;
  wire net_n196;
  wire net_n197;
  wire net_n198;
  wire net_n199;
  wire net_n2;
  wire net_n20;
  wire net_n200;
  wire net_n201;
  wire net_n202;
  wire net_n203;
  wire net_n204;
  wire net_n205;
  wire net_n206;
  wire net_n207;
  wire net_n208;
  wire net_n209;
  wire net_n21;
  wire net_n210;
  wire net_n211;
  wire net_n212;
  wire net_n213;
  wire net_n214;
  wire net_n215;
  wire net_n216;
  wire net_n217;
  wire net_n218;
  wire net_n219;
  wire net_n22;
  wire net_n220;
  wire net_n221;
  wire net_n222;
  wire net_n223;
  wire net_n224;
  wire net_n225;
  wire net_n226;
  wire net_n227;
  wire net_n228;
  wire net_n229;
  wire net_n23;
  wire net_n230;
  wire net_n231;
  wire net_n232;
  wire net_n233;
  wire net_n234;
  wire net_n235;
  wire net_n236;
  wire net_n237;
  wire net_n238;
  wire net_n239;
  wire net_n24;
  wire net_n240;
  wire net_n241;
  wire net_n242;
  wire net_n243;
  wire net_n244;
  wire net_n245;
  wire net_n246;
  wire net_n247;
  wire net_n248;
  wire net_n249;
  wire net_n25;
  wire net_n250;
  wire net_n251;
  wire net_n252;
  wire net_n253;
  wire net_n254;
  wire net_n255;
  wire net_n256;
  wire net_n257;
  wire net_n258;
  wire net_n259;
  wire net_n26;
  wire net_n260;
  wire net_n261;
  wire net_n262;
  wire net_n263;
  wire net_n264;
  wire net_n266;
  wire net_n267;
  wire net_n268;
  wire net_n269;
  wire net_n27;
  wire net_n270;
  wire net_n271;
  wire net_n272;
  wire net_n273;
  wire net_n274;
  wire net_n275;
  wire net_n276;
  wire net_n277;
  wire net_n278;
  wire net_n279;
  wire net_n28;
  wire net_n280;
  wire net_n281;
  wire net_n282;
  wire net_n283;
  wire net_n284;
  wire net_n285;
  wire net_n286;
  wire net_n287;
  wire net_n288;
  wire net_n289;
  wire net_n29;
  wire net_n290;
  wire net_n291;
  wire net_n292;
  wire net_n293;
  wire net_n294;
  wire net_n295;
  wire net_n296;
  wire net_n297;
  wire net_n298;
  wire net_n299;
  wire net_n3;
  wire net_n30;
  wire net_n300;
  wire net_n301;
  wire net_n302;
  wire net_n303;
  wire net_n304;
  wire net_n305;
  wire net_n306;
  wire net_n307;
  wire net_n308;
  wire net_n309;
  wire net_n31;
  wire net_n310;
  wire net_n311;
  wire net_n312;
  wire net_n313;
  wire net_n314;
  wire net_n315;
  wire net_n316;
  wire net_n317;
  wire net_n318;
  wire net_n319;
  wire net_n32;
  wire net_n320;
  wire net_n321;
  wire net_n322;
  wire net_n323;
  wire net_n324;
  wire net_n325;
  wire net_n326;
  wire net_n327;
  wire net_n328;
  wire net_n329;
  wire net_n33;
  wire net_n330;
  wire net_n331;
  wire net_n332;
  wire net_n333;
  wire net_n334;
  wire net_n335;
  wire net_n336;
  wire net_n337;
  wire net_n338;
  wire net_n339;
  wire net_n34;
  wire net_n340;
  wire net_n341;
  wire net_n342;
  wire net_n343;
  wire net_n344;
  wire net_n345;
  wire net_n346;
  wire net_n347;
  wire net_n348;
  wire net_n349;
  wire net_n35;
  wire net_n350;
  wire net_n351;
  wire net_n352;
  wire net_n353;
  wire net_n354;
  wire net_n355;
  wire net_n356;
  wire net_n357;
  wire net_n358;
  wire net_n359;
  wire net_n36;
  wire net_n360;
  wire net_n361;
  wire net_n362;
  wire net_n363;
  wire net_n364;
  wire net_n365;
  wire net_n366;
  wire net_n367;
  wire net_n368;
  wire net_n369;
  wire net_n37;
  wire net_n370;
  wire net_n371;
  wire net_n372;
  wire net_n373;
  wire net_n374;
  wire net_n375;
  wire net_n376;
  wire net_n377;
  wire net_n378;
  wire net_n379;
  wire net_n38;
  wire net_n380;
  wire net_n381;
  wire net_n382;
  wire net_n384;
  wire net_n385;
  wire net_n386;
  wire net_n387;
  wire net_n388;
  wire net_n389;
  wire net_n39;
  wire net_n390;
  wire net_n391;
  wire net_n392;
  wire net_n393;
  wire net_n394;
  wire net_n395;
  wire net_n396;
  wire net_n397;
  wire net_n398;
  wire net_n399;
  wire net_n4;
  wire net_n40;
  wire net_n400;
  wire net_n401;
  wire net_n402;
  wire net_n403;
  wire net_n404;
  wire net_n405;
  wire net_n406;
  wire net_n407;
  wire net_n408;
  wire net_n409;
  wire net_n41;
  wire net_n410;
  wire net_n411;
  wire net_n412;
  wire net_n413;
  wire net_n414;
  wire net_n415;
  wire net_n416;
  wire net_n417;
  wire net_n418;
  wire net_n419;
  wire net_n42;
  wire net_n420;
  wire net_n421;
  wire net_n422;
  wire net_n423;
  wire net_n424;
  wire net_n425;
  wire net_n426;
  wire net_n427;
  wire net_n428;
  wire net_n429;
  wire net_n43;
  wire net_n430;
  wire net_n431;
  wire net_n432;
  wire net_n433;
  wire net_n434;
  wire net_n435;
  wire net_n436;
  wire net_n437;
  wire net_n438;
  wire net_n439;
  wire net_n44;
  wire net_n440;
  wire net_n441;
  wire net_n442;
  wire net_n443;
  wire net_n444;
  wire net_n445;
  wire net_n446;
  wire net_n447;
  wire net_n448;
  wire net_n449;
  wire net_n45;
  wire net_n450;
  wire net_n451;
  wire net_n452;
  wire net_n453;
  wire net_n454;
  wire net_n455;
  wire net_n456;
  wire net_n457;
  wire net_n458;
  wire net_n459;
  wire net_n46;
  wire net_n460;
  wire net_n461;
  wire net_n462;
  wire net_n463;
  wire net_n464;
  wire net_n465;
  wire net_n466;
  wire net_n467;
  wire net_n468;
  wire net_n469;
  wire net_n47;
  wire net_n470;
  wire net_n471;
  wire net_n472;
  wire net_n473;
  wire net_n474;
  wire net_n475;
  wire net_n476;
  wire net_n477;
  wire net_n478;
  wire net_n479;
  wire net_n48;
  wire net_n480;
  wire net_n481;
  wire net_n482;
  wire net_n483;
  wire net_n484;
  wire net_n485;
  wire net_n486;
  wire net_n487;
  wire net_n488;
  wire net_n489;
  wire net_n49;
  wire net_n490;
  wire net_n491;
  wire net_n492;
  wire net_n493;
  wire net_n494;
  wire net_n495;
  wire net_n496;
  wire net_n497;
  wire net_n498;
  wire net_n499;
  wire net_n5;
  wire net_n50;
  wire net_n500;
  wire net_n501;
  wire net_n502;
  wire net_n503;
  wire net_n504;
  wire net_n505;
  wire net_n506;
  wire net_n507;
  wire net_n508;
  wire net_n509;
  wire net_n51;
  wire net_n510;
  wire net_n511;
  wire net_n512;
  wire net_n513;
  wire net_n514;
  wire net_n515;
  wire net_n516;
  wire net_n517;
  wire net_n518;
  wire net_n519;
  wire net_n52;
  wire net_n520;
  wire net_n521;
  wire net_n522;
  wire net_n523;
  wire net_n524;
  wire net_n525;
  wire net_n526;
  wire net_n527;
  wire net_n528;
  wire net_n529;
  wire net_n53;
  wire net_n530;
  wire net_n531;
  wire net_n532;
  wire net_n533;
  wire net_n534;
  wire net_n535;
  wire net_n536;
  wire net_n537;
  wire net_n538;
  wire net_n539;
  wire net_n54;
  wire net_n540;
  wire net_n541;
  wire net_n542;
  wire net_n543;
  wire net_n544;
  wire net_n545;
  wire net_n546;
  wire net_n547;
  wire net_n548;
  wire net_n549;
  wire net_n55;
  wire net_n550;
  wire net_n551;
  wire net_n552;
  wire net_n553;
  wire net_n554;
  wire net_n555;
  wire net_n556;
  wire net_n557;
  wire net_n558;
  wire net_n559;
  wire net_n56;
  wire net_n560;
  wire net_n561;
  wire net_n562;
  wire net_n563;
  wire net_n564;
  wire net_n565;
  wire net_n566;
  wire net_n567;
  wire net_n568;
  wire net_n569;
  wire net_n57;
  wire net_n570;
  wire net_n571;
  wire net_n572;
  wire net_n573;
  wire net_n574;
  wire net_n575;
  wire net_n576;
  wire net_n577;
  wire net_n578;
  wire net_n579;
  wire net_n58;
  wire net_n580;
  wire net_n581;
  wire net_n582;
  wire net_n583;
  wire net_n584;
  wire net_n585;
  wire net_n586;
  wire net_n587;
  wire net_n588;
  wire net_n589;
  wire net_n59;
  wire net_n590;
  wire net_n591;
  wire net_n592;
  wire net_n593;
  wire net_n594;
  wire net_n595;
  wire net_n596;
  wire net_n597;
  wire net_n598;
  wire net_n599;
  wire net_n6;
  wire net_n60;
  wire net_n600;
  wire net_n601;
  wire net_n602;
  wire net_n603;
  wire net_n604;
  wire net_n605;
  wire net_n606;
  wire net_n607;
  wire net_n608;
  wire net_n609;
  wire net_n61;
  wire net_n610;
  wire net_n611;
  wire net_n612;
  wire net_n613;
  wire net_n614;
  wire net_n615;
  wire net_n616;
  wire net_n617;
  wire net_n618;
  wire net_n619;
  wire net_n62;
  wire net_n620;
  wire net_n621;
  wire net_n622;
  wire net_n623;
  wire net_n624;
  wire net_n625;
  wire net_n626;
  wire net_n627;
  wire net_n628;
  wire net_n629;
  wire net_n63;
  wire net_n630;
  wire net_n631;
  wire net_n632;
  wire net_n633;
  wire net_n634;
  wire net_n635;
  wire net_n636;
  wire net_n637;
  wire net_n638;
  wire net_n639;
  wire net_n640;
  wire net_n641;
  wire net_n642;
  wire net_n643;
  wire net_n644;
  wire net_n645;
  wire net_n646;
  wire net_n647;
  wire net_n648;
  wire net_n649;
  wire net_n65;
  wire net_n650;
  wire net_n651;
  wire net_n652;
  wire net_n653;
  wire net_n654;
  wire net_n655;
  wire net_n656;
  wire net_n657;
  wire net_n658;
  wire net_n659;
  wire net_n660;
  wire net_n661;
  wire net_n662;
  wire net_n663;
  wire net_n664;
  wire net_n665;
  wire net_n666;
  wire net_n667;
  wire net_n668;
  wire net_n669;
  wire net_n67;
  wire net_n670;
  wire net_n671;
  wire net_n672;
  wire net_n673;
  wire net_n674;
  wire net_n675;
  wire net_n676;
  wire net_n677;
  wire net_n678;
  wire net_n679;
  wire net_n68;
  wire net_n680;
  wire net_n681;
  wire net_n682;
  wire net_n683;
  wire net_n684;
  wire net_n685;
  wire net_n686;
  wire net_n687;
  wire net_n688;
  wire net_n689;
  wire net_n69;
  wire net_n690;
  wire net_n691;
  wire net_n692;
  wire net_n693;
  wire net_n694;
  wire net_n695;
  wire net_n696;
  wire net_n697;
  wire net_n698;
  wire net_n699;
  wire net_n7;
  wire net_n70;
  wire net_n700;
  wire net_n701;
  wire net_n702;
  wire net_n703;
  wire net_n704;
  wire net_n705;
  wire net_n706;
  wire net_n707;
  wire net_n708;
  wire net_n709;
  wire net_n71;
  wire net_n710;
  wire net_n711;
  wire net_n712;
  wire net_n713;
  wire net_n714;
  wire net_n715;
  wire net_n716;
  wire net_n717;
  wire net_n72;
  wire net_n73;
  wire net_n75;
  wire net_n76;
  wire net_n78;
  wire net_n8;
  wire net_n80;
  wire net_n82;
  wire net_n83;
  wire net_n84;
  wire net_n85;
  wire net_n86;
  wire net_n87;
  wire net_n88;
  wire net_n89;
  wire net_n9;
  wire net_n90;
  wire net_n91;
  wire net_n92;
  wire net_n93;
  wire net_n94;
  wire net_n95;
  wire net_n96;
  wire net_n97;
  wire net_n98;
  wire net_n99;

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (97.52, 70.72)
  sky130_fd_sc_hd__clkbuf_4 u51 (
    .A(net_n0),
    .X()
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (102.58, 76.16)
  sky130_fd_sc_hd__clkbuf_8 u52 (
    .A(net_n1),
    .X(net_n0)
  );

  // Cell: sky130_fd_sc_hd__a211o_2 at (174.8, 119.68)
  sky130_fd_sc_hd__a211o_2 u63 (
    .A1(net_n2),
    .A2(net_n3),
    .B1(net_n4),
    .C1(net_n5),
    .X(net_n6)
  );

  // Cell: sky130_fd_sc_hd__a211oi_2 at (170.20000000000002, 119.68)
  sky130_fd_sc_hd__a211oi_2 u67 (
    .A1(net_n7),
    .A2(net_n2),
    .B1(net_n8),
    .C1(net_n9),
    .Y(net_n3)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (119.14, 119.68)
  sky130_fd_sc_hd__a31o_2 u72 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n12),
    .B1(net_n13),
    .X(net_n14)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (119.14, 119.68)
  sky130_fd_sc_hd__o21a_2 u75 (
    .A1(net_n15),
    .A2(net_n16),
    .B1(net_n14),
    .X(net_n17)
  );

  // Cell: INTERNAL_7 at (97.93, -52.72)
  INTERNAL_7 u77 (

  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (146.28, 223.04)
  sky130_fd_sc_hd__clkbuf_8 u103 (
    .A(net_n1),
    .X(net_n18)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (151.8, 184.96)
  sky130_fd_sc_hd__or2_2 u142 (
    .A(net_n19),
    .B(net_n20),
    .X(net_n21)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (114.08, 201.28)
  sky130_fd_sc_hd__or4_2 u144 (
    .A(net_n22),
    .B(net_n23),
    .C(net_n24),
    .D(net_n25),
    .X(net_n26)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (120.52, 201.28)
  sky130_fd_sc_hd__a21o_2 u145 (
    .A1(net_n27),
    .A2(net_n28),
    .B1(net_n22),
    .X(net_n29)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (113.16, 201.28)
  sky130_fd_sc_hd__o21a_2 u147 (
    .A1(net_n27),
    .A2(net_n28),
    .B1(net_n26),
    .X(net_n30)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (151.34, 179.52)
  sky130_fd_sc_hd__clkbuf_8 u159 (
    .A(net_n1),
    .X(net_n31)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (170.20000000000002, 201.28)
  sky130_fd_sc_hd__xor2_2 u169 (
    .A(net_n32),
    .B(net_n33),
    .X(net_n34)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (181.24, 201.28)
  sky130_fd_sc_hd__a21oi_2 u171 (
    .A1(net_n35),
    .A2(net_n36),
    .B1(net_n37),
    .Y(net_n38)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (166.52, 201.28)
  sky130_fd_sc_hd__nand2_2 u173 (
    .A(net_n19),
    .B(net_n20),
    .Y(net_n39)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (170.20000000000002, 201.28)
  sky130_fd_sc_hd__a22o_2 u174 (
    .A1(net_n7),
    .A2(net_n40),
    .B1(net_n41),
    .B2(net_n8),
    .X(net_n42)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (174.8, 261.12)
  sky130_fd_sc_hd__and2_2 u198 (
    .A(net_n43),
    .B(net_n44),
    .X(net_n45)
  );

  // Cell: sky130_fd_sc_hd__a21boi_2 at (175.26, 255.68)
  sky130_fd_sc_hd__a21boi_2 u199 (
    .A1(net_n7),
    .A2(net_n44),
    .B1_N(net_n43),
    .Y(net_n46)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (164.22, 244.8)
  sky130_fd_sc_hd__inv_2 u200 (
    .A(net_n47),
    .Y(net_n48)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (168.82, 244.8)
  sky130_fd_sc_hd__xnor2_2 u202 (
    .A(net_n2),
    .B(net_n7),
    .Y(net_n49)
  );

  // Cell: sky130_fd_sc_hd__a211oi_2 at (164.22, 244.8)
  sky130_fd_sc_hd__a211oi_2 u203 (
    .A1(net_n50),
    .A2(net_n51),
    .B1(net_n52),
    .C1(net_n53),
    .Y(net_n54)
  );

  // Cell: sky130_fd_sc_hd__a21boi_2 at (175.26, 239.36)
  sky130_fd_sc_hd__a21boi_2 u215 (
    .A1(net_n55),
    .A2(net_n56),
    .B1_N(net_n43),
    .Y(net_n57)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (175.26, 223.04)
  sky130_fd_sc_hd__o31a_2 u217 (
    .A1(net_n58),
    .A2(net_n59),
    .A3(net_n60),
    .B1(net_n61),
    .X(net_n62)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (178.02, 244.8)
  sky130_fd_sc_hd__and3_2 u222 (
    .A(net_n43),
    .B(net_n63),
    .C(net_n44),
    .X(O[0])
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (180.78, 244.8)
  sky130_fd_sc_hd__and3_2 u223 (
    .A(net_n43),
    .B(net_n65),
    .C(net_n44),
    .X(O[2])
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (173.88, 228.48000000000002)
  sky130_fd_sc_hd__a22o_2 u225 (
    .A1(net_n67),
    .A2(net_n68),
    .B1(net_n69),
    .B2(net_n70),
    .X(net_n71)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (167.9, 282.88)
  sky130_fd_sc_hd__dfrtp_2 u226 (
    .CLK(net_n72),
    .D(net_n73),
    .Q(net_n43),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (167.9, 272.0)
  sky130_fd_sc_hd__dfrtp_2 u227 (
    .CLK(net_n72),
    .D(net_n75),
    .Q(net_n51),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (172.04, 282.88)
  sky130_fd_sc_hd__dfrtp_2 u228 (
    .CLK(net_n72),
    .D(net_n76),
    .Q(success),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (174.8, 244.8)
  sky130_fd_sc_hd__and3_2 u229 (
    .A(net_n43),
    .B(net_n78),
    .C(net_n44),
    .X(O[7])
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (173.88, 239.36)
  sky130_fd_sc_hd__and3_2 u230 (
    .A(net_n43),
    .B(net_n80),
    .C(net_n44),
    .X(O[5])
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (177.56, 228.48000000000002)
  sky130_fd_sc_hd__o31a_2 u231 (
    .A1(net_n58),
    .A2(net_n71),
    .A3(net_n82),
    .B1(net_n83),
    .X(net_n63)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (172.5, 223.04)
  sky130_fd_sc_hd__o31a_2 u232 (
    .A1(net_n58),
    .A2(net_n84),
    .A3(net_n85),
    .B1(net_n86),
    .X(net_n80)
  );

  // Cell: sky130_fd_sc_hd__a32o_2 at (177.1, 277.44)
  sky130_fd_sc_hd__a32o_2 u233 (
    .A1(net_n87),
    .A2(net_n88),
    .A3(net_n89),
    .B1(success),
    .B2(net_n90),
    .X(net_n76)
  );

  // Cell: sky130_fd_sc_hd__dfxtp_2 at (169.74, 250.24)
  sky130_fd_sc_hd__dfxtp_2 u234 (
    .CLK(net_n18),
    .D(net_n91),
    .Q(net_n8)
  );

  // Cell: sky130_fd_sc_hd__dfxtp_2 at (175.72, 250.24)
  sky130_fd_sc_hd__dfxtp_2 u235 (
    .CLK(net_n72),
    .D(net_n46),
    .Q(net_n7)
  );

  // Cell: sky130_fd_sc_hd__dfxtp_2 at (176.64000000000001, 255.68)
  sky130_fd_sc_hd__dfxtp_2 u236 (
    .CLK(net_n72),
    .D(net_n92),
    .Q(net_n2)
  );

  // Cell: sky130_fd_sc_hd__dfxtp_2 at (168.82, 244.8)
  sky130_fd_sc_hd__dfxtp_2 u237 (
    .CLK(net_n18),
    .D(net_n57),
    .Q(net_n9)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (172.5, 206.72)
  sky130_fd_sc_hd__a22o_2 u238 (
    .A1(net_n93),
    .A2(net_n94),
    .B1(net_n95),
    .B2(net_n96),
    .X(net_n97)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (173.42000000000002, 212.16)
  sky130_fd_sc_hd__a22o_2 u239 (
    .A1(net_n34),
    .A2(net_n94),
    .B1(net_n95),
    .B2(net_n98),
    .X(net_n85)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (177.1, 206.72)
  sky130_fd_sc_hd__xor2_2 u240 (
    .A(net_n99),
    .B(net_n100),
    .X(net_n101)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (174.34, 212.16)
  sky130_fd_sc_hd__a22o_2 u241 (
    .A1(net_n102),
    .A2(net_n94),
    .B1(net_n95),
    .B2(net_n103),
    .X(net_n104)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (172.5, 217.6)
  sky130_fd_sc_hd__a22o_2 u242 (
    .A1(net_n105),
    .A2(net_n94),
    .B1(net_n95),
    .B2(net_n106),
    .X(net_n60)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (172.5, 217.6)
  sky130_fd_sc_hd__o31a_2 u246 (
    .A1(net_n58),
    .A2(net_n107),
    .A3(net_n104),
    .B1(net_n108),
    .X(net_n65)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (174.34, 277.44)
  sky130_fd_sc_hd__inv_2 u247 (
    .A(net_n87),
    .Y(net_n109)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (180.32, 250.24)
  sky130_fd_sc_hd__and3_2 u305 (
    .A(net_n43),
    .B(net_n110),
    .C(net_n44),
    .X(O[4])
  );

  // Cell: sky130_fd_sc_hd__a21boi_2 at (182.16, 250.24)
  sky130_fd_sc_hd__a21boi_2 u341 (
    .A1(net_n44),
    .A2(net_n49),
    .B1_N(net_n43),
    .Y(net_n92)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (176.64000000000001, 255.68)
  sky130_fd_sc_hd__and3_2 u350 (
    .A(net_n43),
    .B(net_n62),
    .C(net_n44),
    .X(O[3])
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (180.32, 250.24)
  sky130_fd_sc_hd__nand4_2 u353 (
    .A(net_n9),
    .B(net_n8),
    .C(net_n2),
    .D(net_n7),
    .Y(net_n44)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (163.3, 250.24)
  sky130_fd_sc_hd__inv_2 u385 (
    .A(success),
    .Y(net_n50)
  );

  // Cell: sky130_fd_sc_hd__o21ba_2 at (160.54, 250.24)
  sky130_fd_sc_hd__o21ba_2 u387 (
    .A1(success),
    .A2(net_n51),
    .B1_N(net_n52),
    .X(net_n113)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (166.52, 282.88)
  sky130_fd_sc_hd__or2_2 u395 (
    .A(net_n114),
    .B(net_n43),
    .X(net_n73)
  );

  // Cell: sky130_fd_sc_hd__a32o_2 at (170.20000000000002, 277.44)
  sky130_fd_sc_hd__a32o_2 u399 (
    .A1(net_n109),
    .A2(net_n88),
    .A3(net_n89),
    .B1(net_n51),
    .B2(net_n90),
    .X(net_n75)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (172.04, 282.88)
  sky130_fd_sc_hd__nand2b_2 u406 (
    .A_N(net_n43),
    .B(net_n114),
    .Y(net_n90)
  );

  // Cell: sky130_fd_sc_hd__and4b_2 at (168.82, 277.44)
  sky130_fd_sc_hd__and4b_2 u450 (
    .A_N(net_n43),
    .B(net_n114),
    .C(net_n115),
    .D(net_n116),
    .X(net_n89)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (171.12, 272.0)
  sky130_fd_sc_hd__and2_2 u460 (
    .A(net_n117),
    .B(net_n118),
    .X(net_n88)
  );

  // Cell: sky130_fd_sc_hd__nand3_2 at (168.82, 255.68)
  sky130_fd_sc_hd__nand3_2 u494 (
    .A(net_n8),
    .B(net_n2),
    .C(net_n7),
    .Y(net_n56)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (165.14000000000001, 255.68)
  sky130_fd_sc_hd__nor2_2 u498 (
    .A(net_n53),
    .B(net_n113),
    .Y(net_n119)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (167.9, 255.68)
  sky130_fd_sc_hd__a21o_2 u500 (
    .A1(net_n2),
    .A2(net_n7),
    .B1(net_n8),
    .X(net_n120)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (167.9, 250.24)
  sky130_fd_sc_hd__or4b_2 u536 (
    .A(net_n53),
    .B(success),
    .C(net_n52),
    .D_N(net_n51),
    .X(net_n47)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (165.14000000000001, 250.24)
  sky130_fd_sc_hd__and3_2 u553 (
    .A(net_n43),
    .B(net_n121),
    .C(net_n44),
    .X(O[6])
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (159.62, 223.04)
  sky130_fd_sc_hd__clkbuf_4 u599 (
    .A(net_n72),
    .X()
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (171.58, 223.04)
  sky130_fd_sc_hd__o31a_2 u600 (
    .A1(net_n58),
    .A2(net_n123),
    .A3(net_n124),
    .B1(net_n125),
    .X(net_n126)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (167.9, 223.04)
  sky130_fd_sc_hd__a22o_2 u603 (
    .A1(net_n127),
    .A2(net_n68),
    .B1(net_n69),
    .B2(net_n128),
    .X(net_n107)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (164.68, 212.16)
  sky130_fd_sc_hd__or3_2 u604 (
    .A(net_n3),
    .B(net_n94),
    .C(net_n129),
    .X(net_n130)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (165.14000000000001, 244.8)
  sky130_fd_sc_hd__o211a_2 u608 (
    .A1(net_n9),
    .A2(net_n56),
    .B1(net_n120),
    .C1(net_n43),
    .X(net_n91)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (170.20000000000002, 228.48000000000002)
  sky130_fd_sc_hd__a22o_2 u611 (
    .A1(net_n131),
    .A2(net_n68),
    .B1(net_n69),
    .B2(net_n132),
    .X(net_n123)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (168.82, 239.36)
  sky130_fd_sc_hd__inv_2 u624 (
    .A(net_n9),
    .Y(net_n55)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (170.20000000000002, 228.48000000000002)
  sky130_fd_sc_hd__a22o_2 u683 (
    .A1(net_n133),
    .A2(net_n68),
    .B1(net_n69),
    .B2(net_n134),
    .X(net_n84)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (170.20000000000002, 233.92000000000002)
  sky130_fd_sc_hd__a22o_2 u687 (
    .A1(net_n135),
    .A2(net_n68),
    .B1(net_n69),
    .B2(net_n136),
    .X(net_n59)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (173.88, 228.48000000000002)
  sky130_fd_sc_hd__a22o_2 u709 (
    .A1(net_n137),
    .A2(net_n68),
    .B1(net_n69),
    .B2(net_n138),
    .X(net_n139)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (156.86, 228.48000000000002)
  sky130_fd_sc_hd__clkbuf_8 u727 (
    .A(net_n1),
    .X(net_n72)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (162.84, 212.16)
  sky130_fd_sc_hd__nor2_2 u741 (
    .A(net_n94),
    .B(net_n129),
    .Y(net_n58)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (170.66, 212.16)
  sky130_fd_sc_hd__a22o_2 u742 (
    .A1(net_n140),
    .A2(net_n94),
    .B1(net_n95),
    .B2(net_n141),
    .X(net_n124)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (167.9, 206.72)
  sky130_fd_sc_hd__nand2b_2 u743 (
    .A_N(net_n11),
    .B(net_n45),
    .Y(net_n37)
  );

  // Cell: sky130_fd_sc_hd__nor3b_2 at (168.82, 212.16)
  sky130_fd_sc_hd__nor3b_2 u744 (
    .A(net_n119),
    .B(net_n48),
    .C_N(net_n54),
    .Y(net_n94)
  );

  // Cell: sky130_fd_sc_hd__nor3b_2 at (172.5, 217.6)
  sky130_fd_sc_hd__nor3b_2 u745 (
    .A(net_n54),
    .B(net_n119),
    .C_N(net_n48),
    .Y(net_n95)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (168.82, 212.16)
  sky130_fd_sc_hd__a22o_2 u747 (
    .A1(net_n142),
    .A2(net_n94),
    .B1(net_n95),
    .B2(net_n143),
    .X(net_n82)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (166.06, 206.72)
  sky130_fd_sc_hd__or3_2 u751 (
    .A(net_n144),
    .B(net_n94),
    .C(net_n129),
    .X(net_n83)
  );

  // Cell: sky130_fd_sc_hd__nor3b_2 at (172.5, 217.6)
  sky130_fd_sc_hd__nor3b_2 u753 (
    .A(net_n54),
    .B(net_n48),
    .C_N(net_n119),
    .Y(net_n68)
  );

  // Cell: sky130_fd_sc_hd__nor3_2 at (165.14000000000001, 223.04)
  sky130_fd_sc_hd__nor3_2 u754 (
    .A(net_n54),
    .B(net_n119),
    .C(net_n48),
    .Y(net_n69)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (172.5, 223.04)
  sky130_fd_sc_hd__o31a_2 u790 (
    .A1(net_n58),
    .A2(net_n139),
    .A3(net_n145),
    .B1(net_n130),
    .X(net_n110)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (167.9, 217.6)
  sky130_fd_sc_hd__a21oi_2 u834 (
    .A1(net_n119),
    .A2(net_n48),
    .B1(net_n54),
    .Y(net_n129)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (165.14000000000001, 217.6)
  sky130_fd_sc_hd__or3_2 u867 (
    .A(net_n6),
    .B(net_n94),
    .C(net_n129),
    .X(net_n61)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (167.9, 206.72)
  sky130_fd_sc_hd__or2_2 u882 (
    .A(net_n45),
    .B(net_n11),
    .X(net_n146)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (168.82, 206.72)
  sky130_fd_sc_hd__a22o_2 u939 (
    .A1(net_n147),
    .A2(net_n94),
    .B1(net_n95),
    .B2(net_n148),
    .X(net_n149)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (174.34, 212.16)
  sky130_fd_sc_hd__a22o_2 u960 (
    .A1(net_n150),
    .A2(net_n94),
    .B1(net_n95),
    .B2(net_n151),
    .X(net_n145)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (178.02, 223.04)
  sky130_fd_sc_hd__a22o_2 u976 (
    .A1(net_n152),
    .A2(net_n68),
    .B1(net_n69),
    .B2(net_n153),
    .X(net_n154)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (176.64000000000001, 244.8)
  sky130_fd_sc_hd__and3_2 u1046 (
    .A(net_n43),
    .B(net_n126),
    .C(net_n44),
    .X(O[1])
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (180.78, 212.16)
  sky130_fd_sc_hd__or3_2 u1076 (
    .A(net_n156),
    .B(net_n94),
    .C(net_n129),
    .X(net_n86)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (178.02, 212.16)
  sky130_fd_sc_hd__or3_2 u1077 (
    .A(net_n157),
    .B(net_n94),
    .C(net_n129),
    .X(net_n158)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (179.86, 217.6)
  sky130_fd_sc_hd__or3_2 u1080 (
    .A(net_n159),
    .B(net_n94),
    .C(net_n129),
    .X(net_n160)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (178.02, 217.6)
  sky130_fd_sc_hd__o31a_2 u1081 (
    .A1(net_n58),
    .A2(net_n154),
    .A3(net_n149),
    .B1(net_n160),
    .X(net_n121)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (176.18, 217.6)
  sky130_fd_sc_hd__o31a_2 u1143 (
    .A1(net_n58),
    .A2(net_n161),
    .A3(net_n97),
    .B1(net_n158),
    .X(net_n78)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (176.18, 223.04)
  sky130_fd_sc_hd__a22o_2 u1154 (
    .A1(net_n162),
    .A2(net_n68),
    .B1(net_n69),
    .B2(net_n163),
    .X(net_n161)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (179.4, 206.72)
  sky130_fd_sc_hd__nor2_2 u1166 (
    .A(net_n37),
    .B(net_n164),
    .Y(net_n165)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (180.78, 212.16)
  sky130_fd_sc_hd__or3_2 u1190 (
    .A(net_n166),
    .B(net_n94),
    .C(net_n129),
    .X(net_n108)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (180.78, 206.72)
  sky130_fd_sc_hd__or3_2 u1203 (
    .A(net_n167),
    .B(net_n94),
    .C(net_n129),
    .X(net_n125)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 239.36)
  sky130_fd_sc_hd__dfrtp_2 u1228 (
    .CLK(net_n168),
    .D(net_n169),
    .Q(net_n170),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 228.48000000000002)
  sky130_fd_sc_hd__dfrtp_2 u1229 (
    .CLK(net_n168),
    .D(net_n171),
    .Q(net_n172),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (126.04, 244.8)
  sky130_fd_sc_hd__dfrtp_2 u1230 (
    .CLK(net_n173),
    .D(net_n174),
    .Q(net_n175),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (126.04, 233.92000000000002)
  sky130_fd_sc_hd__nand2_2 u1231 (
    .A(I),
    .B(net_n11),
    .Y(net_n176)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (123.28, 239.36)
  sky130_fd_sc_hd__a31o_2 u1232 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n177),
    .B1(net_n170),
    .X(net_n178)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (125.58, 250.24)
  sky130_fd_sc_hd__a31o_2 u1234 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n179),
    .B1(net_n175),
    .X(net_n180)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (127.88000000000001, 250.24)
  sky130_fd_sc_hd__o21a_2 u1235 (
    .A1(net_n181),
    .A2(net_n182),
    .B1(net_n180),
    .X(net_n174)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (116.38, 244.8)
  sky130_fd_sc_hd__nand2b_2 u1240 (
    .A_N(net_n181),
    .B(net_n182),
    .Y(net_n183)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (123.28, 233.92000000000002)
  sky130_fd_sc_hd__or4_2 u1244 (
    .A(net_n172),
    .B(net_n184),
    .C(net_n185),
    .D(net_n176),
    .X(net_n186)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (120.52, 255.68)
  sky130_fd_sc_hd__and4bb_2 u1246 (
    .A_N(net_n187),
    .B_N(net_n188),
    .C(net_n189),
    .D(net_n190),
    .X(net_n179)
  );

  // Cell: sky130_fd_sc_hd__and4b_2 at (129.26, 255.68)
  sky130_fd_sc_hd__and4b_2 u1248 (
    .A_N(net_n188),
    .B(net_n189),
    .C(net_n187),
    .D(net_n190),
    .X(net_n191)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 212.16)
  sky130_fd_sc_hd__dfrtp_2 u1249 (
    .CLK(net_n168),
    .D(net_n192),
    .Q(net_n193),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 206.72)
  sky130_fd_sc_hd__dfrtp_2 u1250 (
    .CLK(net_n18),
    .D(net_n30),
    .Q(net_n27),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (122.82000000000001, 212.16)
  sky130_fd_sc_hd__or4_2 u1252 (
    .A(net_n193),
    .B(net_n194),
    .C(net_n195),
    .D(net_n196),
    .X(net_n197)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (126.04, 217.6)
  sky130_fd_sc_hd__nand2_2 u1255 (
    .A(I),
    .B(net_n11),
    .Y(net_n196)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 255.68)
  sky130_fd_sc_hd__dfrtp_2 u1258 (
    .CLK(net_n173),
    .D(net_n198),
    .Q(net_n199),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (116.38, 277.44)
  sky130_fd_sc_hd__dfrtp_2 u1259 (
    .CLK(net_n200),
    .D(net_n201),
    .Q(net_n202),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 282.88)
  sky130_fd_sc_hd__dfrtp_2 u1260 (
    .CLK(net_n200),
    .D(net_n203),
    .Q(net_n204),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 282.88)
  sky130_fd_sc_hd__dfrtp_2 u1261 (
    .CLK(net_n200),
    .D(net_n205),
    .Q(net_n206),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (126.5, 277.44)
  sky130_fd_sc_hd__and2b_2 u1262 (
    .A_N(net_n202),
    .B(net_n207),
    .X(net_n208)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (116.38, 217.6)
  sky130_fd_sc_hd__dfrtp_2 u1264 (
    .CLK(net_n168),
    .D(net_n209),
    .Q(net_n210),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (127.88000000000001, 250.24)
  sky130_fd_sc_hd__clkbuf_4 u1285 (
    .A(net_n173),
    .X()
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (125.58, 282.88)
  sky130_fd_sc_hd__a31o_2 u1286 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n211),
    .B1(net_n202),
    .X(net_n212)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (126.5, 288.32)
  sky130_fd_sc_hd__a31o_2 u1287 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n213),
    .B1(net_n204),
    .X(net_n214)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (126.5, 282.88)
  sky130_fd_sc_hd__and4bb_2 u1323 (
    .A_N(net_n187),
    .B_N(net_n189),
    .C(net_n188),
    .D(net_n190),
    .X(net_n213)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (118.68, 266.56)
  sky130_fd_sc_hd__nand2_2 u1362 (
    .A(I),
    .B(net_n11),
    .Y(net_n215)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (114.08, 272.0)
  sky130_fd_sc_hd__or4_2 u1363 (
    .A(net_n216),
    .B(net_n217),
    .C(net_n218),
    .D(net_n215),
    .X(net_n219)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (113.16, 288.32)
  sky130_fd_sc_hd__nand4_2 u1364 (
    .A(I),
    .B(net_n11),
    .C(net_n204),
    .D(net_n213),
    .Y(net_n220)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (116.38, 277.44)
  sky130_fd_sc_hd__nand4_2 u1365 (
    .A(I),
    .B(net_n11),
    .C(net_n202),
    .D(net_n211),
    .Y(net_n221)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (113.16, 282.88)
  sky130_fd_sc_hd__o21a_2 u1366 (
    .A1(net_n207),
    .A2(net_n221),
    .B1(net_n212),
    .X(net_n201)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (109.94, 277.44)
  sky130_fd_sc_hd__a21o_2 u1367 (
    .A1(net_n206),
    .A2(net_n222),
    .B1(net_n216),
    .X(net_n223)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (115.92, 282.88)
  sky130_fd_sc_hd__and4bb_2 u1370 (
    .A_N(net_n190),
    .B_N(net_n189),
    .C(net_n188),
    .D(net_n187),
    .X(net_n211)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (113.16, 261.12)
  sky130_fd_sc_hd__and2b_2 u1376 (
    .A_N(net_n199),
    .B(net_n224),
    .X(net_n225)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (114.08, 266.56)
  sky130_fd_sc_hd__nor2_2 u1377 (
    .A(net_n218),
    .B(net_n215),
    .Y(net_n222)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (115.92, 255.68)
  sky130_fd_sc_hd__nand4_2 u1381 (
    .A(I),
    .B(net_n11),
    .C(net_n199),
    .D(net_n191),
    .Y(net_n226)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (114.08, 272.0)
  sky130_fd_sc_hd__dfrtp_2 u1383 (
    .CLK(net_n200),
    .D(net_n227),
    .Q(net_n207),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (123.28, 277.44)
  sky130_fd_sc_hd__dfrtp_2 u1384 (
    .CLK(net_n173),
    .D(net_n223),
    .Q(net_n216),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (123.28, 288.32)
  sky130_fd_sc_hd__dfrtp_2 u1385 (
    .CLK(net_n173),
    .D(net_n228),
    .Q(net_n229),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (117.3, 272.0)
  sky130_fd_sc_hd__o21a_2 u1387 (
    .A1(net_n206),
    .A2(net_n222),
    .B1(net_n219),
    .X(net_n205)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (115.92, 282.88)
  sky130_fd_sc_hd__inv_2 u1425 (
    .A(net_n206),
    .Y(net_n217)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (113.62, 272.0)
  sky130_fd_sc_hd__or4b_2 u1451 (
    .A(net_n190),
    .B(net_n187),
    .C(net_n189),
    .D_N(net_n188),
    .X(net_n218)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (108.56, 277.44)
  sky130_fd_sc_hd__and2_2 u1560 (
    .A(net_n216),
    .B(net_n217),
    .X(net_n230)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (111.78, 277.44)
  sky130_fd_sc_hd__nand2b_2 u1569 (
    .A_N(net_n207),
    .B(net_n221),
    .Y(net_n227)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (108.10000000000001, 282.88)
  sky130_fd_sc_hd__nand2b_2 u1570 (
    .A_N(net_n229),
    .B(net_n220),
    .Y(net_n228)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (105.34, 288.32)
  sky130_fd_sc_hd__o21a_2 u1579 (
    .A1(net_n229),
    .A2(net_n220),
    .B1(net_n214),
    .X(net_n203)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (108.10000000000001, 282.88)
  sky130_fd_sc_hd__and2b_2 u1591 (
    .A_N(net_n204),
    .B(net_n229),
    .X(net_n231)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (108.10000000000001, 255.68)
  sky130_fd_sc_hd__o21a_2 u1611 (
    .A1(net_n224),
    .A2(net_n226),
    .B1(net_n232),
    .X(net_n198)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (113.62, 261.12)
  sky130_fd_sc_hd__dfrtp_2 u1626 (
    .CLK(net_n200),
    .D(net_n233),
    .Q(net_n224),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (122.36, 250.24)
  sky130_fd_sc_hd__clkbuf_8 u1628 (
    .A(net_n1),
    .X(net_n200)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (119.14, 250.24)
  sky130_fd_sc_hd__and2b_2 u1630 (
    .A_N(net_n175),
    .B(net_n181),
    .X(net_n234)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (117.3, 261.12)
  sky130_fd_sc_hd__a31o_2 u1635 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n191),
    .B1(net_n199),
    .X(net_n232)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (120.52, 255.68)
  sky130_fd_sc_hd__nand4_2 u1641 (
    .A(I),
    .B(net_n11),
    .C(net_n175),
    .D(net_n179),
    .Y(net_n182)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (117.3, 261.12)
  sky130_fd_sc_hd__nand2b_2 u1675 (
    .A_N(net_n224),
    .B(net_n226),
    .Y(net_n233)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (114.54, 250.24)
  sky130_fd_sc_hd__clkbuf_4 u1701 (
    .A(net_n200),
    .X()
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (119.60000000000001, 250.24)
  sky130_fd_sc_hd__clkbuf_8 u1736 (
    .A(net_n1),
    .X(net_n173)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (115.92, 206.72)
  sky130_fd_sc_hd__or4b_2 u1770 (
    .A(net_n187),
    .B(net_n188),
    .C(net_n189),
    .D_N(net_n190),
    .X(net_n195)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (116.84, 233.92000000000002)
  sky130_fd_sc_hd__nand4_2 u1772 (
    .A(I),
    .B(net_n11),
    .C(net_n170),
    .D(net_n177),
    .Y(net_n235)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (112.7, 239.36)
  sky130_fd_sc_hd__and2b_2 u1775 (
    .A_N(net_n170),
    .B(net_n236),
    .X(net_n237)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (113.16, 239.36)
  sky130_fd_sc_hd__and2_2 u1776 (
    .A(net_n172),
    .B(net_n184),
    .X(net_n238)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (109.94, 233.92000000000002)
  sky130_fd_sc_hd__a21o_2 u1777 (
    .A1(net_n239),
    .A2(net_n240),
    .B1(net_n172),
    .X(net_n171)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (115.92, 223.04)
  sky130_fd_sc_hd__o21a_2 u1780 (
    .A1(net_n241),
    .A2(net_n242),
    .B1(net_n243),
    .X(net_n209)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (115.92, 228.48000000000002)
  sky130_fd_sc_hd__o21a_2 u1781 (
    .A1(net_n239),
    .A2(net_n240),
    .B1(net_n186),
    .X(net_n244)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (120.52, 223.04)
  sky130_fd_sc_hd__and4bb_2 u1788 (
    .A_N(net_n188),
    .B_N(net_n189),
    .C(net_n187),
    .D(net_n190),
    .X(net_n245)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (115.92, 239.36)
  sky130_fd_sc_hd__o21a_2 u1790 (
    .A1(net_n236),
    .A2(net_n235),
    .B1(net_n178),
    .X(net_n169)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (113.16, 217.6)
  sky130_fd_sc_hd__nand2b_2 u1792 (
    .A_N(net_n241),
    .B(net_n242),
    .Y(net_n246)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (108.10000000000001, 206.72)
  sky130_fd_sc_hd__clkbuf_8 u1793 (
    .A(net_n1),
    .X(net_n168)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (113.16, 217.6)
  sky130_fd_sc_hd__and2_2 u1794 (
    .A(net_n193),
    .B(net_n194),
    .X(net_n247)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (113.16, 212.16)
  sky130_fd_sc_hd__o21a_2 u1795 (
    .A1(net_n248),
    .A2(net_n249),
    .B1(net_n197),
    .X(net_n250)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (113.16, 212.16)
  sky130_fd_sc_hd__a21o_2 u1796 (
    .A1(net_n248),
    .A2(net_n249),
    .B1(net_n193),
    .X(net_n192)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (123.74000000000001, 233.92000000000002)
  sky130_fd_sc_hd__nor2_2 u1798 (
    .A(net_n185),
    .B(net_n176),
    .Y(net_n240)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (120.52, 228.48000000000002)
  sky130_fd_sc_hd__or4b_2 u1803 (
    .A(net_n190),
    .B(net_n187),
    .C(net_n188),
    .D_N(net_n189),
    .X(net_n185)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (116.84, 233.92000000000002)
  sky130_fd_sc_hd__and4bb_2 u1807 (
    .A_N(net_n190),
    .B_N(net_n188),
    .C(net_n189),
    .D(net_n187),
    .X(net_n177)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (123.28, 239.36)
  sky130_fd_sc_hd__dfrtp_2 u1808 (
    .CLK(net_n173),
    .D(net_n251),
    .Q(net_n236),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (113.62, 233.92000000000002)
  sky130_fd_sc_hd__dfrtp_2 u1809 (
    .CLK(net_n168),
    .D(net_n244),
    .Q(net_n239),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (114.08, 244.8)
  sky130_fd_sc_hd__dfrtp_2 u1810 (
    .CLK(net_n200),
    .D(net_n183),
    .Q(net_n181),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (109.02, 233.92000000000002)
  sky130_fd_sc_hd__nand2b_2 u1959 (
    .A_N(net_n236),
    .B(net_n235),
    .Y(net_n251)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (109.02, 233.92000000000002)
  sky130_fd_sc_hd__inv_2 u1968 (
    .A(net_n239),
    .Y(net_n184)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (109.48, 206.72)
  sky130_fd_sc_hd__and2_2 u1982 (
    .A(net_n22),
    .B(net_n23),
    .X(net_n252)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (110.4, 217.6)
  sky130_fd_sc_hd__inv_2 u2012 (
    .A(net_n248),
    .Y(net_n194)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (109.94, 212.16)
  sky130_fd_sc_hd__inv_2 u2013 (
    .A(net_n27),
    .Y(net_n23)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (112.24000000000001, 206.72)
  sky130_fd_sc_hd__clkbuf_4 u2023 (
    .A(net_n168),
    .X()
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (120.52, 223.04)
  sky130_fd_sc_hd__nand4_2 u2034 (
    .A(I),
    .B(net_n11),
    .C(net_n210),
    .D(net_n245),
    .Y(net_n242)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (114.08, 217.6)
  sky130_fd_sc_hd__dfrtp_2 u2036 (
    .CLK(net_n168),
    .D(net_n246),
    .Q(net_n241),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (122.82000000000001, 212.16)
  sky130_fd_sc_hd__dfrtp_2 u2037 (
    .CLK(net_n18),
    .D(net_n250),
    .Q(net_n248),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (123.28, 206.72)
  sky130_fd_sc_hd__dfrtp_2 u2039 (
    .CLK(net_n18),
    .D(net_n29),
    .Q(net_n22),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (120.52, 223.04)
  sky130_fd_sc_hd__a31o_2 u2049 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n245),
    .B1(net_n210),
    .X(net_n243)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (116.38, 217.6)
  sky130_fd_sc_hd__and2b_2 u2107 (
    .A_N(net_n210),
    .B(net_n241),
    .X(net_n253)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (115.92, 212.16)
  sky130_fd_sc_hd__nor2_2 u2143 (
    .A(net_n195),
    .B(net_n196),
    .Y(net_n249)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (116.38, 184.96)
  sky130_fd_sc_hd__dfrtp_2 u2293 (
    .CLK(net_n254),
    .D(net_n255),
    .Q(net_n256),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (126.04, 130.56)
  sky130_fd_sc_hd__nand2_2 u2296 (
    .A(I),
    .B(net_n11),
    .Y(net_n257)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (123.74000000000001, 136.0)
  sky130_fd_sc_hd__nor2_2 u2298 (
    .A(net_n258),
    .B(net_n257),
    .Y(net_n259)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (127.88000000000001, 136.0)
  sky130_fd_sc_hd__dfrtp_2 u2299 (
    .CLK(net_n31),
    .D(net_n260),
    .Q(net_n261),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (127.88000000000001, 146.88)
  sky130_fd_sc_hd__dfrtp_2 u2301 (
    .CLK(net_n31),
    .D(net_n262),
    .Q(net_n263),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (124.66, 141.44)
  sky130_fd_sc_hd__nand2b_2 u2302 (
    .A_N(net_n261),
    .B(net_n264),
    .Y(net_n260)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (146.28, 174.08)
  sky130_fd_sc_hd__clkbuf_4 u2327 (
    .A(net_n31),
    .X()
  );

  // Cell: sky130_fd_sc_hd__clkbuf_16 at (104.88, 163.20000000000002)
  sky130_fd_sc_hd__clkbuf_16 u2358 (
    .A(clk),
    .X(net_n1)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (113.16, 201.28)
  sky130_fd_sc_hd__nor2_2 u2359 (
    .A(net_n24),
    .B(net_n25),
    .Y(net_n28)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (120.52, 190.4)
  sky130_fd_sc_hd__a31o_2 u2361 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n266),
    .B1(net_n256),
    .X(net_n267)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (119.14, 190.4)
  sky130_fd_sc_hd__o21a_2 u2363 (
    .A1(net_n268),
    .A2(net_n269),
    .B1(net_n267),
    .X(net_n255)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (119.14, 190.4)
  sky130_fd_sc_hd__and2b_2 u2364 (
    .A_N(net_n256),
    .B(net_n268),
    .X(net_n270)
  );

  // Cell: sky130_fd_sc_hd__nor4_2 at (115.92, 195.84)
  sky130_fd_sc_hd__nor4_2 u2365 (
    .A(net_n190),
    .B(net_n187),
    .C(net_n188),
    .D(net_n189),
    .Y(net_n266)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (120.52, 190.4)
  sky130_fd_sc_hd__nand4_2 u2369 (
    .A(I),
    .B(net_n11),
    .C(net_n256),
    .D(net_n266),
    .Y(net_n269)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (119.60000000000001, 201.28)
  sky130_fd_sc_hd__nand2_2 u2370 (
    .A(I),
    .B(net_n11),
    .Y(net_n25)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (114.08, 184.96)
  sky130_fd_sc_hd__dfrtp_2 u2372 (
    .CLK(net_n254),
    .D(net_n271),
    .Q(net_n268),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (113.62, 201.28)
  sky130_fd_sc_hd__or4b_2 u2396 (
    .A(net_n190),
    .B(net_n188),
    .C(net_n189),
    .D_N(net_n187),
    .X(net_n24)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (116.38, 184.96)
  sky130_fd_sc_hd__nand2b_2 u2437 (
    .A_N(net_n268),
    .B(net_n269),
    .Y(net_n271)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (100.74000000000001, 195.84)
  sky130_fd_sc_hd__clkbuf_4 u2501 (
    .A(net_n254),
    .X()
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (100.74000000000001, 201.28)
  sky130_fd_sc_hd__clkbuf_8 u2507 (
    .A(net_n1),
    .X(net_n254)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (111.78, 146.88)
  sky130_fd_sc_hd__o21a_2 u2540 (
    .A1(net_n263),
    .A2(net_n272),
    .B1(net_n273),
    .X(net_n274)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (124.66, 141.44)
  sky130_fd_sc_hd__dfrtp_2 u2542 (
    .CLK(net_n31),
    .D(net_n275),
    .Q(net_n276),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (115.92, 130.56)
  sky130_fd_sc_hd__a21o_2 u2543 (
    .A1(net_n277),
    .A2(net_n259),
    .B1(net_n278),
    .X(net_n279)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (112.7, 130.56)
  sky130_fd_sc_hd__a31o_2 u2544 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n280),
    .B1(net_n276),
    .X(net_n281)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (110.86, 136.0)
  sky130_fd_sc_hd__o21a_2 u2548 (
    .A1(net_n277),
    .A2(net_n259),
    .B1(net_n282),
    .X(net_n283)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (113.16, 136.0)
  sky130_fd_sc_hd__or4_2 u2552 (
    .A(net_n278),
    .B(net_n284),
    .C(net_n258),
    .D(net_n257),
    .X(net_n282)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (112.7, 141.44)
  sky130_fd_sc_hd__a31o_2 u2553 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n285),
    .B1(net_n286),
    .X(net_n273)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (113.16, 141.44)
  sky130_fd_sc_hd__and2b_2 u2555 (
    .A_N(net_n276),
    .B(net_n261),
    .X(net_n287)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (113.16, 130.56)
  sky130_fd_sc_hd__and2_2 u2561 (
    .A(net_n278),
    .B(net_n284),
    .X(net_n288)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (115.92, 141.44)
  sky130_fd_sc_hd__and4bb_2 u2563 (
    .A_N(net_n289),
    .B_N(net_n290),
    .C(net_n291),
    .D(net_n292),
    .X(net_n285)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (119.14, 152.32)
  sky130_fd_sc_hd__and2b_2 u2571 (
    .A_N(net_n286),
    .B(net_n263),
    .X(net_n293)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (119.14, 152.32)
  sky130_fd_sc_hd__nand2b_2 u2572 (
    .A_N(net_n263),
    .B(net_n272),
    .Y(net_n262)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.0, 146.88)
  sky130_fd_sc_hd__dfrtp_2 u2574 (
    .CLK(net_n254),
    .D(net_n274),
    .Q(net_n286),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (118.22, 146.88)
  sky130_fd_sc_hd__nand4_2 u2622 (
    .A(I),
    .B(net_n11),
    .C(net_n286),
    .D(net_n285),
    .Y(net_n272)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (124.2, 141.44)
  sky130_fd_sc_hd__or4b_2 u2671 (
    .A(net_n292),
    .B(net_n289),
    .C(net_n290),
    .D_N(net_n291),
    .X(net_n258)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (115.92, 130.56)
  sky130_fd_sc_hd__and4bb_2 u2706 (
    .A_N(net_n292),
    .B_N(net_n290),
    .C(net_n291),
    .D(net_n289),
    .X(net_n280)
  );

  // Cell: sky130_fd_sc_hd__and4b_2 at (115.0, 125.12)
  sky130_fd_sc_hd__and4b_2 u2707 (
    .A_N(net_n291),
    .B(net_n290),
    .C(net_n289),
    .D(net_n292),
    .X(net_n12)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (123.74000000000001, 136.0)
  sky130_fd_sc_hd__dfrtp_2 u2708 (
    .CLK(net_n31),
    .D(net_n283),
    .Q(net_n277),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (114.08, 125.12)
  sky130_fd_sc_hd__dfrtp_2 u2709 (
    .CLK(net_n294),
    .D(net_n17),
    .Q(net_n13),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (124.66, 130.56)
  sky130_fd_sc_hd__dfrtp_2 u2710 (
    .CLK(net_n31),
    .D(net_n279),
    .Q(net_n278),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (115.0, 130.56)
  sky130_fd_sc_hd__inv_2 u2711 (
    .A(net_n277),
    .Y(net_n284)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (119.60000000000001, 119.68)
  sky130_fd_sc_hd__nand4_2 u2717 (
    .A(I),
    .B(net_n11),
    .C(net_n13),
    .D(net_n12),
    .Y(net_n16)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (120.52, 130.56)
  sky130_fd_sc_hd__o21a_2 u2740 (
    .A1(net_n261),
    .A2(net_n264),
    .B1(net_n281),
    .X(net_n275)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (113.62, 136.0)
  sky130_fd_sc_hd__nand4_2 u2782 (
    .A(I),
    .B(net_n11),
    .C(net_n276),
    .D(net_n280),
    .Y(net_n264)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (122.82000000000001, 119.68)
  sky130_fd_sc_hd__and2b_2 u2843 (
    .A_N(net_n13),
    .B(net_n15),
    .X(net_n295)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (174.8, 184.96)
  sky130_fd_sc_hd__xnor2_2 u2925 (
    .A(net_n9),
    .B(net_n296),
    .Y(net_n297)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (172.04, 157.76)
  sky130_fd_sc_hd__a21oi_2 u2926 (
    .A1(net_n7),
    .A2(net_n298),
    .B1(net_n9),
    .Y(net_n152)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (172.5, 157.76)
  sky130_fd_sc_hd__inv_2 u2928 (
    .A(net_n7),
    .Y(net_n299)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (177.56, 146.88)
  sky130_fd_sc_hd__and3_2 u2932 (
    .A(net_n7),
    .B(net_n300),
    .C(net_n298),
    .X(net_n133)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (174.8, 146.88)
  sky130_fd_sc_hd__o211a_2 u2933 (
    .A1(net_n299),
    .A2(net_n8),
    .B1(net_n300),
    .C1(net_n2),
    .X(net_n127)
  );

  // Cell: sky130_fd_sc_hd__o21ai_2 at (176.18, 136.0)
  sky130_fd_sc_hd__o21ai_2 u2935 (
    .A1(net_n2),
    .A2(net_n8),
    .B1(net_n9),
    .Y(net_n301)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (177.56, 130.56)
  sky130_fd_sc_hd__and2b_2 u2936 (
    .A_N(net_n302),
    .B(net_n303),
    .X(net_n128)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (176.18, 146.88)
  sky130_fd_sc_hd__inv_2 u2937 (
    .A(net_n9),
    .Y(net_n300)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (177.1, 136.0)
  sky130_fd_sc_hd__nand2b_2 u2938 (
    .A_N(net_n7),
    .B(net_n2),
    .Y(net_n303)
  );

  // Cell: sky130_fd_sc_hd__o221a_2 at (175.26, 130.56)
  sky130_fd_sc_hd__o221a_2 u2939 (
    .A1(net_n302),
    .A2(net_n304),
    .B1(net_n305),
    .B2(net_n306),
    .C1(net_n303),
    .X(net_n136)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (174.8, 141.44)
  sky130_fd_sc_hd__o211a_2 u2940 (
    .A1(net_n2),
    .A2(net_n302),
    .B1(net_n307),
    .C1(net_n301),
    .X(net_n138)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (174.8, 146.88)
  sky130_fd_sc_hd__o31a_2 u2941 (
    .A1(net_n308),
    .A2(net_n309),
    .A3(net_n310),
    .B1(net_n300),
    .X(net_n67)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (175.26, 141.44)
  sky130_fd_sc_hd__o21a_2 u2942 (
    .A1(net_n2),
    .A2(net_n307),
    .B1(net_n301),
    .X(net_n153)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (167.9, 195.84)
  sky130_fd_sc_hd__dfrtp_2 u2944 (
    .CLK(net_n311),
    .D(net_n312),
    .Q(net_n100),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (183.54, 195.84)
  sky130_fd_sc_hd__dfrtp_2 u2946 (
    .CLK(net_n311),
    .D(net_n313),
    .Q(net_n99),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (168.82, 179.52)
  sky130_fd_sc_hd__dfrtp_2 u2947 (
    .CLK(net_n31),
    .D(net_n314),
    .Q(net_n315),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (174.8, 184.96)
  sky130_fd_sc_hd__dfrtp_2 u2948 (
    .CLK(net_n311),
    .D(net_n316),
    .Q(net_n317),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (171.12, 174.08)
  sky130_fd_sc_hd__xnor2_2 u2949 (
    .A(net_n318),
    .B(net_n319),
    .Y(net_n320)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (177.56, 184.96)
  sky130_fd_sc_hd__and3_2 u2950 (
    .A(net_n7),
    .B(net_n2),
    .C(net_n8),
    .X(net_n296)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (178.94, 174.08)
  sky130_fd_sc_hd__xor2_2 u2951 (
    .A(net_n99),
    .B(net_n321),
    .X(net_n105)
  );

  // Cell: sky130_fd_sc_hd__nor3b_2 at (171.12, 152.32)
  sky130_fd_sc_hd__nor3b_2 u2953 (
    .A(net_n7),
    .B(net_n8),
    .C_N(net_n2),
    .Y(net_n310)
  );

  // Cell: sky130_fd_sc_hd__nor3b_2 at (177.56, 168.64000000000001)
  sky130_fd_sc_hd__nor3b_2 u2954 (
    .A(net_n11),
    .B(net_n322),
    .C_N(net_n320),
    .Y(net_n323)
  );

  // Cell: sky130_fd_sc_hd__a2111oi_2 at (172.04, 152.32)
  sky130_fd_sc_hd__a2111oi_2 u2955 (
    .A1(net_n7),
    .A2(net_n8),
    .B1(net_n9),
    .C1(net_n298),
    .D1(net_n324),
    .Y(net_n135)
  );

  // Cell: sky130_fd_sc_hd__a21boi_2 at (172.96, 168.64000000000001)
  sky130_fd_sc_hd__a21boi_2 u2956 (
    .A1(I),
    .A2(net_n320),
    .B1_N(net_n11),
    .Y(net_n325)
  );

  // Cell: sky130_fd_sc_hd__dfstp_2 at (167.9, 190.4)
  sky130_fd_sc_hd__dfstp_2 u2957 (
    .CLK(net_n311),
    .D(net_n326),
    .Q(net_n19),
    .SET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfstp_2 at (166.98, 190.4)
  sky130_fd_sc_hd__dfstp_2 u2958 (
    .CLK(net_n311),
    .D(net_n327),
    .Q(net_n32),
    .SET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfstp_2 at (172.96, 201.28)
  sky130_fd_sc_hd__dfstp_2 u2959 (
    .CLK(net_n18),
    .D(net_n328),
    .Q(net_n329),
    .SET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfstp_2 at (177.56, 179.52)
  sky130_fd_sc_hd__dfstp_2 u2960 (
    .CLK(net_n311),
    .D(net_n330),
    .Q(net_n331),
    .SET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a211o_2 at (174.8, 184.96)
  sky130_fd_sc_hd__a211o_2 u2961 (
    .A1(net_n7),
    .A2(net_n8),
    .B1(net_n332),
    .C1(net_n333),
    .X(net_n334)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (184.0, 179.52)
  sky130_fd_sc_hd__xnor2_2 u2963 (
    .A(net_n315),
    .B(net_n335),
    .Y(net_n164)
  );

  // Cell: sky130_fd_sc_hd__a221o_2 at (184.0, 179.52)
  sky130_fd_sc_hd__a221o_2 u2965 (
    .A1(net_n11),
    .A2(net_n315),
    .B1(net_n331),
    .B2(net_n336),
    .C1(net_n337),
    .X(net_n330)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (184.46, 179.52)
  sky130_fd_sc_hd__and2b_2 u2966 (
    .A_N(net_n338),
    .B(net_n339),
    .X(net_n340)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (188.6, 190.4)
  sky130_fd_sc_hd__xor2_2 u2967 (
    .A(net_n99),
    .B(net_n331),
    .X(net_n335)
  );

  // Cell: sky130_fd_sc_hd__a22oi_2 at (184.0, 184.96)
  sky130_fd_sc_hd__a22oi_2 u2968 (
    .A1(net_n7),
    .A2(net_n332),
    .B1(net_n341),
    .B2(net_n342),
    .Y(net_n343)
  );

  // Cell: sky130_fd_sc_hd__a221o_2 at (184.0, 190.4)
  sky130_fd_sc_hd__a221o_2 u2969 (
    .A1(net_n11),
    .A2(net_n99),
    .B1(net_n336),
    .B2(net_n317),
    .C1(net_n344),
    .X(net_n316)
  );

  // Cell: sky130_fd_sc_hd__a221o_2 at (184.46, 184.96)
  sky130_fd_sc_hd__a221o_2 u2972 (
    .A1(net_n11),
    .A2(net_n19),
    .B1(net_n339),
    .B2(net_n322),
    .C1(net_n336),
    .X(net_n345)
  );

  // Cell: sky130_fd_sc_hd__o22a_2 at (183.54, 195.84)
  sky130_fd_sc_hd__o22a_2 u2973 (
    .A1(net_n99),
    .A2(net_n146),
    .B1(net_n323),
    .B2(net_n345),
    .X(net_n313)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (187.22, 195.84)
  sky130_fd_sc_hd__o21a_2 u2974 (
    .A1(net_n35),
    .A2(net_n36),
    .B1(net_n38),
    .X(net_n344)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (178.02, 195.84)
  sky130_fd_sc_hd__xnor2_2 u3012 (
    .A(net_n329),
    .B(net_n101),
    .Y(net_n322)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (176.64000000000001, 190.4)
  sky130_fd_sc_hd__xor2_2 u3014 (
    .A(net_n329),
    .B(net_n20),
    .X(net_n338)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (184.0, 190.4)
  sky130_fd_sc_hd__xor2_2 u3015 (
    .A(net_n100),
    .B(net_n341),
    .X(net_n346)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (184.0, 184.96)
  sky130_fd_sc_hd__xnor2_2 u3017 (
    .A(net_n315),
    .B(net_n318),
    .Y(net_n20)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (184.46, 179.52)
  sky130_fd_sc_hd__xnor2_2 u3161 (
    .A(net_n19),
    .B(net_n347),
    .Y(net_n102)
  );

  // Cell: sky130_fd_sc_hd__o21ai_2 at (178.94, 174.08)
  sky130_fd_sc_hd__o21ai_2 u3163 (
    .A1(net_n348),
    .A2(net_n349),
    .B1(net_n334),
    .Y(net_n347)
  );

  // Cell: sky130_fd_sc_hd__o21ai_2 at (181.24, 168.64000000000001)
  sky130_fd_sc_hd__o21ai_2 u3164 (
    .A1(I),
    .A2(net_n320),
    .B1(net_n325),
    .Y(net_n350)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (178.02, 174.08)
  sky130_fd_sc_hd__xor2_2 u3167 (
    .A(net_n329),
    .B(net_n317),
    .X(net_n36)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (184.0, 174.08)
  sky130_fd_sc_hd__nor2_2 u3191 (
    .A(net_n320),
    .B(net_n37),
    .Y(net_n337)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (164.22, 168.64000000000001)
  sky130_fd_sc_hd__nand2_2 u3276 (
    .A(net_n8),
    .B(net_n333),
    .Y(net_n351)
  );

  // Cell: sky130_fd_sc_hd__and3b_2 at (161.0, 174.08)
  sky130_fd_sc_hd__and3b_2 u3277 (
    .A_N(net_n11),
    .B(net_n320),
    .C(net_n338),
    .X(net_n352)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (167.9, 179.52)
  sky130_fd_sc_hd__xnor2_2 u3278 (
    .A(net_n315),
    .B(net_n353),
    .Y(net_n354)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (164.68, 174.08)
  sky130_fd_sc_hd__a31o_2 u3279 (
    .A1(net_n8),
    .A2(net_n332),
    .A3(net_n342),
    .B1(net_n343),
    .X(net_n355)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (161.46, 201.28)
  sky130_fd_sc_hd__a21o_2 u3281 (
    .A1(net_n11),
    .A2(net_n100),
    .B1(net_n336),
    .X(net_n356)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (161.92000000000002, 190.4)
  sky130_fd_sc_hd__xnor2_2 u3282 (
    .A(net_n19),
    .B(net_n32),
    .Y(net_n353)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (167.9, 195.84)
  sky130_fd_sc_hd__xnor2_2 u3283 (
    .A(net_n353),
    .B(net_n101),
    .Y(net_n357)
  );

  // Cell: sky130_fd_sc_hd__o32a_2 at (164.68, 190.4)
  sky130_fd_sc_hd__o32a_2 u3284 (
    .A1(net_n340),
    .A2(net_n352),
    .A3(net_n356),
    .B1(net_n146),
    .B2(net_n19),
    .X(net_n326)
  );

  // Cell: sky130_fd_sc_hd__a221o_2 at (164.68, 195.84)
  sky130_fd_sc_hd__a221o_2 u3285 (
    .A1(net_n11),
    .A2(net_n329),
    .B1(net_n100),
    .B2(net_n336),
    .C1(net_n165),
    .X(net_n312)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (158.70000000000002, 184.96)
  sky130_fd_sc_hd__xnor2_2 u3286 (
    .A(net_n358),
    .B(net_n346),
    .Y(net_n140)
  );

  // Cell: sky130_fd_sc_hd__or3b_2 at (156.86, 179.52)
  sky130_fd_sc_hd__or3b_2 u3287 (
    .A(net_n7),
    .B(net_n8),
    .C_N(net_n2),
    .X(net_n359)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (156.86, 179.52)
  sky130_fd_sc_hd__clkbuf_8 u3288 (
    .A(net_n1),
    .X(net_n311)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (156.86, 184.96)
  sky130_fd_sc_hd__xnor2_2 u3289 (
    .A(net_n317),
    .B(net_n99),
    .Y(net_n318)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (162.84, 184.96)
  sky130_fd_sc_hd__xnor2_2 u3295 (
    .A(net_n32),
    .B(net_n331),
    .Y(net_n319)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (166.98, 201.28)
  sky130_fd_sc_hd__xor2_2 u3296 (
    .A(net_n19),
    .B(net_n100),
    .X(net_n35)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (165.14000000000001, 195.84)
  sky130_fd_sc_hd__xnor2_2 u3297 (
    .A(net_n315),
    .B(net_n42),
    .Y(net_n147)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (165.14000000000001, 184.96)
  sky130_fd_sc_hd__xor2_2 u3298 (
    .A(net_n317),
    .B(net_n360),
    .X(net_n150)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (171.12, 195.84)
  sky130_fd_sc_hd__or3_2 u3315 (
    .A(net_n361),
    .B(net_n362),
    .C(net_n40),
    .X(net_n358)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (161.92000000000002, 190.4)
  sky130_fd_sc_hd__a22o_2 u3477 (
    .A1(net_n11),
    .A2(net_n317),
    .B1(net_n32),
    .B2(net_n336),
    .X(net_n363)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (155.02, 190.4)
  sky130_fd_sc_hd__nand2b_2 u3478 (
    .A_N(net_n2),
    .B(net_n7),
    .Y(net_n41)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (155.02, 190.4)
  sky130_fd_sc_hd__nand2_2 u3480 (
    .A(net_n41),
    .B(net_n364),
    .Y(net_n33)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (157.32, 195.84)
  sky130_fd_sc_hd__nor2_2 u3483 (
    .A(net_n45),
    .B(net_n11),
    .Y(net_n336)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (153.18, 190.4)
  sky130_fd_sc_hd__and2b_2 u3484 (
    .A_N(net_n7),
    .B(net_n2),
    .X(net_n333)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (156.86, 184.96)
  sky130_fd_sc_hd__a22o_2 u3487 (
    .A1(net_n11),
    .A2(net_n32),
    .B1(net_n336),
    .B2(net_n315),
    .X(net_n365)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (158.70000000000002, 184.96)
  sky130_fd_sc_hd__a31o_2 u3489 (
    .A1(net_n366),
    .A2(net_n39),
    .A3(net_n21),
    .B1(net_n365),
    .X(net_n314)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (157.32, 195.84)
  sky130_fd_sc_hd__a21o_2 u3516 (
    .A1(net_n366),
    .A2(net_n357),
    .B1(net_n363),
    .X(net_n327)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (161.92000000000002, 195.84)
  sky130_fd_sc_hd__and2b_2 u3518 (
    .A_N(net_n11),
    .B(net_n45),
    .X(net_n366)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (153.18, 190.4)
  sky130_fd_sc_hd__nor2_2 u3531 (
    .A(net_n7),
    .B(net_n2),
    .Y(net_n362)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (153.18, 184.96)
  sky130_fd_sc_hd__nor2_2 u3533 (
    .A(net_n8),
    .B(net_n9),
    .Y(net_n40)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (153.18, 184.96)
  sky130_fd_sc_hd__nand2_2 u3576 (
    .A(net_n2),
    .B(net_n9),
    .Y(net_n367)
  );

  // Cell: sky130_fd_sc_hd__o221a_2 at (160.54, 190.4)
  sky130_fd_sc_hd__o221a_2 u3587 (
    .A1(net_n329),
    .A2(net_n146),
    .B1(net_n37),
    .B2(net_n354),
    .C1(net_n350),
    .X(net_n328)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (157.78, 174.08)
  sky130_fd_sc_hd__a21oi_2 u3636 (
    .A1(net_n351),
    .A2(net_n367),
    .B1(net_n361),
    .Y(net_n368)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (158.24, 179.52)
  sky130_fd_sc_hd__clkbuf_4 u3639 (
    .A(net_n311),
    .X()
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (161.92000000000002, 179.52)
  sky130_fd_sc_hd__a22o_2 u3660 (
    .A1(net_n361),
    .A2(net_n341),
    .B1(net_n297),
    .B2(net_n359),
    .X(net_n364)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (154.1, 179.52)
  sky130_fd_sc_hd__inv_2 u3669 (
    .A(net_n9),
    .Y(net_n332)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (159.16, 174.08)
  sky130_fd_sc_hd__nor2_2 u3685 (
    .A(net_n7),
    .B(net_n332),
    .Y(net_n361)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (167.44, 168.64000000000001)
  sky130_fd_sc_hd__nand2_2 u3701 (
    .A(net_n7),
    .B(net_n2),
    .Y(net_n342)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (168.82, 179.52)
  sky130_fd_sc_hd__o31a_2 u3703 (
    .A1(net_n8),
    .A2(net_n361),
    .A3(net_n333),
    .B1(net_n367),
    .X(net_n360)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (165.6, 174.08)
  sky130_fd_sc_hd__inv_2 u3708 (
    .A(net_n351),
    .Y(net_n348)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (165.14000000000001, 174.08)
  sky130_fd_sc_hd__xnor2_2 u3709 (
    .A(net_n329),
    .B(net_n368),
    .Y(net_n142)
  );

  // Cell: sky130_fd_sc_hd__o32a_2 at (172.96, 168.64000000000001)
  sky130_fd_sc_hd__o32a_2 u3710 (
    .A1(net_n348),
    .A2(net_n297),
    .A3(net_n369),
    .B1(net_n370),
    .B2(net_n349),
    .X(net_n321)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (166.98, 174.08)
  sky130_fd_sc_hd__xnor2_2 u3711 (
    .A(net_n331),
    .B(net_n355),
    .Y(net_n93)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (166.52, 168.64000000000001)
  sky130_fd_sc_hd__nor2_2 u3712 (
    .A(net_n8),
    .B(net_n370),
    .Y(net_n369)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (164.22, 168.64000000000001)
  sky130_fd_sc_hd__or2_2 u3715 (
    .A(net_n2),
    .B(net_n8),
    .X(net_n341)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (169.74, 163.20000000000002)
  sky130_fd_sc_hd__nand2_2 u3809 (
    .A(net_n341),
    .B(net_n297),
    .Y(net_n349)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (169.74, 168.64000000000001)
  sky130_fd_sc_hd__and2b_2 u3816 (
    .A_N(net_n362),
    .B(net_n342),
    .X(net_n370)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (172.04, 163.20000000000002)
  sky130_fd_sc_hd__nor2_2 u3821 (
    .A(net_n11),
    .B(net_n320),
    .Y(net_n339)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (167.9, 152.32)
  sky130_fd_sc_hd__and2b_2 u3852 (
    .A_N(net_n2),
    .B(net_n7),
    .X(net_n309)
  );

  // Cell: sky130_fd_sc_hd__conb_1 at (168.36, 157.76)
  sky130_fd_sc_hd__conb_1 u3857 (
    .HI(),
    .LO(net_n162),
    .no_jumper_check(),
    .resistive_li1_ok()
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (167.9, 146.88)
  sky130_fd_sc_hd__o21a_2 u3858 (
    .A1(net_n299),
    .A2(net_n308),
    .B1(net_n300),
    .X(net_n131)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (169.74, 157.76)
  sky130_fd_sc_hd__nor2_2 u3873 (
    .A(net_n7),
    .B(net_n2),
    .Y(net_n324)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (169.28, 152.32)
  sky130_fd_sc_hd__and3_2 u3900 (
    .A(net_n7),
    .B(net_n2),
    .C(net_n8),
    .X(net_n308)
  );

  // Cell: sky130_fd_sc_hd__conb_1 at (170.66, 141.44)
  sky130_fd_sc_hd__conb_1 u3931 (
    .HI(),
    .LO(net_n137),
    .no_jumper_check(),
    .resistive_li1_ok()
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (171.12, 130.56)
  sky130_fd_sc_hd__a21oi_2 u3968 (
    .A1(net_n302),
    .A2(net_n304),
    .B1(net_n371),
    .Y(net_n70)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (165.6, 130.56)
  sky130_fd_sc_hd__nor2_2 u3976 (
    .A(net_n9),
    .B(net_n304),
    .Y(net_n305)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (167.9, 130.56)
  sky130_fd_sc_hd__a21oi_2 u3978 (
    .A1(net_n7),
    .A2(net_n9),
    .B1(net_n8),
    .Y(net_n306)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (168.82, 136.0)
  sky130_fd_sc_hd__mux2_1 u3980 (
    .A0(net_n2),
    .A1(net_n9),
    .S(net_n8),
    .X(net_n371)
  );

  // Cell: sky130_fd_sc_hd__and3b_2 at (166.52, 136.0)
  sky130_fd_sc_hd__and3b_2 u3984 (
    .A_N(net_n9),
    .B(net_n304),
    .C(net_n8),
    .X(net_n134)
  );

  // Cell: sky130_fd_sc_hd__and3b_2 at (173.88, 136.0)
  sky130_fd_sc_hd__and3b_2 u4002 (
    .A_N(net_n9),
    .B(net_n8),
    .C(net_n2),
    .X(net_n132)
  );

  // Cell: sky130_fd_sc_hd__conb_1 at (170.20000000000002, 125.12)
  sky130_fd_sc_hd__conb_1 u4022 (
    .HI(),
    .LO(net_n163),
    .no_jumper_check(),
    .resistive_li1_ok()
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (174.34, 130.56)
  sky130_fd_sc_hd__and2b_2 u4023 (
    .A_N(net_n2),
    .B(net_n7),
    .X(net_n304)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (166.52, 136.0)
  sky130_fd_sc_hd__or2_2 u4052 (
    .A(net_n8),
    .B(net_n9),
    .X(net_n302)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (178.94, 152.32)
  sky130_fd_sc_hd__and2b_2 u4070 (
    .A_N(net_n8),
    .B(net_n2),
    .X(net_n298)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (177.1, 136.0)
  sky130_fd_sc_hd__nand2_2 u4127 (
    .A(net_n7),
    .B(net_n302),
    .Y(net_n307)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (39.56, 201.28)
  sky130_fd_sc_hd__dfrtp_2 u4182 (
    .CLK(net_n254),
    .D(net_n372),
    .Q(net_n114),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (30.82, 206.72)
  sky130_fd_sc_hd__a31o_2 u4602 (
    .A1(net_n373),
    .A2(net_n374),
    .A3(net_n11),
    .B1(net_n114),
    .X(net_n372)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (35.88, 146.88)
  sky130_fd_sc_hd__dfrtp_2 u4659 (
    .CLK(net_n375),
    .D(net_n376),
    .Q(net_n189),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (27.14, 146.88)
  sky130_fd_sc_hd__and3_2 u4660 (
    .A(net_n190),
    .B(net_n187),
    .C(net_n11),
    .X(net_n377)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (28.98, 157.76)
  sky130_fd_sc_hd__dfrtp_2 u4661 (
    .CLK(net_n375),
    .D(net_n378),
    .Q(net_n188),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (26.22, 152.32)
  sky130_fd_sc_hd__dfrtp_2 u4662 (
    .CLK(net_n375),
    .D(net_n379),
    .Q(net_n187),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a221oi_2 at (28.98, 163.20000000000002)
  sky130_fd_sc_hd__a221oi_2 u4663 (
    .A1(net_n11),
    .A2(net_n373),
    .B1(net_n380),
    .B2(net_n188),
    .C1(net_n381),
    .Y(net_n378)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (23.46, 152.32)
  sky130_fd_sc_hd__and4bb_2 u4705 (
    .A_N(net_n187),
    .B_N(net_n189),
    .C(net_n188),
    .D(net_n190),
    .X(net_n373)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (25.76, 157.76)
  sky130_fd_sc_hd__nor2_2 u4710 (
    .A(net_n373),
    .B(net_n382),
    .Y(net_n379)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (33.12, 201.28)
  sky130_fd_sc_hd__and2b_2 u4722 (
    .A_N(net_n114),
    .B(enable),
    .X(net_n11)
  );

  // Cell: sky130_fd_sc_hd__a211oi_2 at (34.04, 152.32)
  sky130_fd_sc_hd__a211oi_2 u4835 (
    .A1(net_n11),
    .A2(net_n373),
    .B1(net_n384),
    .C1(net_n377),
    .Y(net_n385)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (39.56, 152.32)
  sky130_fd_sc_hd__a21oi_2 u4837 (
    .A1(net_n187),
    .A2(net_n11),
    .B1(net_n190),
    .Y(net_n384)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (30.82, 146.88)
  sky130_fd_sc_hd__dfrtp_2 u4838 (
    .CLK(net_n375),
    .D(net_n385),
    .Q(net_n190),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (34.04, 152.32)
  sky130_fd_sc_hd__xnor2_2 u4859 (
    .A(net_n187),
    .B(net_n11),
    .Y(net_n382)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (28.98, 141.44)
  sky130_fd_sc_hd__xor2_2 u4862 (
    .A(net_n189),
    .B(net_n377),
    .X(net_n376)
  );

  // Cell: sky130_fd_sc_hd__a41oi_2 at (28.060000000000002, 157.76)
  sky130_fd_sc_hd__a41oi_2 u4863 (
    .A1(net_n190),
    .A2(net_n187),
    .A3(net_n189),
    .A4(net_n11),
    .B1(net_n188),
    .Y(net_n381)
  );

  // Cell: sky130_fd_sc_hd__and4_2 at (27.14, 146.88)
  sky130_fd_sc_hd__and4_2 u4949 (
    .A(net_n190),
    .B(net_n187),
    .C(net_n189),
    .D(net_n11),
    .X(net_n380)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (85.10000000000001, 146.88)
  sky130_fd_sc_hd__dfrtp_2 u4993 (
    .CLK(net_n386),
    .D(net_n387),
    .Q(net_n388),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (86.94, 163.20000000000002)
  sky130_fd_sc_hd__a22o_2 u4999 (
    .A1(net_n389),
    .A2(net_n390),
    .B1(net_n391),
    .B2(net_n392),
    .X(net_n393)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (91.54, 157.76)
  sky130_fd_sc_hd__dfrtp_2 u5000 (
    .CLK(net_n254),
    .D(net_n394),
    .Q(net_n390),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (74.98, 146.88)
  sky130_fd_sc_hd__dfrtp_2 u5004 (
    .CLK(net_n375),
    .D(net_n395),
    .Q(net_n396),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (77.74, 141.44)
  sky130_fd_sc_hd__clkbuf_4 u5006 (
    .A(net_n386),
    .X()
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (79.12, 163.20000000000002)
  sky130_fd_sc_hd__mux2_1 u5007 (
    .A0(net_n397),
    .A1(net_n398),
    .S(net_n11),
    .X(net_n399)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (77.74, 157.76)
  sky130_fd_sc_hd__mux2_1 u5008 (
    .A0(net_n398),
    .A1(net_n390),
    .S(net_n11),
    .X(net_n400)
  );

  // Cell: sky130_fd_sc_hd__and4_2 at (77.74, 157.76)
  sky130_fd_sc_hd__and4_2 u5010 (
    .A(net_n252),
    .B(net_n270),
    .C(net_n253),
    .D(net_n247),
    .X(net_n401)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (79.12, 163.20000000000002)
  sky130_fd_sc_hd__mux2_1 u5011 (
    .A0(net_n402),
    .A1(net_n397),
    .S(net_n11),
    .X(net_n403)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (72.68, 152.32)
  sky130_fd_sc_hd__clkbuf_8 u5012 (
    .A(net_n1),
    .X(net_n386)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (74.98, 157.76)
  sky130_fd_sc_hd__and3_2 u5013 (
    .A(net_n404),
    .B(net_n401),
    .C(net_n405),
    .X(net_n116)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (76.82000000000001, 163.20000000000002)
  sky130_fd_sc_hd__dfrtp_2 u5093 (
    .CLK(net_n254),
    .D(net_n399),
    .Q(net_n397),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (65.32000000000001, 146.88)
  sky130_fd_sc_hd__clkbuf_8 u5178 (
    .A(net_n1),
    .X(net_n375)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (73.60000000000001, 146.88)
  sky130_fd_sc_hd__mux2_1 u5205 (
    .A0(net_n406),
    .A1(net_n396),
    .S(net_n11),
    .X(net_n407)
  );

  // Cell: sky130_fd_sc_hd__and4_2 at (74.52, 152.32)
  sky130_fd_sc_hd__and4_2 u5225 (
    .A(net_n237),
    .B(net_n238),
    .C(net_n225),
    .D(net_n234),
    .X(net_n404)
  );

  // Cell: sky130_fd_sc_hd__a221o_2 at (72.68, 152.32)
  sky130_fd_sc_hd__a221o_2 u5229 (
    .A1(net_n408),
    .A2(net_n409),
    .B1(net_n410),
    .B2(net_n411),
    .C1(net_n393),
    .X(net_n412)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (70.84, 152.32)
  sky130_fd_sc_hd__and3_2 u5230 (
    .A(net_n208),
    .B(net_n230),
    .C(net_n231),
    .X(net_n405)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (70.84, 157.76)
  sky130_fd_sc_hd__a31o_2 u5256 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n412),
    .B1(net_n413),
    .X(net_n414)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (74.52, 146.88)
  sky130_fd_sc_hd__mux2_1 u5263 (
    .A0(net_n388),
    .A1(net_n406),
    .S(net_n11),
    .X(net_n387)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (74.52, 141.44)
  sky130_fd_sc_hd__mux2_1 u5265 (
    .A0(net_n415),
    .A1(net_n388),
    .S(net_n11),
    .X(net_n416)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (57.5, 146.88)
  sky130_fd_sc_hd__clkbuf_4 u5290 (
    .A(net_n375),
    .X()
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (84.18, 152.32)
  sky130_fd_sc_hd__dfrtp_2 u5336 (
    .CLK(net_n386),
    .D(net_n417),
    .Q(net_n392),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (87.86, 152.32)
  sky130_fd_sc_hd__dfrtp_2 u5337 (
    .CLK(net_n386),
    .D(net_n414),
    .Q(net_n413),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (85.10000000000001, 146.88)
  sky130_fd_sc_hd__dfrtp_2 u5339 (
    .CLK(net_n386),
    .D(net_n418),
    .Q(net_n411),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (92.0, 157.76)
  sky130_fd_sc_hd__mux2_1 u5340 (
    .A0(net_n390),
    .A1(I),
    .S(net_n11),
    .X(net_n394)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (86.48, 141.44)
  sky130_fd_sc_hd__dfrtp_2 u5342 (
    .CLK(net_n294),
    .D(net_n407),
    .Q(net_n406),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (91.54, 136.0)
  sky130_fd_sc_hd__dfrtp_2 u5343 (
    .CLK(net_n294),
    .D(net_n419),
    .Q(net_n420),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (82.8, 141.44)
  sky130_fd_sc_hd__dfrtp_2 u5344 (
    .CLK(net_n294),
    .D(net_n421),
    .Q(net_n409),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (87.86, 146.88)
  sky130_fd_sc_hd__mux2_1 u5347 (
    .A0(net_n411),
    .A1(net_n409),
    .S(net_n11),
    .X(net_n418)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (87.4, 152.32)
  sky130_fd_sc_hd__dfrtp_2 u5399 (
    .CLK(net_n386),
    .D(net_n403),
    .Q(net_n402),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (84.18, 152.32)
  sky130_fd_sc_hd__mux2_1 u5400 (
    .A0(net_n392),
    .A1(net_n411),
    .S(net_n11),
    .X(net_n417)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (77.74, 157.76)
  sky130_fd_sc_hd__dfrtp_2 u5401 (
    .CLK(net_n375),
    .D(net_n400),
    .Q(net_n398),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (82.8, 141.44)
  sky130_fd_sc_hd__mux2_1 u5403 (
    .A0(net_n409),
    .A1(net_n420),
    .S(net_n11),
    .X(net_n421)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (75.9, 152.32)
  sky130_fd_sc_hd__mux2_1 u5433 (
    .A0(net_n396),
    .A1(net_n402),
    .S(net_n11),
    .X(net_n395)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (84.64, 146.88)
  sky130_fd_sc_hd__inv_2 u5532 (
    .A(net_n413),
    .Y(net_n87)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (81.88, 136.0)
  sky130_fd_sc_hd__mux2_1 u5537 (
    .A0(net_n420),
    .A1(net_n415),
    .S(net_n11),
    .X(net_n419)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (87.4, 136.0)
  sky130_fd_sc_hd__dfrtp_2 u5569 (
    .CLK(net_n294),
    .D(net_n416),
    .Q(net_n415),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (81.88, 32.64)
  sky130_fd_sc_hd__and2b_2 u5603 (
    .A_N(net_n422),
    .B(net_n423),
    .X(net_n424)
  );

  // Cell: INTERNAL_7 at (48.25, -52.72)
  INTERNAL_7 u5608 (

  );

  // Cell: sky130_fd_sc_hd__or3_2 at (77.74, 54.4)
  sky130_fd_sc_hd__or3_2 u5612 (
    .A(net_n425),
    .B(net_n426),
    .C(net_n427),
    .X(net_n428)
  );

  // Cell: sky130_fd_sc_hd__and4_2 at (78.2, 54.4)
  sky130_fd_sc_hd__and4_2 u5613 (
    .A(net_n429),
    .B(net_n430),
    .C(net_n431),
    .D(net_n432),
    .X(net_n433)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (74.98, 48.96)
  sky130_fd_sc_hd__nor2_2 u5614 (
    .A(net_n431),
    .B(net_n434),
    .Y(net_n435)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (74.52, 59.84)
  sky130_fd_sc_hd__and2b_2 u5615 (
    .A_N(net_n433),
    .B(net_n436),
    .X(net_n437)
  );

  // Cell: sky130_fd_sc_hd__nor3_2 at (72.22, 48.96)
  sky130_fd_sc_hd__nor3_2 u5616 (
    .A(net_n438),
    .B(net_n429),
    .C(net_n428),
    .Y(net_n439)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (75.44, 43.52)
  sky130_fd_sc_hd__inv_2 u5626 (
    .A(net_n431),
    .Y(net_n440)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (73.60000000000001, 43.52)
  sky130_fd_sc_hd__o21a_2 u5627 (
    .A1(net_n441),
    .A2(net_n442),
    .B1(net_n443),
    .X(net_n444)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (74.98, 38.08)
  sky130_fd_sc_hd__nand2_2 u5628 (
    .A(net_n445),
    .B(net_n438),
    .Y(net_n441)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (73.14, 108.8)
  sky130_fd_sc_hd__clkbuf_8 u5629 (
    .A(net_n1),
    .X(net_n446)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (80.04, 97.92)
  sky130_fd_sc_hd__inv_2 u5630 (
    .A(net_n373),
    .Y(net_n447)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (81.88, 97.92)
  sky130_fd_sc_hd__dfrtp_2 u5634 (
    .CLK(net_n446),
    .D(net_n448),
    .Q(net_n449),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (89.24, 103.36)
  sky130_fd_sc_hd__inv_2 u5636 (
    .A(net_n449),
    .Y(net_n450)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (91.08, 76.16)
  sky130_fd_sc_hd__clkbuf_8 u5637 (
    .A(net_n1),
    .X(net_n451)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (80.96000000000001, 92.48)
  sky130_fd_sc_hd__dfrtp_2 u5638 (
    .CLK(net_n446),
    .D(net_n452),
    .Q(net_n453),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (79.12, 108.8)
  sky130_fd_sc_hd__dfrtp_2 u5639 (
    .CLK(net_n446),
    .D(net_n454),
    .Q(net_n455),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (83.26, 97.92)
  sky130_fd_sc_hd__a31o_2 u5640 (
    .A1(net_n373),
    .A2(net_n11),
    .A3(net_n456),
    .B1(net_n453),
    .X(net_n452)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (93.84, 108.8)
  sky130_fd_sc_hd__clkbuf_8 u5673 (
    .A(net_n1),
    .X(net_n294)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (85.56, 108.8)
  sky130_fd_sc_hd__o211a_2 u5677 (
    .A1(net_n449),
    .A2(net_n457),
    .B1(net_n458),
    .C1(net_n11),
    .X(net_n459)
  );

  // Cell: sky130_fd_sc_hd__or4bb_2 at (85.56, 103.36)
  sky130_fd_sc_hd__or4bb_2 u5680 (
    .A(net_n187),
    .B(net_n189),
    .C_N(net_n188),
    .D_N(net_n190),
    .X(net_n408)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (78.66, 108.8)
  sky130_fd_sc_hd__or4_2 u5681 (
    .A(net_n187),
    .B(net_n190),
    .C(net_n189),
    .D(net_n188),
    .X(net_n389)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (81.88, 97.92)
  sky130_fd_sc_hd__a21oi_2 u5682 (
    .A1(net_n450),
    .A2(net_n457),
    .B1(net_n460),
    .Y(net_n448)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (80.96000000000001, 103.36)
  sky130_fd_sc_hd__mux2_1 u5683 (
    .A0(net_n457),
    .A1(net_n458),
    .S(net_n449),
    .X(net_n456)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (80.96000000000001, 114.24000000000001)
  sky130_fd_sc_hd__or2_2 u5684 (
    .A(net_n455),
    .B(I),
    .X(net_n458)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (84.64, 114.24000000000001)
  sky130_fd_sc_hd__clkbuf_4 u5702 (
    .A(net_n294),
    .X()
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (76.36, 108.8)
  sky130_fd_sc_hd__nand2_2 u5711 (
    .A(net_n455),
    .B(I),
    .Y(net_n457)
  );

  // Cell: sky130_fd_sc_hd__conb_1 at (77.28, 97.92)
  sky130_fd_sc_hd__conb_1 u5765 (
    .HI(net_n410),
    .LO(),
    .no_jumper_check(net_n410),
    .resistive_li1_ok()
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (75.9, 103.36)
  sky130_fd_sc_hd__inv_2 u5775 (
    .A(net_n11),
    .Y(net_n461)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (76.82000000000001, 103.36)
  sky130_fd_sc_hd__mux2_1 u5778 (
    .A0(net_n373),
    .A1(net_n450),
    .S(net_n461),
    .X(net_n460)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (77.28, 103.36)
  sky130_fd_sc_hd__a22o_2 u5781 (
    .A1(net_n461),
    .A2(net_n455),
    .B1(net_n459),
    .B2(net_n447),
    .X(net_n454)
  );

  // Cell: sky130_fd_sc_hd__buf_2 at (85.10000000000001, 103.36)
  sky130_fd_sc_hd__buf_2 u5789 (
    .A(net_n389),
    .X(net_n391)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (83.26, 76.16)
  sky130_fd_sc_hd__clkbuf_4 u5830 (
    .A(net_n451),
    .X()
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (80.5, 92.48)
  sky130_fd_sc_hd__inv_2 u5836 (
    .A(net_n453),
    .Y(net_n117)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (70.38, 108.8)
  sky130_fd_sc_hd__clkbuf_4 u5882 (
    .A(net_n446),
    .X()
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (71.3, 54.4)
  sky130_fd_sc_hd__a31o_2 u5947 (
    .A1(net_n430),
    .A2(net_n431),
    .A3(net_n432),
    .B1(net_n429),
    .X(net_n436)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (74.52, 48.96)
  sky130_fd_sc_hd__a31o_2 u6017 (
    .A1(net_n445),
    .A2(net_n431),
    .A3(net_n432),
    .B1(net_n438),
    .X(net_n443)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (71.3, 43.52)
  sky130_fd_sc_hd__and2_2 u6032 (
    .A(net_n445),
    .B(net_n438),
    .X(net_n430)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (72.22, 48.96)
  sky130_fd_sc_hd__and3_2 u6033 (
    .A(net_n462),
    .B(net_n463),
    .C(net_n431),
    .X(net_n422)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (71.3, 43.52)
  sky130_fd_sc_hd__o21a_2 u6041 (
    .A1(net_n426),
    .A2(net_n422),
    .B1(net_n442),
    .X(net_n464)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (69.46000000000001, 48.96)
  sky130_fd_sc_hd__nand2_2 u6067 (
    .A(net_n431),
    .B(net_n432),
    .Y(net_n442)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (87.86, 54.4)
  sky130_fd_sc_hd__and3_2 u6092 (
    .A(net_n465),
    .B(net_n466),
    .C(net_n430),
    .X(net_n52)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (84.18, 54.4)
  sky130_fd_sc_hd__and2b_2 u6094 (
    .A_N(net_n462),
    .B(net_n425),
    .X(net_n466)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (81.88, 48.96)
  sky130_fd_sc_hd__dfrtp_2 u6095 (
    .CLK(net_n451),
    .D(net_n464),
    .Q(net_n426),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a32o_2 at (92.0, 48.96)
  sky130_fd_sc_hd__a32o_2 u6103 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n466),
    .B1(net_n440),
    .B2(net_n462),
    .X(net_n467)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (82.8, 43.52)
  sky130_fd_sc_hd__dfrtp_2 u6106 (
    .CLK(net_n451),
    .D(net_n424),
    .Q(net_n463),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nor4b_2 at (93.38, 43.52)
  sky130_fd_sc_hd__nor4b_2 u6107 (
    .A(net_n462),
    .B(net_n463),
    .C(net_n445),
    .D_N(net_n439),
    .Y(net_n53)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (90.62, 38.08)
  sky130_fd_sc_hd__dfrtp_2 u6109 (
    .CLK(net_n0),
    .D(net_n467),
    .Q(net_n462),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (78.2, 54.4)
  sky130_fd_sc_hd__xor2_2 u6110 (
    .A(net_n427),
    .B(net_n433),
    .X(net_n468)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (90.62, 54.4)
  sky130_fd_sc_hd__dfrtp_2 u6111 (
    .CLK(net_n0),
    .D(net_n435),
    .Q(net_n425),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (87.4, 59.84)
  sky130_fd_sc_hd__dfrtp_2 u6159 (
    .CLK(net_n0),
    .D(net_n468),
    .Q(net_n427),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (80.96000000000001, 54.4)
  sky130_fd_sc_hd__a21oi_2 u6160 (
    .A1(I),
    .A2(net_n11),
    .B1(net_n425),
    .Y(net_n434)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (82.8, 59.84)
  sky130_fd_sc_hd__and3_2 u6166 (
    .A(net_n425),
    .B(I),
    .C(net_n11),
    .X(net_n431)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (81.88, 48.96)
  sky130_fd_sc_hd__and4bb_2 u6194 (
    .A_N(net_n463),
    .B_N(net_n427),
    .C(net_n429),
    .D(net_n426),
    .X(net_n465)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (76.82000000000001, 43.52)
  sky130_fd_sc_hd__xnor2_2 u6195 (
    .A(net_n445),
    .B(net_n442),
    .Y(net_n469)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (86.48, 43.52)
  sky130_fd_sc_hd__dfrtp_2 u6197 (
    .CLK(net_n451),
    .D(net_n444),
    .Q(net_n438),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (77.74, 38.08)
  sky130_fd_sc_hd__dfrtp_2 u6198 (
    .CLK(net_n451),
    .D(net_n469),
    .Q(net_n445),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (75.9, 48.96)
  sky130_fd_sc_hd__dfrtp_2 u6199 (
    .CLK(net_n451),
    .D(net_n437),
    .Q(net_n429),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__and4_2 at (77.28, 38.08)
  sky130_fd_sc_hd__and4_2 u6298 (
    .A(net_n462),
    .B(net_n463),
    .C(net_n445),
    .D(net_n439),
    .X(net_n118)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (94.3, 48.96)
  sky130_fd_sc_hd__and3_2 u6350 (
    .A(net_n462),
    .B(net_n463),
    .C(net_n426),
    .X(net_n432)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (95.22, 48.96)
  sky130_fd_sc_hd__a21o_2 u6356 (
    .A1(net_n462),
    .A2(net_n431),
    .B1(net_n463),
    .X(net_n423)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (28.98, 97.92)
  sky130_fd_sc_hd__a31o_2 u6403 (
    .A1(net_n373),
    .A2(net_n11),
    .A3(net_n470),
    .B1(net_n471),
    .X(net_n472)
  );

  // Cell: sky130_fd_sc_hd__and4_2 at (26.22, 103.36)
  sky130_fd_sc_hd__and4_2 u6404 (
    .A(net_n373),
    .B(net_n11),
    .C(net_n471),
    .D(net_n470),
    .X(net_n473)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (28.98, 97.92)
  sky130_fd_sc_hd__dfrtp_2 u6435 (
    .CLK(net_n446),
    .D(net_n474),
    .Q(net_n475),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (28.98, 108.8)
  sky130_fd_sc_hd__dfrtp_2 u6436 (
    .CLK(net_n446),
    .D(net_n476),
    .Q(net_n477),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__o311a_2 at (34.96, 97.92)
  sky130_fd_sc_hd__o311a_2 u6437 (
    .A1(net_n470),
    .A2(net_n478),
    .A3(net_n479),
    .B1(net_n480),
    .C1(net_n481),
    .X(net_n474)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (28.060000000000002, 97.92)
  sky130_fd_sc_hd__and3_2 u6441 (
    .A(net_n373),
    .B(net_n11),
    .C(net_n478),
    .X(net_n482)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (41.86, 92.48)
  sky130_fd_sc_hd__dfrtp_2 u6442 (
    .CLK(net_n451),
    .D(net_n483),
    .Q(net_n470),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (40.480000000000004, 97.92)
  sky130_fd_sc_hd__mux2_1 u6444 (
    .A0(net_n482),
    .A1(net_n479),
    .S(net_n470),
    .X(net_n483)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (40.94, 97.92)
  sky130_fd_sc_hd__nand2_2 u6445 (
    .A(net_n373),
    .B(net_n11),
    .Y(net_n479)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (36.34, 103.36)
  sky130_fd_sc_hd__o211a_2 u6446 (
    .A1(net_n478),
    .A2(net_n479),
    .B1(net_n472),
    .C1(net_n484),
    .X(net_n485)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (42.78, 103.36)
  sky130_fd_sc_hd__dfrtp_2 u6451 (
    .CLK(net_n446),
    .D(net_n485),
    .Q(net_n471),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nand3b_2 at (29.900000000000002, 103.36)
  sky130_fd_sc_hd__nand3b_2 u6472 (
    .A_N(net_n477),
    .B(net_n475),
    .C(net_n471),
    .Y(net_n478)
  );

  // Cell: sky130_fd_sc_hd__nand3_2 at (33.58, 108.8)
  sky130_fd_sc_hd__nand3_2 u6473 (
    .A(net_n477),
    .B(net_n475),
    .C(net_n473),
    .Y(net_n480)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (26.68, 108.8)
  sky130_fd_sc_hd__a21o_2 u6474 (
    .A1(net_n477),
    .A2(net_n473),
    .B1(net_n475),
    .X(net_n481)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (33.58, 108.8)
  sky130_fd_sc_hd__inv_2 u6478 (
    .A(net_n473),
    .Y(net_n484)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (27.14, 103.36)
  sky130_fd_sc_hd__xor2_2 u6481 (
    .A(net_n477),
    .B(net_n473),
    .X(net_n476)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (29.900000000000002, 92.48)
  sky130_fd_sc_hd__nor2_2 u6609 (
    .A(net_n470),
    .B(net_n478),
    .Y(net_n374)
  );

  // Cell: INTERNAL_3 at (1.33, -52.72)
  INTERNAL_3 u6754 (

  );

  // Cell: INTERNAL_7 at (4.09, -52.72)
  INTERNAL_7 u6755 (

  );

  // Cell: INTERNAL_7 at (9.61, -52.72)
  INTERNAL_7 u6756 (

  );

  // Cell: INTERNAL_3 at (15.13, -52.72)
  INTERNAL_3 u6757 (

  );

  // Cell: INTERNAL_3 at (20.650000000000002, -52.72)
  INTERNAL_3 u6758 (

  );

  // Cell: INTERNAL_3 at (26.17, -52.72)
  INTERNAL_3 u6759 (

  );

  // Cell: INTERNAL_7 at (28.93, -52.72)
  INTERNAL_7 u6760 (

  );

  // Cell: INTERNAL_3 at (34.45, -52.72)
  INTERNAL_3 u6761 (

  );

  // Cell: INTERNAL_3 at (45.49, -52.72)
  INTERNAL_3 u6762 (

  );

  // Cell: sky130_fd_sc_hd__and3_2 at (81.88, 27.2)
  sky130_fd_sc_hd__and3_2 u6802 (
    .A(net_n486),
    .B(net_n487),
    .C(net_n488),
    .X(net_n115)
  );

  // Cell: sky130_fd_sc_hd__and4_2 at (83.72, 21.76)
  sky130_fd_sc_hd__and4_2 u6806 (
    .A(net_n489),
    .B(net_n490),
    .C(net_n295),
    .D(net_n491),
    .X(net_n486)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (79.12, 27.2)
  sky130_fd_sc_hd__and3_2 u6809 (
    .A(net_n287),
    .B(net_n288),
    .C(net_n293),
    .X(net_n488)
  );

  // Cell: sky130_fd_sc_hd__and4_2 at (85.56, 27.2)
  sky130_fd_sc_hd__and4_2 u6822 (
    .A(net_n492),
    .B(net_n493),
    .C(net_n494),
    .D(net_n495),
    .X(net_n487)
  );

  // Cell: INTERNAL_7 at (59.29, -52.72)
  INTERNAL_7 u6864 (

  );

  // Cell: INTERNAL_3 at (64.81, -52.72)
  INTERNAL_3 u6865 (

  );

  // Cell: INTERNAL_3 at (70.33, -52.72)
  INTERNAL_3 u6866 (

  );

  // Cell: INTERNAL_3 at (56.53, -52.72)
  INTERNAL_3 u6867 (

  );

  // Cell: INTERNAL_3 at (81.37, -52.72)
  INTERNAL_3 u6868 (

  );

  // Cell: INTERNAL_3 at (86.89, -52.72)
  INTERNAL_3 u6869 (

  );

  // Cell: INTERNAL_7 at (89.65, -52.72)
  INTERNAL_7 u6870 (

  );

  // Cell: INTERNAL_7 at (75.85000000000001, -52.72)
  INTERNAL_7 u6871 (

  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (150.88, 32.64)
  sky130_fd_sc_hd__nor2_2 u6872 (
    .A(net_n496),
    .B(net_n497),
    .Y(net_n498)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (151.8, 21.76)
  sky130_fd_sc_hd__nor2_2 u6921 (
    .A(net_n499),
    .B(net_n500),
    .Y(net_n501)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (149.5, 27.2)
  sky130_fd_sc_hd__nor2_2 u6936 (
    .A(net_n502),
    .B(net_n503),
    .Y(net_n504)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (170.20000000000002, 32.64)
  sky130_fd_sc_hd__xnor2_2 u6945 (
    .A(net_n505),
    .B(net_n506),
    .Y(net_n507)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (171.12, 32.64)
  sky130_fd_sc_hd__xor2_2 u6946 (
    .A(net_n508),
    .B(net_n509),
    .X(net_n510)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (164.68, 32.64)
  sky130_fd_sc_hd__o211a_2 u6947 (
    .A1(net_n511),
    .A2(net_n512),
    .B1(net_n507),
    .C1(net_n513),
    .X(net_n514)
  );

  // Cell: sky130_fd_sc_hd__o311a_2 at (161.92000000000002, 32.64)
  sky130_fd_sc_hd__o311a_2 u6948 (
    .A1(net_n504),
    .A2(net_n510),
    .A3(net_n515),
    .B1(net_n507),
    .C1(net_n516),
    .X(net_n517)
  );

  // Cell: sky130_fd_sc_hd__o2bb2a_2 at (170.20000000000002, 32.64)
  sky130_fd_sc_hd__o2bb2a_2 u6949 (
    .A1_N(net_n189),
    .A2_N(net_n518),
    .B1(net_n519),
    .B2(net_n477),
    .X(net_n520)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (171.12, 32.64)
  sky130_fd_sc_hd__xor2_2 u6950 (
    .A(net_n470),
    .B(net_n477),
    .X(net_n521)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (157.78, 32.64)
  sky130_fd_sc_hd__a21o_2 u6952 (
    .A1(net_n522),
    .A2(net_n523),
    .B1(net_n524),
    .X(net_n508)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (155.48, 32.64)
  sky130_fd_sc_hd__nand2_2 u6953 (
    .A(net_n475),
    .B(net_n521),
    .Y(net_n525)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (161.92000000000002, 32.64)
  sky130_fd_sc_hd__a31o_2 u6954 (
    .A1(net_n471),
    .A2(net_n477),
    .A3(net_n475),
    .B1(net_n526),
    .X(net_n527)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (155.48, 32.64)
  sky130_fd_sc_hd__a21oi_2 u6955 (
    .A1(net_n471),
    .A2(net_n521),
    .B1(net_n528),
    .Y(net_n518)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (153.18, 32.64)
  sky130_fd_sc_hd__nand2_2 u6956 (
    .A(net_n470),
    .B(net_n477),
    .Y(net_n529)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (155.48, 32.64)
  sky130_fd_sc_hd__nor2_2 u6957 (
    .A(net_n471),
    .B(net_n525),
    .Y(net_n530)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (182.62, 32.64)
  sky130_fd_sc_hd__mux2_1 u6960 (
    .A0(net_n512),
    .A1(net_n503),
    .S(net_n531),
    .X(net_n532)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (176.18, 32.64)
  sky130_fd_sc_hd__inv_2 u6962 (
    .A(net_n533),
    .Y(net_n534)
  );

  // Cell: sky130_fd_sc_hd__o22ai_2 at (182.62, 32.64)
  sky130_fd_sc_hd__o22ai_2 u6963 (
    .A1(net_n503),
    .A2(net_n535),
    .B1(net_n536),
    .B2(net_n537),
    .Y(net_n538)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (177.1, 32.64)
  sky130_fd_sc_hd__xnor2_2 u6964 (
    .A(net_n522),
    .B(net_n539),
    .Y(net_n503)
  );

  // Cell: sky130_fd_sc_hd__a211o_2 at (186.76, 32.64)
  sky130_fd_sc_hd__a211o_2 u6968 (
    .A1(net_n503),
    .A2(net_n540),
    .B1(net_n541),
    .C1(net_n510),
    .X(net_n542)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (177.1, 92.48)
  sky130_fd_sc_hd__nand2b_2 u6969 (
    .A_N(net_n7),
    .B(net_n8),
    .Y(net_n543)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (177.1, 97.92)
  sky130_fd_sc_hd__nand2_2 u6970 (
    .A(net_n8),
    .B(net_n9),
    .Y(net_n544)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (176.64000000000001, 108.8)
  sky130_fd_sc_hd__nor2_2 u6971 (
    .A(net_n2),
    .B(net_n9),
    .Y(net_n545)
  );

  // Cell: sky130_fd_sc_hd__o31a_2 at (172.96, 87.04)
  sky130_fd_sc_hd__o31a_2 u6972 (
    .A1(net_n546),
    .A2(net_n547),
    .A3(net_n548),
    .B1(net_n549),
    .X(net_n141)
  );

  // Cell: sky130_fd_sc_hd__and4b_2 at (173.42000000000002, 114.24000000000001)
  sky130_fd_sc_hd__and4b_2 u6973 (
    .A_N(net_n9),
    .B(net_n8),
    .C(net_n2),
    .D(net_n7),
    .X(net_n5)
  );

  // Cell: sky130_fd_sc_hd__o22a_2 at (171.12, 97.92)
  sky130_fd_sc_hd__o22a_2 u6974 (
    .A1(net_n9),
    .A2(net_n550),
    .B1(net_n544),
    .B2(net_n551),
    .X(net_n148)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (172.04, 81.60000000000001)
  sky130_fd_sc_hd__and2b_2 u6975 (
    .A_N(net_n2),
    .B(net_n8),
    .X(net_n546)
  );

  // Cell: sky130_fd_sc_hd__nor3_2 at (178.02, 97.92)
  sky130_fd_sc_hd__nor3_2 u6976 (
    .A(net_n8),
    .B(net_n551),
    .C(net_n552),
    .Y(net_n548)
  );

  // Cell: sky130_fd_sc_hd__o21ai_2 at (177.1, 54.4)
  sky130_fd_sc_hd__o21ai_2 u6977 (
    .A1(net_n496),
    .A2(net_n553),
    .B1(net_n510),
    .Y(net_n554)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (176.64000000000001, 54.4)
  sky130_fd_sc_hd__o211a_2 u6978 (
    .A1(net_n555),
    .A2(net_n556),
    .B1(net_n557),
    .C1(net_n558),
    .X(net_n291)
  );

  // Cell: sky130_fd_sc_hd__a221o_2 at (177.56, 43.52)
  sky130_fd_sc_hd__a221o_2 u6979 (
    .A1(net_n510),
    .A2(net_n538),
    .B1(net_n559),
    .B2(net_n560),
    .C1(net_n561),
    .X(net_n562)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (171.12, 38.08)
  sky130_fd_sc_hd__xnor2_2 u6980 (
    .A(net_n563),
    .B(net_n520),
    .Y(net_n539)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (170.20000000000002, 48.96)
  sky130_fd_sc_hd__xnor2_2 u6981 (
    .A(net_n564),
    .B(net_n565),
    .Y(net_n561)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (171.12, 38.08)
  sky130_fd_sc_hd__xor2_2 u6982 (
    .A(net_n505),
    .B(net_n506),
    .X(net_n537)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (171.12, 43.52)
  sky130_fd_sc_hd__xor2_2 u6983 (
    .A(net_n564),
    .B(net_n565),
    .X(net_n555)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (174.8, 48.96)
  sky130_fd_sc_hd__or3_2 u6984 (
    .A(net_n561),
    .B(net_n514),
    .C(net_n566),
    .X(net_n567)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (174.8, 48.96)
  sky130_fd_sc_hd__o211a_2 u6987 (
    .A1(net_n555),
    .A2(net_n568),
    .B1(net_n562),
    .C1(net_n558),
    .X(net_n290)
  );

  // Cell: sky130_fd_sc_hd__o22a_2 at (172.04, 108.8)
  sky130_fd_sc_hd__o22a_2 u6989 (
    .A1(net_n2),
    .A2(net_n8),
    .B1(net_n569),
    .B2(net_n5),
    .X(net_n144)
  );

  // Cell: sky130_fd_sc_hd__nor4b_2 at (171.12, 114.24000000000001)
  sky130_fd_sc_hd__nor4b_2 u6990 (
    .A(net_n7),
    .B(net_n2),
    .C(net_n8),
    .D_N(net_n9),
    .Y(net_n4)
  );

  // Cell: sky130_fd_sc_hd__a31oi_2 at (177.56, 92.48)
  sky130_fd_sc_hd__a31oi_2 u6991 (
    .A1(net_n570),
    .A2(net_n571),
    .A3(net_n572),
    .B1(net_n573),
    .Y(net_n547)
  );

  // Cell: sky130_fd_sc_hd__o32ai_2 at (171.58, 87.04)
  sky130_fd_sc_hd__o32ai_2 u6992 (
    .A1(net_n546),
    .A2(net_n547),
    .A3(net_n574),
    .B1(net_n571),
    .B2(net_n7),
    .Y(net_n151)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (181.24, 97.92)
  sky130_fd_sc_hd__nand2b_2 u6995 (
    .A_N(net_n8),
    .B(net_n9),
    .Y(net_n571)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (178.02, 114.24000000000001)
  sky130_fd_sc_hd__or3_2 u7006 (
    .A(net_n569),
    .B(net_n5),
    .C(net_n4),
    .X(net_n159)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (176.64000000000001, 114.24000000000001)
  sky130_fd_sc_hd__a21oi_2 u7057 (
    .A1(net_n7),
    .A2(net_n2),
    .B1(net_n9),
    .Y(net_n569)
  );

  // Cell: sky130_fd_sc_hd__a311o_2 at (181.70000000000002, 92.48)
  sky130_fd_sc_hd__a311o_2 u7091 (
    .A1(net_n570),
    .A2(net_n571),
    .A3(net_n572),
    .B1(net_n575),
    .C1(net_n573),
    .X(net_n549)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (181.24, 92.48)
  sky130_fd_sc_hd__nand2b_2 u7104 (
    .A_N(net_n9),
    .B(net_n8),
    .Y(net_n572)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (178.02, 92.48)
  sky130_fd_sc_hd__a21oi_2 u7153 (
    .A1(net_n7),
    .A2(net_n2),
    .B1(net_n9),
    .Y(net_n573)
  );

  // Cell: sky130_fd_sc_hd__o21bai_2 at (170.20000000000002, 97.92)
  sky130_fd_sc_hd__o21bai_2 u7167 (
    .A1(net_n551),
    .A2(net_n571),
    .B1_N(net_n576),
    .Y(net_n143)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (170.20000000000002, 97.92)
  sky130_fd_sc_hd__nand2_2 u7169 (
    .A(net_n7),
    .B(net_n2),
    .Y(net_n550)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (173.42000000000002, 114.24000000000001)
  sky130_fd_sc_hd__and4bb_2 u7216 (
    .A_N(net_n8),
    .B_N(net_n9),
    .C(net_n7),
    .D(net_n2),
    .X(net_n156)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (172.04, 103.36)
  sky130_fd_sc_hd__nor2_2 u7230 (
    .A(net_n9),
    .B(net_n550),
    .Y(net_n98)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (174.34, 108.8)
  sky130_fd_sc_hd__a21o_2 u7237 (
    .A1(net_n7),
    .A2(net_n545),
    .B1(net_n4),
    .X(net_n167)
  );

  // Cell: sky130_fd_sc_hd__nor3_2 at (171.12, 114.24000000000001)
  sky130_fd_sc_hd__nor3_2 u7238 (
    .A(net_n7),
    .B(net_n2),
    .C(net_n8),
    .Y(net_n577)
  );

  // Cell: sky130_fd_sc_hd__conb_1 at (168.82, 108.8)
  sky130_fd_sc_hd__conb_1 u7240 (
    .HI(),
    .LO(net_n157),
    .no_jumper_check(),
    .resistive_li1_ok()
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (168.36, 97.92)
  sky130_fd_sc_hd__and2_2 u7252 (
    .A(net_n550),
    .B(net_n544),
    .X(net_n103)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (172.04, 108.8)
  sky130_fd_sc_hd__a31o_2 u7259 (
    .A1(net_n7),
    .A2(net_n8),
    .A3(net_n545),
    .B1(net_n577),
    .X(net_n166)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (168.36, 87.04)
  sky130_fd_sc_hd__and2b_2 u7287 (
    .A_N(net_n8),
    .B(net_n7),
    .X(net_n575)
  );

  // Cell: sky130_fd_sc_hd__conb_1 at (165.6, 87.04)
  sky130_fd_sc_hd__conb_1 u7290 (
    .HI(),
    .LO(net_n96),
    .no_jumper_check(),
    .resistive_li1_ok()
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (166.06, 92.48)
  sky130_fd_sc_hd__a21o_2 u7291 (
    .A1(net_n543),
    .A2(net_n578),
    .B1(net_n2),
    .X(net_n579)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (172.96, 87.04)
  sky130_fd_sc_hd__nand2b_2 u7301 (
    .A_N(net_n8),
    .B(net_n7),
    .Y(net_n578)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (165.6, 87.04)
  sky130_fd_sc_hd__and2_2 u7311 (
    .A(net_n2),
    .B(net_n543),
    .X(net_n574)
  );

  // Cell: sky130_fd_sc_hd__and3b_2 at (172.96, 92.48)
  sky130_fd_sc_hd__and3b_2 u7314 (
    .A_N(net_n551),
    .B(net_n543),
    .C(net_n573),
    .X(net_n576)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (166.98, 87.04)
  sky130_fd_sc_hd__and2_2 u7317 (
    .A(net_n7),
    .B(net_n2),
    .X(net_n552)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (167.9, 92.48)
  sky130_fd_sc_hd__xnor2_2 u7326 (
    .A(net_n576),
    .B(net_n579),
    .Y(net_n106)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (165.6, 92.48)
  sky130_fd_sc_hd__nor2_2 u7335 (
    .A(net_n7),
    .B(net_n2),
    .Y(net_n551)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (167.44, 54.4)
  sky130_fd_sc_hd__nor2_2 u7374 (
    .A(net_n580),
    .B(net_n581),
    .Y(net_n509)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (167.44, 54.4)
  sky130_fd_sc_hd__nand2_2 u7375 (
    .A(net_n563),
    .B(net_n520),
    .Y(net_n523)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (172.96, 54.4)
  sky130_fd_sc_hd__a21o_2 u7376 (
    .A1(net_n508),
    .A2(net_n509),
    .B1(net_n580),
    .X(net_n505)
  );

  // Cell: sky130_fd_sc_hd__a211o_2 at (161.0, 38.08)
  sky130_fd_sc_hd__a211o_2 u7379 (
    .A1(net_n510),
    .A2(net_n582),
    .B1(net_n532),
    .C1(net_n507),
    .X(net_n583)
  );

  // Cell: sky130_fd_sc_hd__o22ai_2 at (160.54, 38.08)
  sky130_fd_sc_hd__o22ai_2 u7380 (
    .A1(net_n471),
    .A2(net_n525),
    .B1(net_n584),
    .B2(net_n527),
    .Y(net_n585)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (164.68, 43.52)
  sky130_fd_sc_hd__a21o_2 u7381 (
    .A1(net_n586),
    .A2(net_n526),
    .B1(net_n587),
    .X(net_n565)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (164.68, 48.96)
  sky130_fd_sc_hd__and3_2 u7382 (
    .A(net_n588),
    .B(net_n589),
    .C(net_n590),
    .X(net_n581)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (161.0, 43.52)
  sky130_fd_sc_hd__or3_2 u7383 (
    .A(net_n530),
    .B(net_n526),
    .C(net_n591),
    .X(net_n590)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (168.82, 54.4)
  sky130_fd_sc_hd__nor2_2 u7400 (
    .A(net_n592),
    .B(net_n593),
    .Y(net_n558)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (171.12, 54.4)
  sky130_fd_sc_hd__and3_2 u7404 (
    .A(net_n507),
    .B(net_n594),
    .C(net_n595),
    .X(net_n596)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (161.46, 43.52)
  sky130_fd_sc_hd__a21oi_2 u7414 (
    .A1(net_n505),
    .A2(net_n585),
    .B1(net_n597),
    .Y(net_n564)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (158.24, 43.52)
  sky130_fd_sc_hd__nor2_2 u7415 (
    .A(net_n563),
    .B(net_n520),
    .Y(net_n524)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (157.78, 38.08)
  sky130_fd_sc_hd__and2b_2 u7416 (
    .A_N(net_n597),
    .B(net_n585),
    .X(net_n506)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (154.56, 38.08)
  sky130_fd_sc_hd__and3_2 u7417 (
    .A(net_n529),
    .B(net_n525),
    .C(net_n598),
    .X(net_n591)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (158.70000000000002, 43.52)
  sky130_fd_sc_hd__nor2_2 u7435 (
    .A(net_n564),
    .B(net_n565),
    .Y(net_n592)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (154.56, 38.08)
  sky130_fd_sc_hd__nor2_2 u7454 (
    .A(net_n529),
    .B(net_n598),
    .Y(net_n526)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (152.26, 38.08)
  sky130_fd_sc_hd__nand2_2 u7465 (
    .A(net_n471),
    .B(net_n477),
    .Y(net_n586)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (157.32, 38.08)
  sky130_fd_sc_hd__a21oi_2 u7546 (
    .A1(net_n475),
    .A2(net_n586),
    .B1(net_n526),
    .Y(net_n587)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (157.78, 38.08)
  sky130_fd_sc_hd__a21oi_2 u7548 (
    .A1(net_n471),
    .A2(net_n475),
    .B1(net_n477),
    .Y(net_n584)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (169.28, 48.96)
  sky130_fd_sc_hd__a21oi_2 u7560 (
    .A1(net_n588),
    .A2(net_n589),
    .B1(net_n590),
    .Y(net_n580)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (170.20000000000002, 48.96)
  sky130_fd_sc_hd__o211a_2 u7563 (
    .A1(net_n555),
    .A2(net_n599),
    .B1(net_n600),
    .C1(net_n558),
    .X(net_n292)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (166.98, 43.52)
  sky130_fd_sc_hd__xnor2_2 u7564 (
    .A(net_n188),
    .B(net_n601),
    .Y(net_n563)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (165.14000000000001, 43.52)
  sky130_fd_sc_hd__xnor2_2 u7565 (
    .A(net_n586),
    .B(net_n602),
    .Y(net_n601)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (171.12, 38.08)
  sky130_fd_sc_hd__xnor2_2 u7566 (
    .A(net_n471),
    .B(net_n475),
    .Y(net_n598)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (171.12, 38.08)
  sky130_fd_sc_hd__xor2_2 u7567 (
    .A(net_n475),
    .B(net_n521),
    .X(net_n602)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (163.76, 43.52)
  sky130_fd_sc_hd__nand2b_2 u7656 (
    .A_N(net_n586),
    .B(net_n602),
    .Y(net_n588)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (166.06, 48.96)
  sky130_fd_sc_hd__nand2_2 u7660 (
    .A(net_n188),
    .B(net_n601),
    .Y(net_n589)
  );

  // Cell: sky130_fd_sc_hd__o21ai_2 at (179.86, 54.4)
  sky130_fd_sc_hd__o21ai_2 u7764 (
    .A1(net_n537),
    .A2(net_n603),
    .B1(net_n604),
    .Y(net_n568)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (186.3, 38.08)
  sky130_fd_sc_hd__or2_2 u7766 (
    .A(net_n605),
    .B(net_n606),
    .X(net_n607)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (188.6, 38.08)
  sky130_fd_sc_hd__a21oi_2 u7767 (
    .A1(net_n511),
    .A2(net_n608),
    .B1(net_n507),
    .Y(net_n566)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (188.14000000000001, 43.52)
  sky130_fd_sc_hd__a21o_2 u7768 (
    .A1(net_n537),
    .A2(net_n609),
    .B1(net_n596),
    .X(net_n599)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (185.38, 43.52)
  sky130_fd_sc_hd__and3_2 u7769 (
    .A(net_n503),
    .B(net_n534),
    .C(net_n610),
    .X(net_n611)
  );

  // Cell: sky130_fd_sc_hd__o21ai_2 at (181.24, 48.96)
  sky130_fd_sc_hd__o21ai_2 u7816 (
    .A1(net_n512),
    .A2(net_n611),
    .B1(net_n510),
    .Y(net_n595)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (178.02, 43.52)
  sky130_fd_sc_hd__mux2_1 u7819 (
    .A0(net_n612),
    .A1(net_n613),
    .S(net_n537),
    .X(net_n556)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (183.08, 48.96)
  sky130_fd_sc_hd__a31o_2 u7820 (
    .A1(net_n537),
    .A2(net_n614),
    .A3(net_n615),
    .B1(net_n555),
    .X(net_n616)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (181.24, 38.08)
  sky130_fd_sc_hd__mux2_1 u7823 (
    .A0(net_n607),
    .A1(net_n617),
    .S(net_n510),
    .X(net_n618)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (181.24, 43.52)
  sky130_fd_sc_hd__o211a_2 u7824 (
    .A1(net_n517),
    .A2(net_n616),
    .B1(net_n558),
    .C1(net_n567),
    .X(net_n289)
  );

  // Cell: sky130_fd_sc_hd__o211ai_2 at (178.02, 38.08)
  sky130_fd_sc_hd__o211ai_2 u7825 (
    .A1(net_n537),
    .A2(net_n618),
    .B1(net_n583),
    .C1(net_n555),
    .Y(net_n600)
  );

  // Cell: sky130_fd_sc_hd__o32a_2 at (181.24, 43.52)
  sky130_fd_sc_hd__o32a_2 u7832 (
    .A1(net_n510),
    .A2(net_n515),
    .A3(net_n619),
    .B1(net_n501),
    .B2(net_n620),
    .X(net_n612)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (182.16, 43.52)
  sky130_fd_sc_hd__a21oi_2 u7852 (
    .A1(net_n537),
    .A2(net_n621),
    .B1(net_n510),
    .Y(net_n560)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (183.08, 48.96)
  sky130_fd_sc_hd__or2_2 u7854 (
    .A(net_n537),
    .B(net_n498),
    .X(net_n559)
  );

  // Cell: sky130_fd_sc_hd__a211o_2 at (179.86, 48.96)
  sky130_fd_sc_hd__a211o_2 u7914 (
    .A1(net_n537),
    .A2(net_n622),
    .B1(net_n623),
    .C1(net_n561),
    .X(net_n557)
  );

  // Cell: sky130_fd_sc_hd__o32a_2 at (185.38, 38.08)
  sky130_fd_sc_hd__o32a_2 u8011 (
    .A1(net_n510),
    .A2(net_n515),
    .A3(net_n624),
    .B1(net_n620),
    .B2(net_n625),
    .X(net_n603)
  );

  // Cell: sky130_fd_sc_hd__a21bo_2 at (186.3, 38.08)
  sky130_fd_sc_hd__a21bo_2 u8044 (
    .A1(net_n510),
    .A2(net_n626),
    .B1_N(net_n542),
    .X(net_n609)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (118.22, 48.96)
  sky130_fd_sc_hd__dfrtp_2 u8084 (
    .CLK(net_n627),
    .D(net_n628),
    .Q(net_n629),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 92.48)
  sky130_fd_sc_hd__dfrtp_2 u8085 (
    .CLK(net_n627),
    .D(net_n630),
    .Q(net_n631),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (127.88000000000001, 108.8)
  sky130_fd_sc_hd__dfrtp_2 u8086 (
    .CLK(net_n632),
    .D(net_n633),
    .Q(net_n634),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (123.74000000000001, 87.04)
  sky130_fd_sc_hd__clkbuf_4 u8087 (
    .A(net_n627),
    .X()
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (126.04, 92.48)
  sky130_fd_sc_hd__clkbuf_8 u8089 (
    .A(net_n1),
    .X(net_n632)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (123.28, 97.92)
  sky130_fd_sc_hd__dfrtp_2 u8090 (
    .CLK(net_n632),
    .D(net_n635),
    .Q(net_n636),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 114.24000000000001)
  sky130_fd_sc_hd__dfrtp_2 u8091 (
    .CLK(net_n294),
    .D(net_n637),
    .Q(net_n15),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.92, 76.16)
  sky130_fd_sc_hd__dfrtp_2 u8092 (
    .CLK(net_n627),
    .D(net_n638),
    .Q(net_n639),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.0, 76.16)
  sky130_fd_sc_hd__dfrtp_2 u8095 (
    .CLK(net_n0),
    .D(net_n640),
    .Q(net_n641),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (124.66, 76.16)
  sky130_fd_sc_hd__a31o_2 u8099 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n642),
    .B1(net_n641),
    .X(net_n643)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (109.94, 76.16)
  sky130_fd_sc_hd__a21o_2 u8103 (
    .A1(net_n639),
    .A2(net_n644),
    .B1(net_n645),
    .X(net_n646)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (115.0, 76.16)
  sky130_fd_sc_hd__inv_2 u8106 (
    .A(net_n639),
    .Y(net_n647)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (109.94, 76.16)
  sky130_fd_sc_hd__or4_2 u8108 (
    .A(net_n645),
    .B(net_n647),
    .C(net_n648),
    .D(net_n649),
    .X(net_n650)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_4 at (126.04, 92.48)
  sky130_fd_sc_hd__clkbuf_4 u8166 (
    .A(net_n632),
    .X()
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (111.78, 97.92)
  sky130_fd_sc_hd__o21a_2 u8190 (
    .A1(net_n636),
    .A2(net_n651),
    .B1(net_n652),
    .X(net_n653)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (110.86, 92.48)
  sky130_fd_sc_hd__nand2_2 u8191 (
    .A(I),
    .B(net_n11),
    .Y(net_n654)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (109.48, 92.48)
  sky130_fd_sc_hd__o21a_2 u8192 (
    .A1(net_n655),
    .A2(net_n656),
    .B1(net_n657),
    .X(net_n658)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (115.92, 92.48)
  sky130_fd_sc_hd__a21o_2 u8196 (
    .A1(net_n655),
    .A2(net_n656),
    .B1(net_n631),
    .X(net_n630)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (115.0, 81.60000000000001)
  sky130_fd_sc_hd__and2_2 u8197 (
    .A(net_n645),
    .B(net_n647),
    .X(net_n495)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (123.28, 97.92)
  sky130_fd_sc_hd__dfrtp_2 u8199 (
    .CLK(net_n632),
    .D(net_n658),
    .Q(net_n655),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (113.16, 97.92)
  sky130_fd_sc_hd__a31o_2 u8200 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n659),
    .B1(net_n660),
    .X(net_n652)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (109.94, 81.60000000000001)
  sky130_fd_sc_hd__nand2b_2 u8201 (
    .A_N(net_n661),
    .B(net_n662),
    .Y(net_n663)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (115.92, 114.24000000000001)
  sky130_fd_sc_hd__nand2b_2 u8202 (
    .A_N(net_n15),
    .B(net_n16),
    .Y(net_n637)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (115.92, 76.16)
  sky130_fd_sc_hd__nand4_2 u8203 (
    .A(I),
    .B(net_n11),
    .C(net_n641),
    .D(net_n642),
    .Y(net_n662)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (120.06, 103.36)
  sky130_fd_sc_hd__o21a_2 u8211 (
    .A1(net_n634),
    .A2(net_n664),
    .B1(net_n665),
    .X(net_n666)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (118.22, 108.8)
  sky130_fd_sc_hd__nand4_2 u8212 (
    .A(I),
    .B(net_n11),
    .C(net_n667),
    .D(net_n668),
    .Y(net_n664)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (115.92, 103.36)
  sky130_fd_sc_hd__and4bb_2 u8213 (
    .A_N(net_n289),
    .B_N(net_n291),
    .C(net_n290),
    .D(net_n292),
    .X(net_n668)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.0, 97.92)
  sky130_fd_sc_hd__dfrtp_2 u8214 (
    .CLK(net_n632),
    .D(net_n653),
    .Q(net_n660),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (119.14, 114.24000000000001)
  sky130_fd_sc_hd__nand2b_2 u8215 (
    .A_N(net_n634),
    .B(net_n664),
    .Y(net_n633)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (119.14, 114.24000000000001)
  sky130_fd_sc_hd__and2b_2 u8218 (
    .A_N(net_n667),
    .B(net_n634),
    .X(net_n491)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (124.66, 108.8)
  sky130_fd_sc_hd__dfrtp_2 u8219 (
    .CLK(net_n632),
    .D(net_n666),
    .Q(net_n667),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (116.84, 103.36)
  sky130_fd_sc_hd__a31o_2 u8275 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n668),
    .B1(net_n667),
    .X(net_n665)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (115.0, 103.36)
  sky130_fd_sc_hd__inv_2 u8290 (
    .A(net_n655),
    .Y(net_n669)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (123.28, 103.36)
  sky130_fd_sc_hd__nand2b_2 u8321 (
    .A_N(net_n636),
    .B(net_n651),
    .Y(net_n635)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (123.74000000000001, 103.36)
  sky130_fd_sc_hd__and2b_2 u8325 (
    .A_N(net_n660),
    .B(net_n636),
    .X(net_n489)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (111.78, 97.92)
  sky130_fd_sc_hd__and2_2 u8367 (
    .A(net_n631),
    .B(net_n669),
    .X(net_n490)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (111.32000000000001, 76.16)
  sky130_fd_sc_hd__and2b_2 u8408 (
    .A_N(net_n641),
    .B(net_n661),
    .X(net_n494)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (115.0, 92.48)
  sky130_fd_sc_hd__nand4_2 u8427 (
    .A(I),
    .B(net_n11),
    .C(net_n660),
    .D(net_n659),
    .Y(net_n651)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (115.92, 87.04)
  sky130_fd_sc_hd__and4bb_2 u8428 (
    .A_N(net_n292),
    .B_N(net_n291),
    .C(net_n290),
    .D(net_n289),
    .X(net_n659)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.0, 81.60000000000001)
  sky130_fd_sc_hd__dfrtp_2 u8429 (
    .CLK(net_n0),
    .D(net_n663),
    .Q(net_n661),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (123.28, 81.60000000000001)
  sky130_fd_sc_hd__dfrtp_2 u8431 (
    .CLK(net_n627),
    .D(net_n646),
    .Q(net_n645),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_8 at (118.68, 87.04)
  sky130_fd_sc_hd__clkbuf_8 u8434 (
    .A(net_n1),
    .X(net_n627)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (118.68, 87.04)
  sky130_fd_sc_hd__or4b_2 u8437 (
    .A(net_n292),
    .B(net_n289),
    .C(net_n291),
    .D_N(net_n290),
    .X(net_n670)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (120.52, 87.04)
  sky130_fd_sc_hd__or4_2 u8461 (
    .A(net_n631),
    .B(net_n669),
    .C(net_n670),
    .D(net_n654),
    .X(net_n657)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (115.92, 87.04)
  sky130_fd_sc_hd__nor2_2 u8490 (
    .A(net_n670),
    .B(net_n654),
    .Y(net_n656)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (112.7, 59.84)
  sky130_fd_sc_hd__nand2_2 u8574 (
    .A(I),
    .B(net_n11),
    .Y(net_n671)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (113.16, 65.28)
  sky130_fd_sc_hd__and2_2 u8575 (
    .A(net_n672),
    .B(net_n673),
    .X(net_n492)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (113.16, 70.72)
  sky130_fd_sc_hd__nand2_2 u8576 (
    .A(I),
    .B(net_n11),
    .Y(net_n649)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (111.32000000000001, 70.72)
  sky130_fd_sc_hd__or4b_2 u8579 (
    .A(net_n289),
    .B(net_n291),
    .C(net_n290),
    .D_N(net_n292),
    .X(net_n648)
  );

  // Cell: sky130_fd_sc_hd__nand4_2 at (120.52, 54.4)
  sky130_fd_sc_hd__nand4_2 u8581 (
    .A(I),
    .B(net_n11),
    .C(net_n674),
    .D(net_n675),
    .Y(net_n676)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (111.78, 65.28)
  sky130_fd_sc_hd__a21o_2 u8583 (
    .A1(net_n677),
    .A2(net_n678),
    .B1(net_n672),
    .X(net_n679)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (123.74000000000001, 54.4)
  sky130_fd_sc_hd__and2b_2 u8590 (
    .A_N(net_n674),
    .B(net_n629),
    .X(net_n493)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (114.08, 65.28)
  sky130_fd_sc_hd__dfrtp_2 u8591 (
    .CLK(net_n0),
    .D(net_n679),
    .Q(net_n672),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__nor4_2 at (120.52, 59.84)
  sky130_fd_sc_hd__nor4_2 u8592 (
    .A(net_n292),
    .B(net_n289),
    .C(net_n291),
    .D(net_n290),
    .Y(net_n675)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (122.82000000000001, 70.72)
  sky130_fd_sc_hd__and4bb_2 u8597 (
    .A_N(net_n291),
    .B_N(net_n290),
    .C(net_n289),
    .D(net_n292),
    .X(net_n642)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (121.44, 65.28)
  sky130_fd_sc_hd__o21a_2 u8600 (
    .A1(net_n677),
    .A2(net_n678),
    .B1(net_n680),
    .X(net_n681)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (124.66, 70.72)
  sky130_fd_sc_hd__dfrtp_2 u8602 (
    .CLK(net_n627),
    .D(net_n681),
    .Q(net_n677),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__or4b_2 at (121.9, 59.84)
  sky130_fd_sc_hd__or4b_2 u8604 (
    .A(net_n292),
    .B(net_n291),
    .C(net_n290),
    .D_N(net_n289),
    .X(net_n682)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (121.44, 65.28)
  sky130_fd_sc_hd__nor2_2 u8620 (
    .A(net_n682),
    .B(net_n671),
    .Y(net_n678)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (118.22, 65.28)
  sky130_fd_sc_hd__o21a_2 u8658 (
    .A1(net_n639),
    .A2(net_n644),
    .B1(net_n650),
    .X(net_n638)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (115.0, 70.72)
  sky130_fd_sc_hd__inv_2 u8660 (
    .A(net_n677),
    .Y(net_n673)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (118.22, 70.72)
  sky130_fd_sc_hd__o21a_2 u8695 (
    .A1(net_n661),
    .A2(net_n662),
    .B1(net_n643),
    .X(net_n640)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (115.0, 59.84)
  sky130_fd_sc_hd__or4_2 u8711 (
    .A(net_n672),
    .B(net_n673),
    .C(net_n682),
    .D(net_n671),
    .X(net_n680)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (115.0, 54.4)
  sky130_fd_sc_hd__a31o_2 u8741 (
    .A1(I),
    .A2(net_n11),
    .A3(net_n675),
    .B1(net_n674),
    .X(net_n683)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (109.02, 70.72)
  sky130_fd_sc_hd__nor2_2 u8771 (
    .A(net_n648),
    .B(net_n649),
    .Y(net_n644)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (115.0, 48.96)
  sky130_fd_sc_hd__dfrtp_2 u8815 (
    .CLK(net_n627),
    .D(net_n684),
    .Q(net_n674),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (115.0, 48.96)
  sky130_fd_sc_hd__o21a_2 u8867 (
    .A1(net_n629),
    .A2(net_n676),
    .B1(net_n683),
    .X(net_n684)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (120.06, 43.52)
  sky130_fd_sc_hd__nand2b_2 u8881 (
    .A_N(net_n629),
    .B(net_n676),
    .Y(net_n628)
  );

  // Cell: INTERNAL_7 at (103.45, -52.72)
  INTERNAL_7 u8988 (

  );

  // Cell: INTERNAL_3 at (117.25, -52.72)
  INTERNAL_3 u8989 (

  );

  // Cell: INTERNAL_7 at (120.01, -52.72)
  INTERNAL_7 u8990 (

  );

  // Cell: INTERNAL_7 at (128.29, -52.72)
  INTERNAL_7 u8991 (

  );

  // Cell: INTERNAL_3 at (133.81, -52.72)
  INTERNAL_3 u8992 (

  );

  // Cell: INTERNAL_3 at (136.57, -52.72)
  INTERNAL_3 u8993 (

  );

  // Cell: INTERNAL_3 at (147.61, -52.72)
  INTERNAL_3 u8994 (

  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (168.82, 16.32)
  sky130_fd_sc_hd__xor2_2 u8995 (
    .A(net_n685),
    .B(net_n686),
    .X(net_n687)
  );

  // Cell: sky130_fd_sc_hd__o22a_2 at (175.72, 10.88)
  sky130_fd_sc_hd__o22a_2 u8996 (
    .A1(net_n496),
    .A2(net_n531),
    .B1(net_n688),
    .B2(net_n689),
    .X(net_n690)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (177.56, 16.32)
  sky130_fd_sc_hd__o211a_2 u8997 (
    .A1(net_n691),
    .A2(net_n687),
    .B1(net_n503),
    .C1(net_n502),
    .X(net_n692)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (176.64000000000001, 27.2)
  sky130_fd_sc_hd__and4bb_2 u8998 (
    .A_N(net_n470),
    .B_N(net_n471),
    .C(net_n477),
    .D(net_n475),
    .X(net_n597)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (172.04, 21.76)
  sky130_fd_sc_hd__xnor2_2 u8999 (
    .A(net_n685),
    .B(net_n686),
    .Y(net_n693)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (179.86, 27.2)
  sky130_fd_sc_hd__xor2_2 u9000 (
    .A(net_n522),
    .B(net_n539),
    .X(net_n496)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (174.8, 16.32)
  sky130_fd_sc_hd__or3_2 u9001 (
    .A(net_n510),
    .B(net_n512),
    .C(net_n692),
    .X(net_n608)
  );

  // Cell: sky130_fd_sc_hd__a22o_2 at (173.88, 21.76)
  sky130_fd_sc_hd__a22o_2 u9002 (
    .A1(net_n535),
    .A2(net_n512),
    .B1(net_n694),
    .B2(net_n503),
    .X(net_n617)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (185.84, 10.88)
  sky130_fd_sc_hd__nor2_2 u9003 (
    .A(net_n503),
    .B(net_n695),
    .Y(net_n619)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (185.84, 27.2)
  sky130_fd_sc_hd__nand2_2 u9004 (
    .A(net_n510),
    .B(net_n696),
    .Y(net_n516)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (187.68, 21.76)
  sky130_fd_sc_hd__nor2_2 u9005 (
    .A(net_n503),
    .B(net_n499),
    .Y(net_n512)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (186.3, 16.32)
  sky130_fd_sc_hd__nor2_2 u9006 (
    .A(net_n496),
    .B(net_n582),
    .Y(net_n605)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (184.92000000000002, 16.32)
  sky130_fd_sc_hd__or3_2 u9007 (
    .A(net_n691),
    .B(net_n496),
    .C(net_n694),
    .X(net_n536)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (185.84, 21.76)
  sky130_fd_sc_hd__or3_2 u9008 (
    .A(net_n691),
    .B(net_n697),
    .C(net_n698),
    .X(net_n699)
  );

  // Cell: sky130_fd_sc_hd__inv_2 at (177.1, 10.88)
  sky130_fd_sc_hd__inv_2 u9009 (
    .A(net_n694),
    .Y(net_n553)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (181.24, 10.88)
  sky130_fd_sc_hd__nand2_2 u9010 (
    .A(net_n503),
    .B(net_n535),
    .Y(net_n500)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (178.02, 10.88)
  sky130_fd_sc_hd__o21a_2 u9012 (
    .A1(net_n691),
    .A2(net_n500),
    .B1(net_n700),
    .X(net_n701)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (185.84, 10.88)
  sky130_fd_sc_hd__or2_2 u9013 (
    .A(net_n503),
    .B(net_n582),
    .X(net_n688)
  );

  // Cell: sky130_fd_sc_hd__a21bo_2 at (181.70000000000002, 16.32)
  sky130_fd_sc_hd__a21bo_2 u9043 (
    .A1(net_n693),
    .A2(net_n700),
    .B1_N(net_n702),
    .X(net_n614)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (180.78, 16.32)
  sky130_fd_sc_hd__a31o_2 u9044 (
    .A1(net_n496),
    .A2(net_n497),
    .A3(net_n610),
    .B1(net_n703),
    .X(net_n704)
  );

  // Cell: sky130_fd_sc_hd__o31ai_2 at (182.62, 21.76)
  sky130_fd_sc_hd__o31ai_2 u9045 (
    .A1(net_n691),
    .A2(net_n496),
    .A3(net_n687),
    .B1(net_n502),
    .Y(net_n705)
  );

  // Cell: sky130_fd_sc_hd__a32o_2 at (178.02, 21.76)
  sky130_fd_sc_hd__a32o_2 u9046 (
    .A1(net_n510),
    .A2(net_n500),
    .A3(net_n688),
    .B1(net_n690),
    .B2(net_n702),
    .X(net_n622)
  );

  // Cell: sky130_fd_sc_hd__nand2b_2 at (182.62, 21.76)
  sky130_fd_sc_hd__nand2b_2 u9047 (
    .A_N(net_n703),
    .B(net_n582),
    .Y(net_n531)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (185.38, 21.76)
  sky130_fd_sc_hd__o21a_2 u9049 (
    .A1(net_n496),
    .A2(net_n533),
    .B1(net_n582),
    .X(net_n606)
  );

  // Cell: sky130_fd_sc_hd__o31ai_2 at (184.46, 27.2)
  sky130_fd_sc_hd__o31ai_2 u9062 (
    .A1(net_n503),
    .A2(net_n698),
    .A3(net_n553),
    .B1(net_n510),
    .Y(net_n620)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (182.16, 27.2)
  sky130_fd_sc_hd__mux2_1 u9063 (
    .A0(net_n695),
    .A1(net_n699),
    .S(net_n496),
    .X(net_n696)
  );

  // Cell: sky130_fd_sc_hd__o21ba_2 at (182.16, 27.2)
  sky130_fd_sc_hd__o21ba_2 u9115 (
    .A1(net_n503),
    .A2(net_n540),
    .B1_N(net_n626),
    .X(net_n621)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (184.46, 27.2)
  sky130_fd_sc_hd__nand2_2 u9127 (
    .A(net_n510),
    .B(net_n705),
    .Y(net_n615)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (177.56, 16.32)
  sky130_fd_sc_hd__a21oi_2 u9198 (
    .A1(net_n503),
    .A2(net_n703),
    .B1(net_n695),
    .Y(net_n624)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (181.70000000000002, 16.32)
  sky130_fd_sc_hd__o21a_2 u9245 (
    .A1(net_n496),
    .A2(net_n706),
    .B1(net_n688),
    .X(net_n707)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (186.3, 16.32)
  sky130_fd_sc_hd__or2_2 u9265 (
    .A(net_n503),
    .B(net_n697),
    .X(net_n700)
  );

  // Cell: sky130_fd_sc_hd__o21a_2 at (164.68, 16.32)
  sky130_fd_sc_hd__o21a_2 u9336 (
    .A1(net_n691),
    .A2(net_n694),
    .B1(net_n496),
    .X(net_n541)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (164.68, 27.2)
  sky130_fd_sc_hd__or3_2 u9337 (
    .A(net_n510),
    .B(net_n498),
    .C(net_n605),
    .X(net_n513)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (157.78, 10.88)
  sky130_fd_sc_hd__or2_2 u9338 (
    .A(net_n687),
    .B(net_n697),
    .X(net_n694)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (162.38, 16.32)
  sky130_fd_sc_hd__nand2_2 u9340 (
    .A(net_n685),
    .B(net_n533),
    .Y(net_n540)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (164.68, 10.88)
  sky130_fd_sc_hd__nand2_2 u9341 (
    .A(net_n190),
    .B(net_n708),
    .Y(net_n709)
  );

  // Cell: sky130_fd_sc_hd__or4_2 at (164.68, 21.76)
  sky130_fd_sc_hd__or4_2 u9342 (
    .A(net_n510),
    .B(net_n507),
    .C(net_n699),
    .D(net_n541),
    .X(net_n604)
  );

  // Cell: sky130_fd_sc_hd__o211a_2 at (162.38, 27.2)
  sky130_fd_sc_hd__o211a_2 u9343 (
    .A1(net_n470),
    .A2(net_n471),
    .B1(net_n477),
    .C1(net_n475),
    .X(net_n593)
  );

  // Cell: sky130_fd_sc_hd__and2b_2 at (163.76, 21.76)
  sky130_fd_sc_hd__and2b_2 u9344 (
    .A_N(net_n686),
    .B(net_n710),
    .X(net_n711)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (162.38, 10.88)
  sky130_fd_sc_hd__nor2_2 u9345 (
    .A(net_n693),
    .B(net_n697),
    .Y(net_n499)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (160.08, 16.32)
  sky130_fd_sc_hd__nand2_2 u9346 (
    .A(net_n712),
    .B(net_n713),
    .Y(net_n710)
  );

  // Cell: sky130_fd_sc_hd__a311o_2 at (167.9, 10.88)
  sky130_fd_sc_hd__a311o_2 u9347 (
    .A1(net_n685),
    .A2(net_n510),
    .A3(net_n711),
    .B1(net_n512),
    .C1(net_n611),
    .X(net_n594)
  );

  // Cell: sky130_fd_sc_hd__a21oi_2 at (159.16, 27.2)
  sky130_fd_sc_hd__a21oi_2 u9348 (
    .A1(net_n496),
    .A2(net_n499),
    .B1(net_n510),
    .Y(net_n702)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (165.14000000000001, 10.88)
  sky130_fd_sc_hd__and2_2 u9351 (
    .A(net_n497),
    .B(net_n610),
    .X(net_n706)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (167.9, 27.2)
  sky130_fd_sc_hd__xor2_2 u9353 (
    .A(net_n189),
    .B(net_n518),
    .X(net_n714)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (172.04, 27.2)
  sky130_fd_sc_hd__xor2_2 u9354 (
    .A(net_n470),
    .B(net_n471),
    .X(net_n708)
  );

  // Cell: sky130_fd_sc_hd__a32o_2 at (163.76, 21.76)
  sky130_fd_sc_hd__a32o_2 u9355 (
    .A1(net_n190),
    .A2(net_n708),
    .A3(net_n714),
    .B1(net_n685),
    .B2(net_n686),
    .X(net_n522)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (172.04, 21.76)
  sky130_fd_sc_hd__xnor2_2 u9356 (
    .A(net_n190),
    .B(net_n708),
    .Y(net_n712)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (171.12, 16.32)
  sky130_fd_sc_hd__mux2_1 u9357 (
    .A0(net_n701),
    .A1(net_n704),
    .S(net_n510),
    .X(net_n613)
  );

  // Cell: sky130_fd_sc_hd__o221a_2 at (164.68, 16.32)
  sky130_fd_sc_hd__o221a_2 u9358 (
    .A1(net_n698),
    .A2(net_n554),
    .B1(net_n707),
    .B2(net_n510),
    .C1(net_n507),
    .X(net_n623)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (167.9, 21.76)
  sky130_fd_sc_hd__xnor2_2 u9360 (
    .A(net_n709),
    .B(net_n714),
    .Y(net_n685)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (165.14000000000001, 27.2)
  sky130_fd_sc_hd__and2_2 u9470 (
    .A(net_n187),
    .B(net_n470),
    .X(net_n715)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (173.88, 16.32)
  sky130_fd_sc_hd__and3_2 u9540 (
    .A(net_n503),
    .B(net_n693),
    .C(net_n703),
    .X(net_n515)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (155.48, 21.76)
  sky130_fd_sc_hd__nor2_2 u9597 (
    .A(net_n716),
    .B(net_n710),
    .Y(net_n533)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (155.48, 21.76)
  sky130_fd_sc_hd__nand2_2 u9598 (
    .A(net_n685),
    .B(net_n691),
    .Y(net_n502)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (156.4, 21.76)
  sky130_fd_sc_hd__nor2_2 u9602 (
    .A(net_n712),
    .B(net_n717),
    .Y(net_n691)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (157.78, 16.32)
  sky130_fd_sc_hd__nand2_2 u9605 (
    .A(net_n693),
    .B(net_n697),
    .Y(net_n535)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (158.70000000000002, 21.76)
  sky130_fd_sc_hd__or2_2 u9607 (
    .A(net_n715),
    .B(net_n716),
    .X(net_n717)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (155.02, 27.2)
  sky130_fd_sc_hd__nand2_2 u9608 (
    .A(net_n187),
    .B(net_n470),
    .Y(net_n713)
  );

  // Cell: sky130_fd_sc_hd__or3_2 at (157.78, 21.76)
  sky130_fd_sc_hd__or3_2 u9611 (
    .A(net_n691),
    .B(net_n693),
    .C(net_n697),
    .X(net_n695)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (154.56, 16.32)
  sky130_fd_sc_hd__or2_2 u9612 (
    .A(net_n687),
    .B(net_n711),
    .X(net_n582)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (154.56, 27.2)
  sky130_fd_sc_hd__nand2_2 u9614 (
    .A(net_n510),
    .B(net_n500),
    .Y(net_n511)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (158.70000000000002, 21.76)
  sky130_fd_sc_hd__and2_2 u9615 (
    .A(net_n717),
    .B(net_n711),
    .X(net_n703)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (156.86, 27.2)
  sky130_fd_sc_hd__nand2_2 u9622 (
    .A(net_n470),
    .B(net_n471),
    .Y(net_n519)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (159.62, 27.2)
  sky130_fd_sc_hd__nor2_2 u9636 (
    .A(net_n187),
    .B(net_n470),
    .Y(net_n716)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (161.92000000000002, 27.2)
  sky130_fd_sc_hd__nor2_2 u9637 (
    .A(net_n471),
    .B(net_n477),
    .Y(net_n528)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (154.56, 27.2)
  sky130_fd_sc_hd__nand2_2 u9705 (
    .A(net_n685),
    .B(net_n711),
    .Y(net_n497)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (150.42000000000002, 27.2)
  sky130_fd_sc_hd__nor2_2 u9714 (
    .A(net_n502),
    .B(net_n496),
    .Y(net_n626)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (155.02, 27.2)
  sky130_fd_sc_hd__nor2_2 u9730 (
    .A(net_n715),
    .B(net_n716),
    .Y(net_n689)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (152.26, 16.32)
  sky130_fd_sc_hd__nor2_2 u9760 (
    .A(net_n496),
    .B(net_n499),
    .Y(net_n625)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (155.48, 16.32)
  sky130_fd_sc_hd__nand2_2 u9763 (
    .A(net_n717),
    .B(net_n693),
    .Y(net_n610)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (159.16, 16.32)
  sky130_fd_sc_hd__nor2_2 u9790 (
    .A(net_n693),
    .B(net_n533),
    .Y(net_n698)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (157.78, 16.32)
  sky130_fd_sc_hd__nor2_2 u9810 (
    .A(net_n689),
    .B(net_n711),
    .Y(net_n697)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (156.86, 16.32)
  sky130_fd_sc_hd__nor2_2 u9818 (
    .A(net_n712),
    .B(net_n713),
    .Y(net_n686)
  );

  // Cell: INTERNAL_7 at (150.37, -52.72)
  INTERNAL_7 u9865 (

  );

  // Cell: INTERNAL_3 at (158.65, -52.72)
  INTERNAL_3 u9866 (

  );

  // Cell: INTERNAL_3 at (161.41, -52.72)
  INTERNAL_3 u9867 (

  );

  // Cell: INTERNAL_3 at (164.17000000000002, -52.72)
  INTERNAL_3 u9868 (

  );

  // Cell: INTERNAL_7 at (169.69, -52.72)
  INTERNAL_7 u9869 (

  );

  // Cell: INTERNAL_3 at (177.97, -52.72)
  INTERNAL_3 u9870 (

  );

  // Cell: INTERNAL_7 at (180.73, -52.72)
  INTERNAL_7 u9871 (

  );

  // Cell: INTERNAL_3 at (186.25, -52.72)
  INTERNAL_3 u9872 (

  );

  // Cell: INTERNAL_3 at (191.77, -52.72)
  INTERNAL_3 u9873 (

  );

  // Cell: INTERNAL_7 at (194.53, -52.72)
  INTERNAL_7 u9874 (

  );

endmodule
