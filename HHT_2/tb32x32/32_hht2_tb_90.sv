//32x32 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 102 ; 
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
  matrix_base = 32'd170 ; 
  wdata_col_base = 32'd2720 ; 
  row_base = 32'd28220 ; 
  csize = COL_SIZE; 
 fe_init = 1'b1; 
  RD = 1'b1; 
 #15; 
Rst = 1'b0; 
#15 Rst = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #2220; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd28220: dataIn1 = 32'd0
; 
32'd28221: dataIn1 = 32'd4
; 
32'd28222: dataIn1 = 32'd9
; 
32'd28223: dataIn1 = 32'd14
; 
32'd28224: dataIn1 = 32'd14
; 
32'd28225: dataIn1 = 32'd15
; 
32'd28226: dataIn1 = 32'd19
; 
32'd28227: dataIn1 = 32'd24
; 
32'd28228: dataIn1 = 32'd26
; 
32'd28229: dataIn1 = 32'd28
; 
32'd28230: dataIn1 = 32'd30
; 
32'd28231: dataIn1 = 32'd33
; 
32'd28232: dataIn1 = 32'd38
; 
32'd28233: dataIn1 = 32'd42
; 
32'd28234: dataIn1 = 32'd43
; 
32'd28235: dataIn1 = 32'd46
; 
32'd28236: dataIn1 = 32'd48
; 
32'd28237: dataIn1 = 32'd51
; 
32'd28238: dataIn1 = 32'd58
; 
32'd28239: dataIn1 = 32'd59
; 
32'd28240: dataIn1 = 32'd61
; 
32'd28241: dataIn1 = 32'd66
; 
32'd28242: dataIn1 = 32'd70
; 
32'd28243: dataIn1 = 32'd71
; 
32'd28244: dataIn1 = 32'd74
; 
32'd28245: dataIn1 = 32'd78
; 
32'd28246: dataIn1 = 32'd83
; 
32'd28247: dataIn1 = 32'd85
; 
32'd28248: dataIn1 = 32'd90
; 
32'd28249: dataIn1 = 32'd98
; 
32'd28250: dataIn1 = 32'd101
; 
32'd28251: dataIn1 = 32'd104
; 
32'd28252: dataIn1 = 32'd109
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
32'd2720: dataIn1 = 32'd0
; 
32'd2721: dataIn1 = 32'd4
; 
32'd2722: dataIn1 = 32'd9
; 
32'd2723: dataIn1 = 32'd14
; 
32'd2724: dataIn1 = 32'd14
; 
32'd2725: dataIn1 = 32'd15
; 
32'd2726: dataIn1 = 32'd19
; 
32'd2727: dataIn1 = 32'd24
; 
32'd2728: dataIn1 = 32'd26
; 
32'd2729: dataIn1 = 32'd28
; 
32'd2730: dataIn1 = 32'd30
; 
32'd2731: dataIn1 = 32'd33
; 
32'd2732: dataIn1 = 32'd38
; 
32'd2733: dataIn1 = 32'd42
; 
32'd2734: dataIn1 = 32'd43
; 
32'd2735: dataIn1 = 32'd46
; 
32'd2736: dataIn1 = 32'd48
; 
32'd2737: dataIn1 = 32'd51
; 
32'd2738: dataIn1 = 32'd58
; 
32'd2739: dataIn1 = 32'd59
; 
32'd2740: dataIn1 = 32'd61
; 
32'd2741: dataIn1 = 32'd66
; 
32'd2742: dataIn1 = 32'd70
; 
32'd2743: dataIn1 = 32'd71
; 
32'd2744: dataIn1 = 32'd74
; 
32'd2745: dataIn1 = 32'd78
; 
32'd2746: dataIn1 = 32'd83
; 
32'd2747: dataIn1 = 32'd85
; 
32'd2748: dataIn1 = 32'd90
; 
32'd2749: dataIn1 = 32'd98
; 
32'd2750: dataIn1 = 32'd101
; 
32'd2751: dataIn1 = 32'd104
; 
32'd2752: dataIn1 = 32'd109
; 
32'd2753: dataIn1 = 32'd1
; 
32'd2754: dataIn1 = 32'd8
; 
32'd2755: dataIn1 = 32'd12
; 
32'd2756: dataIn1 = 32'd30
; 
32'd2757: dataIn1 = 32'd11
; 
32'd2758: dataIn1 = 32'd16
; 
32'd2759: dataIn1 = 32'd18
; 
32'd2760: dataIn1 = 32'd19
; 
32'd2761: dataIn1 = 32'd24
; 
32'd2762: dataIn1 = 32'd3
; 
32'd2763: dataIn1 = 32'd8
; 
32'd2764: dataIn1 = 32'd21
; 
32'd2765: dataIn1 = 32'd24
; 
32'd2766: dataIn1 = 32'd30
; 
32'd2767: dataIn1 = 32'd23
; 
32'd2768: dataIn1 = 32'd4
; 
32'd2769: dataIn1 = 32'd11
; 
32'd2770: dataIn1 = 32'd20
; 
32'd2771: dataIn1 = 32'd31
; 
32'd2772: dataIn1 = 32'd14
; 
32'd2773: dataIn1 = 32'd17
; 
32'd2774: dataIn1 = 32'd18
; 
32'd2775: dataIn1 = 32'd22
; 
32'd2776: dataIn1 = 32'd28
; 
32'd2777: dataIn1 = 32'd4
; 
32'd2778: dataIn1 = 32'd14
; 
32'd2779: dataIn1 = 32'd4
; 
32'd2780: dataIn1 = 32'd17
; 
32'd2781: dataIn1 = 32'd0
; 
32'd2782: dataIn1 = 32'd12
; 
32'd2783: dataIn1 = 32'd15
; 
32'd2784: dataIn1 = 32'd16
; 
32'd2785: dataIn1 = 32'd17
; 
32'd2786: dataIn1 = 32'd10
; 
32'd2787: dataIn1 = 32'd21
; 
32'd2788: dataIn1 = 32'd26
; 
32'd2789: dataIn1 = 32'd27
; 
32'd2790: dataIn1 = 32'd29
; 
32'd2791: dataIn1 = 32'd1
; 
32'd2792: dataIn1 = 32'd16
; 
32'd2793: dataIn1 = 32'd24
; 
32'd2794: dataIn1 = 32'd31
; 
32'd2795: dataIn1 = 32'd10
; 
32'd2796: dataIn1 = 32'd1
; 
32'd2797: dataIn1 = 32'd2
; 
32'd2798: dataIn1 = 32'd10
; 
32'd2799: dataIn1 = 32'd9
; 
32'd2800: dataIn1 = 32'd19
; 
32'd2801: dataIn1 = 32'd11
; 
32'd2802: dataIn1 = 32'd24
; 
32'd2803: dataIn1 = 32'd25
; 
32'd2804: dataIn1 = 32'd5
; 
32'd2805: dataIn1 = 32'd7
; 
32'd2806: dataIn1 = 32'd8
; 
32'd2807: dataIn1 = 32'd15
; 
32'd2808: dataIn1 = 32'd18
; 
32'd2809: dataIn1 = 32'd25
; 
32'd2810: dataIn1 = 32'd27
; 
32'd2811: dataIn1 = 32'd27
; 
32'd2812: dataIn1 = 32'd1
; 
32'd2813: dataIn1 = 32'd25
; 
32'd2814: dataIn1 = 32'd2
; 
32'd2815: dataIn1 = 32'd8
; 
32'd2816: dataIn1 = 32'd13
; 
32'd2817: dataIn1 = 32'd21
; 
32'd2818: dataIn1 = 32'd30
; 
32'd2819: dataIn1 = 32'd0
; 
32'd2820: dataIn1 = 32'd9
; 
32'd2821: dataIn1 = 32'd11
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd73; 
32'd3: dataIn2 = 32'd45; 
32'd4: dataIn2 = 32'd2; 
32'd5: dataIn2 = 32'd32; 
32'd6: dataIn2 = 32'd78; 
32'd7: dataIn2 = 32'd16; 
32'd8: dataIn2 = 32'd92; 
32'd9: dataIn2 = 32'd36; 
32'd10: dataIn2 = 32'd48; 
32'd11: dataIn2 = 32'd98; 
32'd12: dataIn2 = 32'd78; 
32'd13: dataIn2 = 32'd6; 
32'd14: dataIn2 = 32'd39; 
32'd15: dataIn2 = 32'd69; 
32'd16: dataIn2 = 32'd46; 
32'd17: dataIn2 = 32'd72; 
32'd18: dataIn2 = 32'd1; 
32'd19: dataIn2 = 32'd81; 
32'd20: dataIn2 = 32'd64; 
32'd21: dataIn2 = 32'd49; 
32'd22: dataIn2 = 32'd0; 
32'd23: dataIn2 = 32'd73; 
32'd24: dataIn2 = 32'd43; 
32'd25: dataIn2 = 32'd41; 
32'd26: dataIn2 = 32'd11; 
32'd27: dataIn2 = 32'd100; 
32'd28: dataIn2 = 32'd75; 
32'd29: dataIn2 = 32'd36; 
32'd30: dataIn2 = 32'd58; 
32'd31: dataIn2 = 32'd51; 
32'd32: dataIn2 = 32'd27; 
32'd33: dataIn2 = 32'd53; 
default: 
	dataIn2 = 32'd99999; 
