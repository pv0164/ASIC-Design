//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 179 ; 
reg Clk,Rst,WR,mem_init; 
reg [31:0] dataIn1,dataIn2,csize; 
reg [31:0]v_values_base; 
  wire [31:0]addr1,addr2; 
  wire [31:0]val[0:8]; 
reg [31:0]wdata_col_base,row_base,matrix_base; 
wire [31:0] dataOut; 
reg fe_init; 
reg wn,rn,RD; 
 // Instantiate memory module 
//  memmodel m1 (addr,dataIn,dataOut,WR,Clk,Rst); 
//  mem_buffer m1 (dataOut, full, empty, Clk, Rst, wn, rn, dataIn); 
control t1 (Clk,v_values_base,wdata_col_base,matrix_base,addr1,addr2,dataIn1,dataIn2,Rst,row_base,RD,csize);  //frontend t1 (Clk,Rst,fe_init,wdata_col_base,data_req,dataIn,init, 
//{m_cols[0],m_cols[1],m_cols[2],m_cols[3],m_cols[4]}, 
//done,wn); 
initial begin 
Clk = 1'b0; 
  v_values_base = 32'd2; 
  matrix_base = 32'd90 ; 
  wdata_col_base = 32'd2690 ; 
  row_base = 32'd28690 ; 
  csize = COL_SIZE; 
 fe_init = 1'b1; 
  RD = 1'b1; 
 #15; 
