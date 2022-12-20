//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 26 ; 
reg Clk,Rst,WR,mem_init; 
reg [31:0] dataIn1,dataIn2,csize,base_dat_a,base_dat_b,cpu_addr; 
reg [31:0]v_values_base; 
  wire [31:0]addr1,addr2; 
  wire [4:0]regaddr1,regaddr2,rdata,adata; 
  wire [31:0]val[0:8]; 
reg [31:0]wdata_col_base,row_base,matrix_base; 
wire [31:0] dataOut; 
reg fe_init; 
reg wn,rn,RD; 
wire hht;
 // Instantiate memory module 
//  memmodel m1 (addr,dataIn,dataOut,WR,Clk,Rst); 
//  mem_buffer m1 (dataOut, full, empty, Clk, Rst, wn, rn, dataIn); 

control t1 (Clk,base_dat_a,base_dat_b,addr1,addr2,dataIn1,dataIn2,Rst,RD,csize,cpu_addr,hht,regaddr1,regaddr2,rdata,adata);


initial begin 
Clk = 1'b0; 
  RD = 1'b1; 
 #15; 
Rst = 1'b0; 
cpu_addr = 32'd126;
  v_values_base = 32'd2; 
  wdata_col_base = 32'd180 ; 
  csize = COL_SIZE; 
 fe_init = 1'b1; 
#15 Rst = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #8330; 
$finish; 
end 
always @(*) begin 
if(regaddr1 == 5'd6)
	base_dat_a = wdata_col_base;
else if (regaddr1 == 5'd8)
	base_dat_a = v_values_base;
if(regaddr2 == 5'd15)
	base_dat_b = row_base;
else if (regaddr2 == 5'd9)
	base_dat_b = matrix_base;
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd180: dataIn1 = 32'd5; 
32'd181: dataIn1 = 32'd15; 
32'd182: dataIn1 = 32'd6; 
32'd183: dataIn1 = 32'd12; 
32'd184: dataIn1 = 32'd2; 
32'd185: dataIn1 = 32'd15; 
32'd186: dataIn1 = 32'd7; 
32'd187: dataIn1 = 32'd2; 
32'd188: dataIn1 = 32'd4; 
32'd189: dataIn1 = 32'd15; 
32'd190: dataIn1 = 32'd0; 
32'd191: dataIn1 = 32'd1; 
32'd192: dataIn1 = 32'd10; 
32'd193: dataIn1 = 32'd15; 
32'd194: dataIn1 = 32'd8; 
32'd195: dataIn1 = 32'd5; 
32'd196: dataIn1 = 32'd15; 
32'd197: dataIn1 = 32'd0; 
32'd198: dataIn1 = 32'd1; 
32'd199: dataIn1 = 32'd0; 
32'd200: dataIn1 = 32'd2; 
32'd201: dataIn1 = 32'd0; 
32'd202: dataIn1 = 32'd0; 
32'd203: dataIn1 = 32'd5; 
32'd204: dataIn1 = 32'd13; 
32'd205: dataIn1 = 32'd11; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd33; 
32'd3: dataIn2 = 32'd36; 
32'd4: dataIn2 = 32'd35; 
32'd5: dataIn2 = 32'd0; 
32'd6: dataIn2 = 32'd1; 
32'd7: dataIn2 = 32'd98; 
32'd8: dataIn2 = 32'd27; 
32'd9: dataIn2 = 32'd62; 
32'd10: dataIn2 = 32'd98; 
32'd11: dataIn2 = 32'd32; 
32'd12: dataIn2 = 32'd72; 
32'd13: dataIn2 = 32'd21; 
32'd14: dataIn2 = 32'd94; 
32'd15: dataIn2 = 32'd66; 
32'd16: dataIn2 = 32'd26; 
32'd17: dataIn2 = 32'd36; 
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
	$dumpfile("hht1_new_16_90.vcd");  
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
