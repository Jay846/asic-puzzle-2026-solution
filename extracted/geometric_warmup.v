// Auto-generated structural Verilog netlist from GDS geometric extraction
// Source GDS: 04_final.gds

module adder_demo (
  A,
  B,
  S,
  clk,
  en,
  rst_n
);

  input A;
  input B;
  input clk;
  input en;
  input rst_n;
  output S;

  wire net_n1;
  wire net_n10;
  wire net_n11;
  wire net_n12;
  wire net_n13;
  wire net_n15;
  wire net_n16;
  wire net_n17;
  wire net_n18;
  wire net_n19;
  wire net_n2;
  wire net_n20;
  wire net_n21;
  wire net_n23;
  wire net_n24;
  wire net_n26;
  wire net_n27;
  wire net_n28;
  wire net_n29;
  wire net_n3;
  wire net_n30;
  wire net_n31;
  wire net_n32;
  wire net_n33;
  wire net_n34;
  wire net_n35;
  wire net_n37;
  wire net_n38;
  wire net_n39;
  wire net_n4;
  wire net_n40;
  wire net_n41;
  wire net_n42;
  wire net_n43;
  wire net_n44;
  wire net_n45;
  wire net_n46;
  wire net_n47;
  wire net_n48;
  wire net_n49;
  wire net_n5;
  wire net_n50;
  wire net_n51;
  wire net_n52;
  wire net_n53;
  wire net_n54;
  wire net_n55;
  wire net_n56;
  wire net_n57;
  wire net_n58;
  wire net_n59;
  wire net_n6;
  wire net_n60;
  wire net_n61;
  wire net_n62;
  wire net_n63;
  wire net_n64;
  wire net_n65;
  wire net_n66;
  wire net_n67;
  wire net_n68;
  wire net_n69;
  wire net_n7;
  wire net_n70;
  wire net_n71;
  wire net_n72;
  wire net_n73;
  wire net_n74;
  wire net_n76;
  wire net_n77;
  wire net_n78;
  wire net_n79;
  wire net_n8;
  wire net_n80;
  wire net_n81;
  wire net_n82;
  wire net_n83;
  wire net_n9;

  // Cell: sky130_fd_sc_hd__clkbuf_16 at (31.740000000000002, 48.96)
  sky130_fd_sc_hd__clkbuf_16 u5 (
    .A(clk),
    .X(net_n1)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (69.92, 48.96)
  sky130_fd_sc_hd__and4bb_2 u6 (
    .A_N(net_n2),
    .B_N(net_n3),
    .C(net_n4),
    .D(net_n5),
    .X(net_n6)
  );

  // Cell: sky130_fd_sc_hd__and3_2 at (69.92, 54.4)
  sky130_fd_sc_hd__and3_2 u108 (
    .A(net_n7),
    .B(net_n8),
    .C(net_n9),
    .X(net_n10)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_16 at (35.88, 65.28)
  sky130_fd_sc_hd__clkbuf_16 u136 (
    .A(net_n1),
    .X(net_n11)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (25.76, 65.28)
  sky130_fd_sc_hd__mux2_1 u137 (
    .A0(net_n12),
    .A1(net_n13),
    .S(en),
    .X(net_n15)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (25.76, 76.16)
  sky130_fd_sc_hd__mux2_1 u138 (
    .A0(net_n16),
    .A1(net_n12),
    .S(en),
    .X(net_n17)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (26.22, 70.72)
  sky130_fd_sc_hd__mux2_1 u139 (
    .A0(net_n18),
    .A1(net_n19),
    .S(en),
    .X(net_n20)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (29.900000000000002, 70.72)
  sky130_fd_sc_hd__mux2_1 u140 (
    .A0(net_n21),
    .A1(A),
    .S(en),
    .X(net_n23)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (36.34, 70.72)
  sky130_fd_sc_hd__dfrtp_2 u141 (
    .CLK(net_n11),
    .D(net_n24),
    .Q(net_n19),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (26.22, 76.16)
  sky130_fd_sc_hd__dfrtp_2 u142 (
    .CLK(net_n11),
    .D(net_n17),
    .Q(net_n16),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (26.22, 70.72)
  sky130_fd_sc_hd__dfrtp_2 u146 (
    .CLK(net_n11),
    .D(net_n15),
    .Q(net_n12),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (29.900000000000002, 76.16)
  sky130_fd_sc_hd__dfrtp_2 u180 (
    .CLK(net_n11),
    .D(net_n26),
    .Q(net_n13),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (29.900000000000002, 70.72)
  sky130_fd_sc_hd__dfrtp_2 u181 (
    .CLK(net_n11),
    .D(net_n23),
    .Q(net_n21),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (36.34, 76.16)
  sky130_fd_sc_hd__dfrtp_2 u182 (
    .CLK(net_n11),
    .D(net_n20),
    .Q(net_n18),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (39.56, 70.72)
  sky130_fd_sc_hd__mux2_1 u210 (
    .A0(net_n19),
    .A1(net_n16),
    .S(en),
    .X(net_n24)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (29.900000000000002, 81.60000000000001)
  sky130_fd_sc_hd__mux2_1 u234 (
    .A0(net_n13),
    .A1(net_n27),
    .S(en),
    .X(net_n26)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (26.22, 76.16)
  sky130_fd_sc_hd__mux2_1 u274 (
    .A0(net_n28),
    .A1(net_n18),
    .S(en),
    .X(net_n29)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (29.900000000000002, 59.84)
  sky130_fd_sc_hd__mux2_1 u339 (
    .A0(net_n27),
    .A1(net_n21),
    .S(en),
    .X(net_n30)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (29.900000000000002, 59.84)
  sky130_fd_sc_hd__dfrtp_2 u348 (
    .CLK(net_n11),
    .D(net_n29),
    .Q(net_n28),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (29.900000000000002, 65.28)
  sky130_fd_sc_hd__dfrtp_2 u368 (
    .CLK(net_n11),
    .D(net_n30),
    .Q(net_n27),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (26.22, 32.64)
  sky130_fd_sc_hd__mux2_1 u369 (
    .A0(net_n31),
    .A1(net_n32),
    .S(en),
    .X(net_n33)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (29.900000000000002, 32.64)
  sky130_fd_sc_hd__mux2_1 u378 (
    .A0(net_n32),
    .A1(net_n34),
    .S(en),
    .X(net_n35)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (29.900000000000002, 27.2)
  sky130_fd_sc_hd__mux2_1 u379 (
    .A0(net_n34),
    .A1(B),
    .S(en),
    .X(net_n37)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (35.88, 27.2)
  sky130_fd_sc_hd__dfrtp_2 u385 (
    .CLK(net_n38),
    .D(net_n39),
    .Q(net_n40),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (36.34, 32.64)
  sky130_fd_sc_hd__dfrtp_2 u386 (
    .CLK(net_n38),
    .D(net_n41),
    .Q(net_n42),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (26.22, 38.08)
  sky130_fd_sc_hd__dfrtp_2 u387 (
    .CLK(net_n38),
    .D(net_n43),
    .Q(net_n44),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (26.22, 32.64)
  sky130_fd_sc_hd__dfrtp_2 u388 (
    .CLK(net_n38),
    .D(net_n33),
    .Q(net_n31),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (22.080000000000002, 32.64)
  sky130_fd_sc_hd__mux2_1 u404 (
    .A0(net_n44),
    .A1(net_n40),
    .S(en),
    .X(net_n43)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (29.900000000000002, 43.52)
  sky130_fd_sc_hd__mux2_1 u418 (
    .A0(net_n45),
    .A1(net_n42),
    .S(en),
    .X(net_n46)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (36.34, 38.08)
  sky130_fd_sc_hd__mux2_1 u426 (
    .A0(net_n40),
    .A1(net_n47),
    .S(en),
    .X(net_n39)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (29.900000000000002, 32.64)
  sky130_fd_sc_hd__dfrtp_2 u433 (
    .CLK(net_n38),
    .D(net_n35),
    .Q(net_n32),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__clkbuf_16 at (30.82, 43.52)
  sky130_fd_sc_hd__clkbuf_16 u443 (
    .A(net_n1),
    .X(net_n38)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (29.900000000000002, 38.08)
  sky130_fd_sc_hd__dfrtp_2 u453 (
    .CLK(net_n38),
    .D(net_n48),
    .Q(net_n47),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (29.900000000000002, 27.2)
  sky130_fd_sc_hd__dfrtp_2 u541 (
    .CLK(net_n38),
    .D(net_n37),
    .Q(net_n34),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__dfrtp_2 at (29.900000000000002, 21.76)
  sky130_fd_sc_hd__dfrtp_2 u554 (
    .CLK(net_n38),
    .D(net_n46),
    .Q(net_n45),
    .RESET_B(rst_n)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (36.34, 27.2)
  sky130_fd_sc_hd__mux2_1 u596 (
    .A0(net_n47),
    .A1(net_n45),
    .S(en),
    .X(net_n48)
  );

  // Cell: sky130_fd_sc_hd__mux2_1 at (34.04, 21.76)
  sky130_fd_sc_hd__mux2_1 u603 (
    .A0(net_n42),
    .A1(net_n31),
    .S(en),
    .X(net_n41)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (75.9, 32.64)
  sky130_fd_sc_hd__a31o_2 u613 (
    .A1(net_n31),
    .A2(net_n13),
    .A3(net_n49),
    .B1(net_n50),
    .X(net_n51)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (59.34, 32.64)
  sky130_fd_sc_hd__nor2_2 u616 (
    .A(net_n44),
    .B(net_n28),
    .Y(net_n52)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (79.12, 32.64)
  sky130_fd_sc_hd__nor2_2 u617 (
    .A(net_n42),
    .B(net_n12),
    .Y(net_n53)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (69.92, 38.08)
  sky130_fd_sc_hd__nor2_2 u618 (
    .A(net_n47),
    .B(net_n19),
    .Y(net_n54)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (69.92, 16.32)
  sky130_fd_sc_hd__nor2_2 u619 (
    .A(net_n55),
    .B(net_n56),
    .Y(net_n57)
  );

  // Cell: sky130_fd_sc_hd__a21boi_2 at (69.92, 27.2)
  sky130_fd_sc_hd__a21boi_2 u622 (
    .A1(net_n58),
    .A2(net_n59),
    .B1_N(net_n60),
    .Y(net_n61)
  );

  // Cell: sky130_fd_sc_hd__o21bai_2 at (69.92, 32.64)
  sky130_fd_sc_hd__o21bai_2 u623 (
    .A1(net_n52),
    .A2(net_n61),
    .B1_N(net_n62),
    .Y(net_n9)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (69.92, 38.08)
  sky130_fd_sc_hd__and2_2 u629 (
    .A(net_n63),
    .B(net_n64),
    .X(net_n65)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (67.16, 21.76)
  sky130_fd_sc_hd__and2_2 u630 (
    .A(net_n44),
    .B(net_n28),
    .X(net_n62)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (68.54, 27.2)
  sky130_fd_sc_hd__xor2_2 u631 (
    .A(net_n32),
    .B(net_n27),
    .X(net_n66)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (68.54, 32.64)
  sky130_fd_sc_hd__xor2_2 u632 (
    .A(net_n67),
    .B(net_n68),
    .X(net_n5)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (68.54, 21.76)
  sky130_fd_sc_hd__xor2_2 u633 (
    .A(net_n57),
    .B(net_n69),
    .X(net_n4)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (69.92, 32.64)
  sky130_fd_sc_hd__xor2_2 u634 (
    .A(net_n70),
    .B(net_n71),
    .X(net_n3)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (65.78, 32.64)
  sky130_fd_sc_hd__a31o_2 u635 (
    .A1(net_n57),
    .A2(net_n69),
    .A3(net_n67),
    .B1(net_n72),
    .X(net_n59)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (77.74, 32.64)
  sky130_fd_sc_hd__or2_2 u636 (
    .A(net_n40),
    .B(net_n18),
    .X(net_n58)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (69.92, 38.08)
  sky130_fd_sc_hd__and2_2 u639 (
    .A(net_n47),
    .B(net_n19),
    .X(net_n73)
  );

  // Cell: sky130_fd_sc_hd__and4bb_2 at (74.52, 48.96)
  sky130_fd_sc_hd__and4bb_2 u659 (
    .A_N(net_n74),
    .B_N(net_n65),
    .C(net_n10),
    .D(net_n6),
    .X(S)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (73.60000000000001, 38.08)
  sky130_fd_sc_hd__or2_2 u685 (
    .A(net_n31),
    .B(net_n13),
    .X(net_n76)
  );

  // Cell: sky130_fd_sc_hd__a21bo_2 at (73.60000000000001, 38.08)
  sky130_fd_sc_hd__a21bo_2 u707 (
    .A1(net_n70),
    .A2(net_n71),
    .B1_N(net_n77),
    .X(net_n78)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (77.74, 32.64)
  sky130_fd_sc_hd__and2_2 u711 (
    .A(net_n42),
    .B(net_n12),
    .X(net_n50)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (67.16, 38.08)
  sky130_fd_sc_hd__nor2_2 u761 (
    .A(net_n54),
    .B(net_n73),
    .Y(net_n67)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (65.32000000000001, 32.64)
  sky130_fd_sc_hd__nor2_2 u765 (
    .A(net_n53),
    .B(net_n50),
    .Y(net_n79)
  );

  // Cell: sky130_fd_sc_hd__a21o_2 at (68.54, 32.64)
  sky130_fd_sc_hd__a21o_2 u781 (
    .A1(net_n57),
    .A2(net_n69),
    .B1(net_n55),
    .X(net_n68)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (67.16, 21.76)
  sky130_fd_sc_hd__or2_2 u841 (
    .A(net_n47),
    .B(net_n19),
    .X(net_n80)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (57.5, 27.2)
  sky130_fd_sc_hd__nor2_2 u844 (
    .A(net_n45),
    .B(net_n16),
    .Y(net_n56)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (61.64, 27.2)
  sky130_fd_sc_hd__nand2_2 u852 (
    .A(net_n60),
    .B(net_n58),
    .Y(net_n81)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (59.800000000000004, 27.2)
  sky130_fd_sc_hd__and2_2 u864 (
    .A(net_n32),
    .B(net_n27),
    .X(net_n82)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (62.56, 27.2)
  sky130_fd_sc_hd__a31o_2 u866 (
    .A1(net_n45),
    .A2(net_n16),
    .A3(net_n80),
    .B1(net_n73),
    .X(net_n72)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (63.02, 21.76)
  sky130_fd_sc_hd__or2_2 u895 (
    .A(net_n42),
    .B(net_n12),
    .X(net_n49)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (62.56, 27.2)
  sky130_fd_sc_hd__xnor2_2 u900 (
    .A(net_n81),
    .B(net_n59),
    .Y(net_n7)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (65.32000000000001, 21.76)
  sky130_fd_sc_hd__a31o_2 u917 (
    .A1(net_n70),
    .A2(net_n71),
    .A3(net_n79),
    .B1(net_n51),
    .X(net_n69)
  );

  // Cell: sky130_fd_sc_hd__xor2_2 at (74.98, 27.2)
  sky130_fd_sc_hd__xor2_2 u972 (
    .A(net_n79),
    .B(net_n78),
    .X(net_n2)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (75.9, 21.76)
  sky130_fd_sc_hd__xnor2_2 u975 (
    .A(net_n83),
    .B(net_n61),
    .Y(net_n8)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (77.74, 21.76)
  sky130_fd_sc_hd__nand2_2 u976 (
    .A(net_n40),
    .B(net_n18),
    .Y(net_n60)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (79.12, 27.2)
  sky130_fd_sc_hd__nand2_2 u978 (
    .A(net_n31),
    .B(net_n13),
    .Y(net_n77)
  );

  // Cell: sky130_fd_sc_hd__nor2_2 at (83.26, 27.2)
  sky130_fd_sc_hd__nor2_2 u989 (
    .A(net_n62),
    .B(net_n52),
    .Y(net_n83)
  );

  // Cell: sky130_fd_sc_hd__nand2_2 at (80.96000000000001, 27.2)
  sky130_fd_sc_hd__nand2_2 u1002 (
    .A(net_n34),
    .B(net_n21),
    .Y(net_n63)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (74.98, 21.76)
  sky130_fd_sc_hd__and2_2 u1011 (
    .A(net_n76),
    .B(net_n77),
    .X(net_n71)
  );

  // Cell: sky130_fd_sc_hd__a31o_2 at (75.9, 27.2)
  sky130_fd_sc_hd__a31o_2 u1048 (
    .A1(net_n34),
    .A2(net_n21),
    .A3(net_n66),
    .B1(net_n82),
    .X(net_n70)
  );

  // Cell: sky130_fd_sc_hd__xnor2_2 at (69.92, 27.2)
  sky130_fd_sc_hd__xnor2_2 u1052 (
    .A(net_n63),
    .B(net_n66),
    .Y(net_n74)
  );

  // Cell: sky130_fd_sc_hd__or2_2 at (72.22, 16.32)
  sky130_fd_sc_hd__or2_2 u1069 (
    .A(net_n34),
    .B(net_n21),
    .X(net_n64)
  );

  // Cell: sky130_fd_sc_hd__and2_2 at (69.92, 16.32)
  sky130_fd_sc_hd__and2_2 u1070 (
    .A(net_n45),
    .B(net_n16),
    .X(net_n55)
  );

endmodule
