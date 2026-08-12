// Auto-generated netlist – mode = named
// Top cell in GDS: adder_demo

module extracted (
  input  clk,
  input  rst_n,
  input  enable,
  input  [7:0] data_in,   // placeholder width
  output success,
  output [7:0] data_out   // placeholder
);

  // BUF @ (31.740000000000002, 48.96)
  clkbuf_16 u5 ( /* nets still TODO */ );

  // AND @ (69.92, 48.96)
  and4bb_2 u6 ( /* nets still TODO */ );

  // AND @ (69.92, 54.4)
  and3_2 u108 ( /* nets still TODO */ );

  // BUF @ (35.88, 65.28)
  clkbuf_16 u136 ( /* nets still TODO */ );

  // MUX @ (25.76, 65.28)
  mux2_1 u137 ( /* nets still TODO */ );

  // MUX @ (25.76, 76.16)
  mux2_1 u138 ( /* nets still TODO */ );

  // MUX @ (26.22, 70.72)
  mux2_1 u139 ( /* nets still TODO */ );

  // MUX @ (29.900000000000002, 70.72)
  mux2_1 u140 ( /* nets still TODO */ );

  // DFF @ (36.34, 70.72)
  dfrtp_2 u141 ( /* nets still TODO */ );

  // DFF @ (26.22, 76.16)
  dfrtp_2 u142 ( /* nets still TODO */ );

  // DFF @ (26.22, 70.72)
  dfrtp_2 u146 ( /* nets still TODO */ );

  // DFF @ (29.900000000000002, 76.16)
  dfrtp_2 u180 ( /* nets still TODO */ );

  // DFF @ (29.900000000000002, 70.72)
  dfrtp_2 u181 ( /* nets still TODO */ );

  // DFF @ (36.34, 76.16)
  dfrtp_2 u182 ( /* nets still TODO */ );

  // MUX @ (39.56, 70.72)
  mux2_1 u210 ( /* nets still TODO */ );

  // MUX @ (29.900000000000002, 81.60000000000001)
  mux2_1 u234 ( /* nets still TODO */ );

  // MUX @ (26.22, 76.16)
  mux2_1 u274 ( /* nets still TODO */ );

  // MUX @ (29.900000000000002, 59.84)
  mux2_1 u339 ( /* nets still TODO */ );

  // DFF @ (29.900000000000002, 59.84)
  dfrtp_2 u348 ( /* nets still TODO */ );

  // DFF @ (29.900000000000002, 65.28)
  dfrtp_2 u368 ( /* nets still TODO */ );

  // MUX @ (26.22, 32.64)
  mux2_1 u369 ( /* nets still TODO */ );

  // MUX @ (29.900000000000002, 32.64)
  mux2_1 u378 ( /* nets still TODO */ );

  // MUX @ (29.900000000000002, 27.2)
  mux2_1 u379 ( /* nets still TODO */ );

  // DFF @ (35.88, 27.2)
  dfrtp_2 u385 ( /* nets still TODO */ );

  // DFF @ (36.34, 32.64)
  dfrtp_2 u386 ( /* nets still TODO */ );

  // DFF @ (26.22, 38.08)
  dfrtp_2 u387 ( /* nets still TODO */ );

  // DFF @ (26.22, 32.64)
  dfrtp_2 u388 ( /* nets still TODO */ );

  // MUX @ (22.080000000000002, 32.64)
  mux2_1 u404 ( /* nets still TODO */ );

  // MUX @ (29.900000000000002, 43.52)
  mux2_1 u418 ( /* nets still TODO */ );

  // MUX @ (36.34, 38.08)
  mux2_1 u426 ( /* nets still TODO */ );

  // DFF @ (29.900000000000002, 32.64)
  dfrtp_2 u433 ( /* nets still TODO */ );

  // BUF @ (30.82, 43.52)
  clkbuf_16 u443 ( /* nets still TODO */ );

  // DFF @ (29.900000000000002, 38.08)
  dfrtp_2 u453 ( /* nets still TODO */ );

  // DFF @ (29.900000000000002, 27.2)
  dfrtp_2 u541 ( /* nets still TODO */ );

  // DFF @ (29.900000000000002, 21.76)
  dfrtp_2 u554 ( /* nets still TODO */ );

  // MUX @ (36.34, 27.2)
  mux2_1 u596 ( /* nets still TODO */ );

  // MUX @ (34.04, 21.76)
  mux2_1 u603 ( /* nets still TODO */ );

  // AOI/OA @ (75.9, 32.64)
  a31o_2 u613 ( /* nets still TODO */ );

  // NOR @ (59.34, 32.64)
  nor2_2 u616 ( /* nets still TODO */ );

  // NOR @ (79.12, 32.64)
  nor2_2 u617 ( /* nets still TODO */ );

  // NOR @ (69.92, 38.08)
  nor2_2 u618 ( /* nets still TODO */ );

  // NOR @ (69.92, 16.32)
  nor2_2 u619 ( /* nets still TODO */ );

  // UNKNOWN @ (69.92, 27.2)
  a21boi_2 u622 ( /* nets still TODO */ );

  // UNKNOWN @ (69.92, 32.64)
  o21bai_2 u623 ( /* nets still TODO */ );

  // AND @ (69.92, 38.08)
  and2_2 u629 ( /* nets still TODO */ );

  // AND @ (67.16, 21.76)
  and2_2 u630 ( /* nets still TODO */ );

  // XOR @ (68.54, 27.2)
  xor2_2 u631 ( /* nets still TODO */ );

  // XOR @ (68.54, 32.64)
  xor2_2 u632 ( /* nets still TODO */ );

  // XOR @ (68.54, 21.76)
  xor2_2 u633 ( /* nets still TODO */ );

  // XOR @ (69.92, 32.64)
  xor2_2 u634 ( /* nets still TODO */ );

  // AOI/OA @ (65.78, 32.64)
  a31o_2 u635 ( /* nets still TODO */ );

  // OR @ (77.74, 32.64)
  or2_2 u636 ( /* nets still TODO */ );

  // AND @ (69.92, 38.08)
  and2_2 u639 ( /* nets still TODO */ );

  // AND @ (74.52, 48.96)
  and4bb_2 u659 ( /* nets still TODO */ );

  // OR @ (73.60000000000001, 38.08)
  or2_2 u685 ( /* nets still TODO */ );

  // UNKNOWN @ (73.60000000000001, 38.08)
  a21bo_2 u707 ( /* nets still TODO */ );

  // AND @ (77.74, 32.64)
  and2_2 u711 ( /* nets still TODO */ );

  // NOR @ (67.16, 38.08)
  nor2_2 u761 ( /* nets still TODO */ );

  // NOR @ (65.32000000000001, 32.64)
  nor2_2 u765 ( /* nets still TODO */ );

  // AOI/OA @ (68.54, 32.64)
  a21o_2 u781 ( /* nets still TODO */ );

  // OR @ (67.16, 21.76)
  or2_2 u841 ( /* nets still TODO */ );

  // NOR @ (57.5, 27.2)
  nor2_2 u844 ( /* nets still TODO */ );

  // NAND @ (61.64, 27.2)
  nand2_2 u852 ( /* nets still TODO */ );

  // AND @ (59.800000000000004, 27.2)
  and2_2 u864 ( /* nets still TODO */ );

  // AOI/OA @ (62.56, 27.2)
  a31o_2 u866 ( /* nets still TODO */ );

  // OR @ (63.02, 21.76)
  or2_2 u895 ( /* nets still TODO */ );

  // NOR @ (62.56, 27.2)
  xnor2_2 u900 ( /* nets still TODO */ );

  // AOI/OA @ (65.32000000000001, 21.76)
  a31o_2 u917 ( /* nets still TODO */ );

  // XOR @ (74.98, 27.2)
  xor2_2 u972 ( /* nets still TODO */ );

  // NOR @ (75.9, 21.76)
  xnor2_2 u975 ( /* nets still TODO */ );

  // NAND @ (77.74, 21.76)
  nand2_2 u976 ( /* nets still TODO */ );

  // NAND @ (79.12, 27.2)
  nand2_2 u978 ( /* nets still TODO */ );

  // NOR @ (83.26, 27.2)
  nor2_2 u989 ( /* nets still TODO */ );

  // NAND @ (80.96000000000001, 27.2)
  nand2_2 u1002 ( /* nets still TODO */ );

  // AND @ (74.98, 21.76)
  and2_2 u1011 ( /* nets still TODO */ );

  // AOI/OA @ (75.9, 27.2)
  a31o_2 u1048 ( /* nets still TODO */ );

  // NOR @ (69.92, 27.2)
  xnor2_2 u1052 ( /* nets still TODO */ );

  // OR @ (72.22, 16.32)
  or2_2 u1069 ( /* nets still TODO */ );

  // AND @ (69.92, 16.32)
  and2_2 u1070 ( /* nets still TODO */ );

endmodule