Rst = 1'b0; 
#15 Rst = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #3760; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd28690: dataIn1 = 32'd0
; 
32'd28691: dataIn1 = 32'd14
; 
32'd28692: dataIn1 = 32'd25
; 
32'd28693: dataIn1 = 32'd31
; 
32'd28694: dataIn1 = 32'd41
; 
32'd28695: dataIn1 = 32'd52
; 
32'd28696: dataIn1 = 32'd61
; 
32'd28697: dataIn1 = 32'd69
; 
32'd28698: dataIn1 = 32'd79
; 
32'd28699: dataIn1 = 32'd89
; 
32'd28700: dataIn1 = 32'd98
; 
32'd28701: dataIn1 = 32'd108
; 
32'd28702: dataIn1 = 32'd118
; 
32'd28703: dataIn1 = 32'd128
; 
32'd28704: dataIn1 = 32'd140
; 
32'd28705: dataIn1 = 32'd152
; 
32'd28706: dataIn1 = 32'd165
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
32'd2690: dataIn1 = 32'd0
; 
32'd2691: dataIn1 = 32'd14
; 
32'd2692: dataIn1 = 32'd25
; 
32'd2693: dataIn1 = 32'd31
; 
32'd2694: dataIn1 = 32'd41
; 
32'd2695: dataIn1 = 32'd52
; 
32'd2696: dataIn1 = 32'd61
; 
32'd2697: dataIn1 = 32'd69
; 
32'd2698: dataIn1 = 32'd79
; 
32'd2699: dataIn1 = 32'd89
; 
32'd2700: dataIn1 = 32'd98
; 
32'd2701: dataIn1 = 32'd108
; 
32'd2702: dataIn1 = 32'd118
; 
32'd2703: dataIn1 = 32'd128
; 
32'd2704: dataIn1 = 32'd140
; 
32'd2705: dataIn1 = 32'd152
; 
32'd2706: dataIn1 = 32'd165
; 
32'd2707: dataIn1 = 32'd0
; 
32'd2708: dataIn1 = 32'd1
; 
32'd2709: dataIn1 = 32'd3
; 
32'd2710: dataIn1 = 32'd4
; 
32'd2711: dataIn1 = 32'd5
; 
32'd2712: dataIn1 = 32'd6
; 
32'd2713: dataIn1 = 32'd7
; 
32'd2714: dataIn1 = 32'd8
; 
32'd2715: dataIn1 = 32'd10
; 
32'd2716: dataIn1 = 32'd11
; 
32'd2717: dataIn1 = 32'd12
; 
32'd2718: dataIn1 = 32'd13
; 
32'd2719: dataIn1 = 32'd14
; 
32'd2720: dataIn1 = 32'd15
; 
32'd2721: dataIn1 = 32'd1
; 
32'd2722: dataIn1 = 32'd4
; 
32'd2723: dataIn1 = 32'd5
; 
32'd2724: dataIn1 = 32'd7
; 
32'd2725: dataIn1 = 32'd8
; 
32'd2726: dataIn1 = 32'd9
; 
32'd2727: dataIn1 = 32'd10
; 
32'd2728: dataIn1 = 32'd12
; 
32'd2729: dataIn1 = 32'd13
; 
32'd2730: dataIn1 = 32'd14
; 
32'd2731: dataIn1 = 32'd15
; 
32'd2732: dataIn1 = 32'd1
; 
32'd2733: dataIn1 = 32'd2
; 
32'd2734: dataIn1 = 32'd3
; 
32'd2735: dataIn1 = 32'd5
; 
32'd2736: dataIn1 = 32'd6
; 
32'd2737: dataIn1 = 32'd10
; 
32'd2738: dataIn1 = 32'd3
; 
32'd2739: dataIn1 = 32'd5
; 
32'd2740: dataIn1 = 32'd6
; 
32'd2741: dataIn1 = 32'd7
; 
32'd2742: dataIn1 = 32'd9
; 
32'd2743: dataIn1 = 32'd10
; 
32'd2744: dataIn1 = 32'd11
; 
32'd2745: dataIn1 = 32'd12
; 
32'd2746: dataIn1 = 32'd13
; 
32'd2747: dataIn1 = 32'd15
; 
32'd2748: dataIn1 = 32'd0
; 
32'd2749: dataIn1 = 32'd1
; 
32'd2750: dataIn1 = 32'd3
; 
32'd2751: dataIn1 = 32'd4
; 
32'd2752: dataIn1 = 32'd5
; 
32'd2753: dataIn1 = 32'd6
; 
32'd2754: dataIn1 = 32'd7
; 
32'd2755: dataIn1 = 32'd8
; 
32'd2756: dataIn1 = 32'd9
; 
32'd2757: dataIn1 = 32'd13
; 
32'd2758: dataIn1 = 32'd14
; 
32'd2759: dataIn1 = 32'd0
; 
32'd2760: dataIn1 = 32'd1
; 
32'd2761: dataIn1 = 32'd4
; 
32'd2762: dataIn1 = 32'd6
; 
32'd2763: dataIn1 = 32'd7
; 
32'd2764: dataIn1 = 32'd8
; 
32'd2765: dataIn1 = 32'd12
; 
32'd2766: dataIn1 = 32'd14
; 
32'd2767: dataIn1 = 32'd15
; 
32'd2768: dataIn1 = 32'd2
; 
32'd2769: dataIn1 = 32'd3
; 
32'd2770: dataIn1 = 32'd4
; 
32'd2771: dataIn1 = 32'd5
; 
32'd2772: dataIn1 = 32'd6
; 
32'd2773: dataIn1 = 32'd11
; 
32'd2774: dataIn1 = 32'd12
; 
32'd2775: dataIn1 = 32'd15
; 
32'd2776: dataIn1 = 32'd0
; 
32'd2777: dataIn1 = 32'd2
; 
32'd2778: dataIn1 = 32'd3
; 
32'd2779: dataIn1 = 32'd4
; 
32'd2780: dataIn1 = 32'd8
; 
32'd2781: dataIn1 = 32'd10
; 
32'd2782: dataIn1 = 32'd12
; 
32'd2783: dataIn1 = 32'd13
; 
32'd2784: dataIn1 = 32'd14
; 
32'd2785: dataIn1 = 32'd15
; 
32'd2786: dataIn1 = 32'd1
; 
32'd2787: dataIn1 = 32'd2
; 
32'd2788: dataIn1 = 32'd3
; 
32'd2789: dataIn1 = 32'd4
; 
32'd2790: dataIn1 = 32'd5
; 
32'd2791: dataIn1 = 32'd6
; 
32'd2792: dataIn1 = 32'd8
; 
32'd2793: dataIn1 = 32'd9
; 
32'd2794: dataIn1 = 32'd13
; 
32'd2795: dataIn1 = 32'd15
; 
32'd2796: dataIn1 = 32'd1
; 
32'd2797: dataIn1 = 32'd2
; 
32'd2798: dataIn1 = 32'd4
; 
32'd2799: dataIn1 = 32'd5
; 
32'd2800: dataIn1 = 32'd7
; 
32'd2801: dataIn1 = 32'd9
; 
32'd2802: dataIn1 = 32'd11
; 
32'd2803: dataIn1 = 32'd12
; 
32'd2804: dataIn1 = 32'd13
; 
32'd2805: dataIn1 = 32'd3
; 
32'd2806: dataIn1 = 32'd4
; 
32'd2807: dataIn1 = 32'd5
; 
32'd2808: dataIn1 = 32'd6
; 
32'd2809: dataIn1 = 32'd7
; 
32'd2810: dataIn1 = 32'd8
; 
32'd2811: dataIn1 = 32'd9
; 
32'd2812: dataIn1 = 32'd10
; 
32'd2813: dataIn1 = 32'd13
; 
32'd2814: dataIn1 = 32'd14
; 
32'd2815: dataIn1 = 32'd0
; 
32'd2816: dataIn1 = 32'd3
; 
32'd2817: dataIn1 = 32'd4
; 
32'd2818: dataIn1 = 32'd6
; 
32'd2819: dataIn1 = 32'd7
; 
32'd2820: dataIn1 = 32'd8
; 
32'd2821: dataIn1 = 32'd9
; 
32'd2822: dataIn1 = 32'd10
; 
32'd2823: dataIn1 = 32'd11
; 
32'd2824: dataIn1 = 32'd14
; 
32'd2825: dataIn1 = 32'd2
; 
32'd2826: dataIn1 = 32'd3
; 
32'd2827: dataIn1 = 32'd4
; 
32'd2828: dataIn1 = 32'd5
; 
32'd2829: dataIn1 = 32'd8
; 
32'd2830: dataIn1 = 32'd9
; 
32'd2831: dataIn1 = 32'd10
; 
32'd2832: dataIn1 = 32'd11
; 
32'd2833: dataIn1 = 32'd14
; 
32'd2834: dataIn1 = 32'd15
; 
32'd2835: dataIn1 = 32'd0
; 
32'd2836: dataIn1 = 32'd2
; 
32'd2837: dataIn1 = 32'd3
; 
32'd2838: dataIn1 = 32'd4
; 
32'd2839: dataIn1 = 32'd5
; 
32'd2840: dataIn1 = 32'd6
; 
32'd2841: dataIn1 = 32'd8
; 
32'd2842: dataIn1 = 32'd9
; 
32'd2843: dataIn1 = 32'd10
; 
32'd2844: dataIn1 = 32'd12
; 
32'd2845: dataIn1 = 32'd13
; 
32'd2846: dataIn1 = 32'd15
; 
32'd2847: dataIn1 = 32'd0
; 
32'd2848: dataIn1 = 32'd1
; 
32'd2849: dataIn1 = 32'd2
; 
32'd2850: dataIn1 = 32'd4
; 
32'd2851: dataIn1 = 32'd6
; 
32'd2852: dataIn1 = 32'd7
; 
32'd2853: dataIn1 = 32'd8
; 
32'd2854: dataIn1 = 32'd9
; 
32'd2855: dataIn1 = 32'd10
; 
32'd2856: dataIn1 = 32'd11
; 
32'd2857: dataIn1 = 32'd13
; 
32'd2858: dataIn1 = 32'd15
; 
32'd2859: dataIn1 = 32'd0
; 
32'd2860: dataIn1 = 32'd1
; 
32'd2861: dataIn1 = 32'd2
; 
32'd2862: dataIn1 = 32'd3
; 
32'd2863: dataIn1 = 32'd4
; 
32'd2864: dataIn1 = 32'd6
; 
32'd2865: dataIn1 = 32'd7
; 
32'd2866: dataIn1 = 32'd8
; 
32'd2867: dataIn1 = 32'd9
; 
32'd2868: dataIn1 = 32'd10
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd47; 
32'd3: dataIn2 = 32'd86; 
32'd4: dataIn2 = 32'd5; 
32'd5: dataIn2 = 32'd39; 
32'd6: dataIn2 = 32'd23; 
32'd7: dataIn2 = 32'd32; 
32'd8: dataIn2 = 32'd76; 
32'd9: dataIn2 = 32'd23; 
32'd10: dataIn2 = 32'd67; 
32'd11: dataIn2 = 32'd53; 
32'd12: dataIn2 = 32'd92; 
32'd13: dataIn2 = 32'd25; 
32'd14: dataIn2 = 32'd14; 
32'd15: dataIn2 = 32'd80; 
32'd16: dataIn2 = 32'd14; 
32'd17: dataIn2 = 32'd38; 
default: 
	dataIn2 = 32'd99999; 
