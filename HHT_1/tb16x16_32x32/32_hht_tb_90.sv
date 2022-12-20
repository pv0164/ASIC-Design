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
reg [31:0]wdata_col_base; 
wire [31:0] dataOut; 
reg fe_init; 
reg wn,rn,RD; 
 // Instantiate memory module 
//  memmodel m1 (addr,dataIn,dataOut,WR,Clk,Rst); 
//  mem_buffer m1 (dataOut, full, empty, Clk, Rst, wn, rn, dataIn); 
control t1 (Clk,v_values_base,wdata_col_base,addr1,addr2,dataIn1,dataIn2,Rst,csize,RD);  
//frontend t1 (Clk,Rst,fe_init,wdata_col_base,data_req,dataIn,init, 
//{m_cols[0],m_cols[1],m_cols[2],m_cols[3],m_cols[4]}, 
//done,wn); 
initial begin 
Clk = 1'b0; 
  v_values_base = 32'd2; 
  wdata_col_base = 32'd340 ; 
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
32'd340: dataIn1 = 32'd11; 
32'd341: dataIn1 = 32'd2; 
32'd342: dataIn1 = 32'd6; 
32'd343: dataIn1 = 32'd24; 
32'd344: dataIn1 = 32'd10; 
32'd345: dataIn1 = 32'd31; 
32'd346: dataIn1 = 32'd23; 
32'd347: dataIn1 = 32'd15; 
32'd348: dataIn1 = 32'd11; 
32'd349: dataIn1 = 32'd17; 
32'd350: dataIn1 = 32'd23; 
32'd351: dataIn1 = 32'd28; 
32'd352: dataIn1 = 32'd8; 
32'd353: dataIn1 = 32'd27; 
32'd354: dataIn1 = 32'd29; 
32'd355: dataIn1 = 32'd30; 
32'd356: dataIn1 = 32'd17; 
32'd357: dataIn1 = 32'd24; 
32'd358: dataIn1 = 32'd5; 
32'd359: dataIn1 = 32'd4; 
32'd360: dataIn1 = 32'd10; 
32'd361: dataIn1 = 32'd29; 
32'd362: dataIn1 = 32'd12; 
32'd363: dataIn1 = 32'd20; 
32'd364: dataIn1 = 32'd15; 
32'd365: dataIn1 = 32'd28; 
32'd366: dataIn1 = 32'd4; 
32'd367: dataIn1 = 32'd12; 
32'd368: dataIn1 = 32'd4; 
32'd369: dataIn1 = 32'd23; 
32'd370: dataIn1 = 32'd17; 
32'd371: dataIn1 = 32'd19; 
32'd372: dataIn1 = 32'd0; 
32'd373: dataIn1 = 32'd2; 
32'd374: dataIn1 = 32'd7; 
32'd375: dataIn1 = 32'd12; 
32'd376: dataIn1 = 32'd8; 
32'd377: dataIn1 = 32'd17; 
32'd378: dataIn1 = 32'd25; 
32'd379: dataIn1 = 32'd24; 
32'd380: dataIn1 = 32'd18; 
32'd381: dataIn1 = 32'd17; 
32'd382: dataIn1 = 32'd12; 
32'd383: dataIn1 = 32'd16; 
32'd384: dataIn1 = 32'd3; 
32'd385: dataIn1 = 32'd12; 
32'd386: dataIn1 = 32'd26; 
32'd387: dataIn1 = 32'd6; 
32'd388: dataIn1 = 32'd22; 
32'd389: dataIn1 = 32'd15; 
32'd390: dataIn1 = 32'd13; 
32'd391: dataIn1 = 32'd28; 
32'd392: dataIn1 = 32'd15; 
32'd393: dataIn1 = 32'd26; 
32'd394: dataIn1 = 32'd27; 
32'd395: dataIn1 = 32'd28; 
32'd396: dataIn1 = 32'd0; 
32'd397: dataIn1 = 32'd13; 
32'd398: dataIn1 = 32'd14; 
32'd399: dataIn1 = 32'd18; 
32'd400: dataIn1 = 32'd13; 
32'd401: dataIn1 = 32'd17; 
32'd402: dataIn1 = 32'd14; 
32'd403: dataIn1 = 32'd0; 
32'd404: dataIn1 = 32'd22; 
32'd405: dataIn1 = 32'd15; 
32'd406: dataIn1 = 32'd5; 
32'd407: dataIn1 = 32'd5; 
32'd408: dataIn1 = 32'd4; 
32'd409: dataIn1 = 32'd16; 
32'd410: dataIn1 = 32'd12; 
32'd411: dataIn1 = 32'd1; 
32'd412: dataIn1 = 32'd0; 
32'd413: dataIn1 = 32'd11; 
32'd414: dataIn1 = 32'd27; 
32'd415: dataIn1 = 32'd0; 
32'd416: dataIn1 = 32'd15; 
32'd417: dataIn1 = 32'd0; 
32'd418: dataIn1 = 32'd21; 
32'd419: dataIn1 = 32'd23; 
32'd420: dataIn1 = 32'd3; 
32'd421: dataIn1 = 32'd12; 
32'd422: dataIn1 = 32'd30; 
32'd423: dataIn1 = 32'd17; 
32'd424: dataIn1 = 32'd7; 
32'd425: dataIn1 = 32'd3; 
32'd426: dataIn1 = 32'd15; 
32'd427: dataIn1 = 32'd22; 
32'd428: dataIn1 = 32'd31; 
32'd429: dataIn1 = 32'd17; 
32'd430: dataIn1 = 32'd2; 
32'd431: dataIn1 = 32'd28; 
32'd432: dataIn1 = 32'd27; 
32'd433: dataIn1 = 32'd3; 
32'd434: dataIn1 = 32'd25; 
32'd435: dataIn1 = 32'd15; 
32'd436: dataIn1 = 32'd2; 
32'd437: dataIn1 = 32'd15; 
32'd438: dataIn1 = 32'd2; 
32'd439: dataIn1 = 32'd11; 
32'd440: dataIn1 = 32'd10; 
32'd441: dataIn1 = 32'd24; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd78; 
32'd3: dataIn2 = 32'd59; 
32'd4: dataIn2 = 32'd60; 
32'd5: dataIn2 = 32'd62; 
32'd6: dataIn2 = 32'd1; 
32'd7: dataIn2 = 32'd35; 
32'd8: dataIn2 = 32'd40; 
32'd9: dataIn2 = 32'd43; 
32'd10: dataIn2 = 32'd63; 
32'd11: dataIn2 = 32'd32; 
32'd12: dataIn2 = 32'd86; 
32'd13: dataIn2 = 32'd71; 
32'd14: dataIn2 = 32'd45; 
32'd15: dataIn2 = 32'd94; 
32'd16: dataIn2 = 32'd22; 
32'd17: dataIn2 = 32'd44; 
32'd18: dataIn2 = 32'd64; 
32'd19: dataIn2 = 32'd25; 
32'd20: dataIn2 = 32'd20; 
32'd21: dataIn2 = 32'd53; 
32'd22: dataIn2 = 32'd16; 
32'd23: dataIn2 = 32'd44; 
32'd24: dataIn2 = 32'd75; 
32'd25: dataIn2 = 32'd45; 
32'd26: dataIn2 = 32'd84; 
32'd27: dataIn2 = 32'd6; 
32'd28: dataIn2 = 32'd11; 
32'd29: dataIn2 = 32'd4; 
32'd30: dataIn2 = 32'd15; 
32'd31: dataIn2 = 32'd31; 
32'd32: dataIn2 = 32'd65; 
32'd33: dataIn2 = 32'd48; 
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
	$dumpfile("hht_synth.vcd"); 
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