endcase 
32'd170: dataIn2 = 32'd10; 
32'd171: dataIn2 = 32'd93; 
32'd172: dataIn2 = 32'd97; 
32'd173: dataIn2 = 32'd11; 
32'd174: dataIn2 = 32'd84; 
32'd175: dataIn2 = 32'd59; 
32'd176: dataIn2 = 32'd96; 
32'd177: dataIn2 = 32'd42; 
32'd178: dataIn2 = 32'd20; 
32'd179: dataIn2 = 32'd55; 
32'd180: dataIn2 = 32'd36; 
32'd181: dataIn2 = 32'd31; 
32'd182: dataIn2 = 32'd48; 
32'd183: dataIn2 = 32'd63; 
32'd184: dataIn2 = 32'd50; 
32'd185: dataIn2 = 32'd27; 
32'd186: dataIn2 = 32'd78; 
32'd187: dataIn2 = 32'd69; 
32'd188: dataIn2 = 32'd70; 
32'd189: dataIn2 = 32'd34; 
32'd190: dataIn2 = 32'd64; 
32'd191: dataIn2 = 32'd2; 
32'd192: dataIn2 = 32'd38; 
32'd193: dataIn2 = 32'd46; 
32'd194: dataIn2 = 32'd60; 
32'd195: dataIn2 = 32'd80; 
32'd196: dataIn2 = 32'd81; 
32'd197: dataIn2 = 32'd93; 
32'd198: dataIn2 = 32'd35; 
32'd199: dataIn2 = 32'd2; 
32'd200: dataIn2 = 32'd98; 
32'd201: dataIn2 = 32'd72; 
32'd202: dataIn2 = 32'd46; 
32'd203: dataIn2 = 32'd51; 
32'd204: dataIn2 = 32'd12; 
32'd205: dataIn2 = 32'd28; 
32'd206: dataIn2 = 32'd15; 
32'd207: dataIn2 = 32'd99; 
32'd208: dataIn2 = 32'd92; 
32'd209: dataIn2 = 32'd61; 
32'd210: dataIn2 = 32'd39; 
32'd211: dataIn2 = 32'd64; 
32'd212: dataIn2 = 32'd49; 
32'd213: dataIn2 = 32'd74; 
32'd214: dataIn2 = 32'd19; 
32'd215: dataIn2 = 32'd88; 
32'd216: dataIn2 = 32'd40; 
32'd217: dataIn2 = 32'd4; 
32'd218: dataIn2 = 32'd11; 
32'd219: dataIn2 = 32'd29; 
32'd220: dataIn2 = 32'd60; 
32'd221: dataIn2 = 32'd16; 
32'd222: dataIn2 = 32'd25; 
32'd223: dataIn2 = 32'd53; 
32'd224: dataIn2 = 32'd98; 
32'd225: dataIn2 = 32'd51; 
32'd226: dataIn2 = 32'd6; 
32'd227: dataIn2 = 32'd92; 
32'd228: dataIn2 = 32'd68; 
32'd229: dataIn2 = 32'd45; 
32'd230: dataIn2 = 32'd45; 
32'd231: dataIn2 = 32'd74; 
32'd232: dataIn2 = 32'd47; 
32'd233: dataIn2 = 32'd4; 
32'd234: dataIn2 = 32'd18; 
32'd235: dataIn2 = 32'd30; 
32'd236: dataIn2 = 32'd41; 
32'd237: dataIn2 = 32'd11; 
32'd238: dataIn2 = 32'd84; 
32'd239: dataIn2 = 32'd9; 
32'd240: dataIn2 = 32'd40; 
32'd241: dataIn2 = 32'd8; 
32'd242: dataIn2 = 32'd3; 
32'd243: dataIn2 = 32'd43; 
32'd244: dataIn2 = 32'd12; 
32'd245: dataIn2 = 32'd56; 
32'd246: dataIn2 = 32'd60; 
32'd247: dataIn2 = 32'd1; 
32'd248: dataIn2 = 32'd51; 
32'd249: dataIn2 = 32'd29; 
32'd250: dataIn2 = 32'd28; 
32'd251: dataIn2 = 32'd46; 
32'd252: dataIn2 = 32'd34; 
32'd253: dataIn2 = 32'd90; 
32'd254: dataIn2 = 32'd3; 
32'd255: dataIn2 = 32'd34; 
32'd256: dataIn2 = 32'd62; 
32'd257: dataIn2 = 32'd53; 
32'd258: dataIn2 = 32'd41; 
32'd259: dataIn2 = 32'd39; 
32'd260: dataIn2 = 32'd24; 
32'd261: dataIn2 = 32'd73; 
32'd262: dataIn2 = 32'd59; 
32'd263: dataIn2 = 32'd51; 
32'd264: dataIn2 = 32'd43; 
32'd265: dataIn2 = 32'd15; 
32'd266: dataIn2 = 32'd46; 
32'd267: dataIn2 = 32'd0; 
32'd268: dataIn2 = 32'd83; 
32'd269: dataIn2 = 32'd40; 
32'd270: dataIn2 = 32'd94; 
32'd271: dataIn2 = 32'd80; 
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
	$dumpfile("hht2_32_90.vcd");  
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