endcase 
32'd90: dataIn2 = 32'd76; 
32'd91: dataIn2 = 32'd41; 
32'd92: dataIn2 = 32'd95; 
32'd93: dataIn2 = 32'd18; 
32'd94: dataIn2 = 32'd2; 
32'd95: dataIn2 = 32'd3; 
32'd96: dataIn2 = 32'd74; 
32'd97: dataIn2 = 32'd81; 
32'd98: dataIn2 = 32'd86; 
32'd99: dataIn2 = 32'd9; 
32'd100: dataIn2 = 32'd46; 
32'd101: dataIn2 = 32'd21; 
32'd102: dataIn2 = 32'd81; 
32'd103: dataIn2 = 32'd64; 
32'd104: dataIn2 = 32'd78; 
32'd105: dataIn2 = 32'd25; 
32'd106: dataIn2 = 32'd100; 
32'd107: dataIn2 = 32'd60; 
32'd108: dataIn2 = 32'd56; 
32'd109: dataIn2 = 32'd41; 
32'd110: dataIn2 = 32'd78; 
32'd111: dataIn2 = 32'd17; 
32'd112: dataIn2 = 32'd64; 
32'd113: dataIn2 = 32'd14; 
32'd114: dataIn2 = 32'd61; 
32'd115: dataIn2 = 32'd56; 
32'd116: dataIn2 = 32'd83; 
32'd117: dataIn2 = 32'd83; 
32'd118: dataIn2 = 32'd34; 
32'd119: dataIn2 = 32'd15; 
32'd120: dataIn2 = 32'd87; 
32'd121: dataIn2 = 32'd51; 
32'd122: dataIn2 = 32'd92; 
32'd123: dataIn2 = 32'd57; 
32'd124: dataIn2 = 32'd76; 
32'd125: dataIn2 = 32'd17; 
32'd126: dataIn2 = 32'd41; 
32'd127: dataIn2 = 32'd96; 
32'd128: dataIn2 = 32'd55; 
32'd129: dataIn2 = 32'd17; 
32'd130: dataIn2 = 32'd67; 
32'd131: dataIn2 = 32'd31; 
32'd132: dataIn2 = 32'd8; 
32'd133: dataIn2 = 32'd0; 
32'd134: dataIn2 = 32'd42; 
32'd135: dataIn2 = 32'd5; 
32'd136: dataIn2 = 32'd54; 
32'd137: dataIn2 = 32'd27; 
32'd138: dataIn2 = 32'd3; 
32'd139: dataIn2 = 32'd72; 
32'd140: dataIn2 = 32'd41; 
32'd141: dataIn2 = 32'd47; 
32'd142: dataIn2 = 32'd46; 
32'd143: dataIn2 = 32'd28; 
32'd144: dataIn2 = 32'd31; 
32'd145: dataIn2 = 32'd23; 
32'd146: dataIn2 = 32'd43; 
32'd147: dataIn2 = 32'd73; 
32'd148: dataIn2 = 32'd12; 
32'd149: dataIn2 = 32'd85; 
32'd150: dataIn2 = 32'd7; 
32'd151: dataIn2 = 32'd88; 
32'd152: dataIn2 = 32'd21; 
32'd153: dataIn2 = 32'd52; 
32'd154: dataIn2 = 32'd76; 
32'd155: dataIn2 = 32'd41; 
32'd156: dataIn2 = 32'd5; 
32'd157: dataIn2 = 32'd70; 
32'd158: dataIn2 = 32'd75; 
32'd159: dataIn2 = 32'd22; 
32'd160: dataIn2 = 32'd42; 
32'd161: dataIn2 = 32'd20; 
32'd162: dataIn2 = 32'd31; 
32'd163: dataIn2 = 32'd36; 
32'd164: dataIn2 = 32'd23; 
32'd165: dataIn2 = 32'd1; 
32'd166: dataIn2 = 32'd45; 
32'd167: dataIn2 = 32'd74; 
32'd168: dataIn2 = 32'd75; 
32'd169: dataIn2 = 32'd45; 
32'd170: dataIn2 = 32'd89; 
32'd171: dataIn2 = 32'd88; 
32'd172: dataIn2 = 32'd39; 
32'd173: dataIn2 = 32'd85; 
32'd174: dataIn2 = 32'd8; 
32'd175: dataIn2 = 32'd23; 
32'd176: dataIn2 = 32'd71; 
32'd177: dataIn2 = 32'd10; 
32'd178: dataIn2 = 32'd43; 
32'd179: dataIn2 = 32'd25; 
32'd180: dataIn2 = 32'd3; 
32'd181: dataIn2 = 32'd10; 
32'd182: dataIn2 = 32'd30; 
32'd183: dataIn2 = 32'd53; 
32'd184: dataIn2 = 32'd3; 
32'd185: dataIn2 = 32'd54; 
32'd186: dataIn2 = 32'd17; 
32'd187: dataIn2 = 32'd21; 
32'd188: dataIn2 = 32'd94; 
32'd189: dataIn2 = 32'd28; 
32'd190: dataIn2 = 32'd2; 
32'd191: dataIn2 = 32'd80; 
32'd192: dataIn2 = 32'd30; 
32'd193: dataIn2 = 32'd37; 
32'd194: dataIn2 = 32'd93; 
32'd195: dataIn2 = 32'd56; 
32'd196: dataIn2 = 32'd46; 
32'd197: dataIn2 = 32'd55; 
32'd198: dataIn2 = 32'd14; 
32'd199: dataIn2 = 32'd35; 
32'd200: dataIn2 = 32'd44; 
32'd201: dataIn2 = 32'd57; 
32'd202: dataIn2 = 32'd87; 
32'd203: dataIn2 = 32'd23; 
32'd204: dataIn2 = 32'd73; 
32'd205: dataIn2 = 32'd44; 
32'd206: dataIn2 = 32'd39; 
32'd207: dataIn2 = 32'd63; 
32'd208: dataIn2 = 32'd63; 
32'd209: dataIn2 = 32'd6; 
32'd210: dataIn2 = 32'd3; 
32'd211: dataIn2 = 32'd27; 
32'd212: dataIn2 = 32'd57; 
32'd213: dataIn2 = 32'd60; 
32'd214: dataIn2 = 32'd27; 
32'd215: dataIn2 = 32'd22; 
32'd216: dataIn2 = 32'd62; 
32'd217: dataIn2 = 32'd21; 
32'd218: dataIn2 = 32'd14; 
32'd219: dataIn2 = 32'd92; 
32'd220: dataIn2 = 32'd26; 
32'd221: dataIn2 = 32'd88; 
32'd222: dataIn2 = 32'd83; 
32'd223: dataIn2 = 32'd85; 
32'd224: dataIn2 = 32'd53; 
32'd225: dataIn2 = 32'd60; 
32'd226: dataIn2 = 32'd26; 
32'd227: dataIn2 = 32'd28; 
32'd228: dataIn2 = 32'd68; 
32'd229: dataIn2 = 32'd33; 
32'd230: dataIn2 = 32'd39; 
32'd231: dataIn2 = 32'd20; 
32'd232: dataIn2 = 32'd56; 
32'd233: dataIn2 = 32'd85; 
32'd234: dataIn2 = 32'd64; 
32'd235: dataIn2 = 32'd30; 
32'd236: dataIn2 = 32'd49; 
32'd237: dataIn2 = 32'd85; 
32'd238: dataIn2 = 32'd6; 
32'd239: dataIn2 = 32'd32; 
32'd240: dataIn2 = 32'd11; 
32'd241: dataIn2 = 32'd56; 
32'd242: dataIn2 = 32'd79; 
32'd243: dataIn2 = 32'd87; 
32'd244: dataIn2 = 32'd40; 
32'd245: dataIn2 = 32'd65; 
32'd246: dataIn2 = 32'd17; 
32'd247: dataIn2 = 32'd58; 
32'd248: dataIn2 = 32'd35; 
32'd249: dataIn2 = 32'd94; 
32'd250: dataIn2 = 32'd32; 
32'd251: dataIn2 = 32'd24; 
32'd252: dataIn2 = 32'd93; 
32'd253: dataIn2 = 32'd6; 
32'd254: dataIn2 = 32'd51; 
32'd255: dataIn2 = 32'd87; 
32'd256: dataIn2 = 32'd96; 
32'd257: dataIn2 = 32'd95; 
32'd258: dataIn2 = 32'd23; 
32'd259: dataIn2 = 32'd34; 
32'd260: dataIn2 = 32'd33; 
32'd261: dataIn2 = 32'd25; 
32'd262: dataIn2 = 32'd20; 
32'd263: dataIn2 = 32'd32; 
32'd264: dataIn2 = 32'd43; 
32'd265: dataIn2 = 32'd73; 
32'd266: dataIn2 = 32'd75; 
32'd267: dataIn2 = 32'd9; 
32'd268: dataIn2 = 32'd86; 
default: 
	dataIn2 = 32'd99999; 
endcase 
end 
always begin 
#10 Clk = ~Clk; 
end 
//========== VCD ============ 
`ifdef VCD 
initial 
begin 
	$dumpfile("hht2_16_30.vcd");  
	$dumpvars; 
end 
`endif 
//===========RTLVCD ========== 
`ifdef RTLVCD 
initial 
begin 
	$dumpfile("hht_rtl.vcd"); 
	$dumpvars; 
end 
`endif 
endmodule 
