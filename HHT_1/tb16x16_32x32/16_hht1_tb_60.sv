//16x16 
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
  wdata_col_base = 32'd180 ; 
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
32'd180: dataIn1 = 32'd1; 
32'd181: dataIn1 = 32'd13; 
32'd182: dataIn1 = 32'd12; 
32'd183: dataIn1 = 32'd6; 
32'd184: dataIn1 = 32'd7; 
32'd185: dataIn1 = 32'd0; 
32'd186: dataIn1 = 32'd12; 
32'd187: dataIn1 = 32'd11; 
32'd188: dataIn1 = 32'd0; 
32'd189: dataIn1 = 32'd3; 
32'd190: dataIn1 = 32'd14; 
32'd191: dataIn1 = 32'd5; 
32'd192: dataIn1 = 32'd1; 
32'd193: dataIn1 = 32'd8; 
32'd194: dataIn1 = 32'd15; 
32'd195: dataIn1 = 32'd3; 
32'd196: dataIn1 = 32'd14; 
32'd197: dataIn1 = 32'd2; 
32'd198: dataIn1 = 32'd14; 
32'd199: dataIn1 = 32'd5; 
32'd200: dataIn1 = 32'd2; 
32'd201: dataIn1 = 32'd14; 
32'd202: dataIn1 = 32'd11; 
32'd203: dataIn1 = 32'd8; 
32'd204: dataIn1 = 32'd2; 
32'd205: dataIn1 = 32'd9; 
32'd206: dataIn1 = 32'd9; 
32'd207: dataIn1 = 32'd11; 
32'd208: dataIn1 = 32'd9; 
32'd209: dataIn1 = 32'd4; 
32'd210: dataIn1 = 32'd6; 
32'd211: dataIn1 = 32'd7; 
32'd212: dataIn1 = 32'd13; 
32'd213: dataIn1 = 32'd11; 
32'd214: dataIn1 = 32'd15; 
32'd215: dataIn1 = 32'd13; 
32'd216: dataIn1 = 32'd9; 
32'd217: dataIn1 = 32'd2; 
32'd218: dataIn1 = 32'd5; 
32'd219: dataIn1 = 32'd4; 
32'd220: dataIn1 = 32'd15; 
32'd221: dataIn1 = 32'd7; 
32'd222: dataIn1 = 32'd14; 
32'd223: dataIn1 = 32'd10; 
32'd224: dataIn1 = 32'd7; 
32'd225: dataIn1 = 32'd5; 
32'd226: dataIn1 = 32'd7; 
32'd227: dataIn1 = 32'd15; 
32'd228: dataIn1 = 32'd8; 
32'd229: dataIn1 = 32'd2; 
32'd230: dataIn1 = 32'd11; 
32'd231: dataIn1 = 32'd2; 
32'd232: dataIn1 = 32'd4; 
32'd233: dataIn1 = 32'd1; 
32'd234: dataIn1 = 32'd0; 
32'd235: dataIn1 = 32'd15; 
32'd236: dataIn1 = 32'd2; 
32'd237: dataIn1 = 32'd1; 
32'd238: dataIn1 = 32'd8; 
32'd239: dataIn1 = 32'd3; 
32'd240: dataIn1 = 32'd9; 
32'd241: dataIn1 = 32'd15; 
32'd242: dataIn1 = 32'd10; 
32'd243: dataIn1 = 32'd1; 
32'd244: dataIn1 = 32'd11; 
32'd245: dataIn1 = 32'd4; 
32'd246: dataIn1 = 32'd9; 
32'd247: dataIn1 = 32'd5; 
32'd248: dataIn1 = 32'd2; 
32'd249: dataIn1 = 32'd10; 
32'd250: dataIn1 = 32'd3; 
32'd251: dataIn1 = 32'd10; 
32'd252: dataIn1 = 32'd1; 
32'd253: dataIn1 = 32'd11; 
32'd254: dataIn1 = 32'd9; 
32'd255: dataIn1 = 32'd2; 
32'd256: dataIn1 = 32'd1; 
32'd257: dataIn1 = 32'd0; 
32'd258: dataIn1 = 32'd7; 
32'd259: dataIn1 = 32'd12; 
32'd260: dataIn1 = 32'd9; 
32'd261: dataIn1 = 32'd11; 
32'd262: dataIn1 = 32'd0; 
32'd263: dataIn1 = 32'd1; 
32'd264: dataIn1 = 32'd5; 
32'd265: dataIn1 = 32'd4; 
32'd266: dataIn1 = 32'd8; 
32'd267: dataIn1 = 32'd10; 
32'd268: dataIn1 = 32'd12; 
32'd269: dataIn1 = 32'd5; 
32'd270: dataIn1 = 32'd9; 
32'd271: dataIn1 = 32'd13; 
32'd272: dataIn1 = 32'd15; 
32'd273: dataIn1 = 32'd11; 
32'd274: dataIn1 = 32'd1; 
32'd275: dataIn1 = 32'd5; 
32'd276: dataIn1 = 32'd10; 
32'd277: dataIn1 = 32'd12; 
32'd278: dataIn1 = 32'd3; 
32'd279: dataIn1 = 32'd11; 
32'd280: dataIn1 = 32'd2; 
32'd281: dataIn1 = 32'd4; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd48; 
32'd3: dataIn2 = 32'd81; 
32'd4: dataIn2 = 32'd69; 
32'd5: dataIn2 = 32'd93; 
32'd6: dataIn2 = 32'd68; 
32'd7: dataIn2 = 32'd98; 
32'd8: dataIn2 = 32'd14; 
32'd9: dataIn2 = 32'd85; 
32'd10: dataIn2 = 32'd54; 
32'd11: dataIn2 = 32'd37; 
32'd12: dataIn2 = 32'd39; 
32'd13: dataIn2 = 32'd1; 
32'd14: dataIn2 = 32'd24; 
32'd15: dataIn2 = 32'd89; 
32'd16: dataIn2 = 32'd66; 
32'd17: dataIn2 = 32'd5; 
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
	$dumpfile("hht1_16_60.vcd");  
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
