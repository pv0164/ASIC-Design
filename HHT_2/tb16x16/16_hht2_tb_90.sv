//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 26 ; 
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
  wdata_col_base = 32'd1160 ; 
  row_base = 32'd11860 ; 
  csize = COL_SIZE; 
 fe_init = 1'b1; 
  RD = 1'b1; 
 #15; 
Rst = 1'b0; 
#15 Rst = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #700; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd11860: dataIn1 = 32'd0
; 
32'd11861: dataIn1 = 32'd1
; 
32'd11862: dataIn1 = 32'd4
; 
32'd11863: dataIn1 = 32'd5
; 
32'd11864: dataIn1 = 32'd6
; 
32'd11865: dataIn1 = 32'd8
; 
32'd11866: dataIn1 = 32'd10
; 
32'd11867: dataIn1 = 32'd13
; 
32'd11868: dataIn1 = 32'd17
; 
32'd11869: dataIn1 = 32'd19
; 
32'd11870: dataIn1 = 32'd19
; 
32'd11871: dataIn1 = 32'd20
; 
32'd11872: dataIn1 = 32'd22
; 
32'd11873: dataIn1 = 32'd23
; 
32'd11874: dataIn1 = 32'd23
; 
32'd11875: dataIn1 = 32'd24
; 
32'd11876: dataIn1 = 32'd25
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
32'd1160: dataIn1 = 32'd0
; 
32'd1161: dataIn1 = 32'd1
; 
32'd1162: dataIn1 = 32'd4
; 
32'd1163: dataIn1 = 32'd5
; 
32'd1164: dataIn1 = 32'd6
; 
32'd1165: dataIn1 = 32'd8
; 
32'd1166: dataIn1 = 32'd10
; 
32'd1167: dataIn1 = 32'd13
; 
32'd1168: dataIn1 = 32'd17
; 
32'd1169: dataIn1 = 32'd19
; 
32'd1170: dataIn1 = 32'd19
; 
32'd1171: dataIn1 = 32'd20
; 
32'd1172: dataIn1 = 32'd22
; 
32'd1173: dataIn1 = 32'd23
; 
32'd1174: dataIn1 = 32'd23
; 
32'd1175: dataIn1 = 32'd24
; 
32'd1176: dataIn1 = 32'd25
; 
32'd1177: dataIn1 = 32'd7
; 
32'd1178: dataIn1 = 32'd9
; 
32'd1179: dataIn1 = 32'd11
; 
32'd1180: dataIn1 = 32'd15
; 
32'd1181: dataIn1 = 32'd11
; 
32'd1182: dataIn1 = 32'd14
; 
32'd1183: dataIn1 = 32'd2
; 
32'd1184: dataIn1 = 32'd10
; 
32'd1185: dataIn1 = 32'd14
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd46; 
32'd3: dataIn2 = 32'd51; 
32'd4: dataIn2 = 32'd5; 
32'd5: dataIn2 = 32'd87; 
32'd6: dataIn2 = 32'd28; 
32'd7: dataIn2 = 32'd95; 
32'd8: dataIn2 = 32'd61; 
32'd9: dataIn2 = 32'd91; 
32'd10: dataIn2 = 32'd23; 
32'd11: dataIn2 = 32'd57; 
32'd12: dataIn2 = 32'd48; 
32'd13: dataIn2 = 32'd78; 
32'd14: dataIn2 = 32'd86; 
32'd15: dataIn2 = 32'd7; 
32'd16: dataIn2 = 32'd67; 
32'd17: dataIn2 = 32'd84; 
default: 
	dataIn2 = 32'd99999; 
endcase 
32'd90: dataIn2 = 32'd91; 
32'd91: dataIn2 = 32'd37; 
32'd92: dataIn2 = 32'd69; 
32'd93: dataIn2 = 32'd100; 
32'd94: dataIn2 = 32'd6; 
32'd95: dataIn2 = 32'd31; 
32'd96: dataIn2 = 32'd36; 
32'd97: dataIn2 = 32'd0; 
32'd98: dataIn2 = 32'd56; 
32'd99: dataIn2 = 32'd8; 
32'd100: dataIn2 = 32'd56; 
32'd101: dataIn2 = 32'd67; 
32'd102: dataIn2 = 32'd8; 
32'd103: dataIn2 = 32'd55; 
32'd104: dataIn2 = 32'd26; 
32'd105: dataIn2 = 32'd99; 
32'd106: dataIn2 = 32'd70; 
32'd107: dataIn2 = 32'd13; 
32'd108: dataIn2 = 32'd66; 
32'd109: dataIn2 = 32'd62; 
32'd110: dataIn2 = 32'd88; 
32'd111: dataIn2 = 32'd56; 
32'd112: dataIn2 = 32'd89; 
32'd113: dataIn2 = 32'd51; 
32'd114: dataIn2 = 32'd70; 
32'd115: dataIn2 = 32'd81; 
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
	$dumpfile("hht2_16_90.vcd");  
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
