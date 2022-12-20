//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 51 ; 
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
#15 Rst = 1'b1; 
cpu_addr = 32'd126;
  v_values_base = 32'd2; 
  matrix_base = 32'd90 ; 
  wdata_col_base = 32'd1410 ; 
  row_base = 32'd14610 ; 
  csize = COL_SIZE; 
// fe_init = 1'b1; 
 
// RD = 1'b0; 
// RD = 1'b1; 
 #9710; 
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
32'd14610: dataIn1 = 32'd0
; 
32'd14611: dataIn1 = 32'd4
; 
32'd14612: dataIn1 = 32'd6
; 
32'd14613: dataIn1 = 32'd7
; 
32'd14614: dataIn1 = 32'd10
; 
32'd14615: dataIn1 = 32'd13
; 
32'd14616: dataIn1 = 32'd17
; 
32'd14617: dataIn1 = 32'd23
; 
32'd14618: dataIn1 = 32'd26
; 
32'd14619: dataIn1 = 32'd27
; 
32'd14620: dataIn1 = 32'd32
; 
32'd14621: dataIn1 = 32'd37
; 
32'd14622: dataIn1 = 32'd40
; 
32'd14623: dataIn1 = 32'd45
; 
32'd14624: dataIn1 = 32'd49
; 
32'd14625: dataIn1 = 32'd50
; 
32'd14626: dataIn1 = 32'd54
; 
32'd1410: dataIn1 = 32'd0
; 
32'd1411: dataIn1 = 32'd4
; 
32'd1412: dataIn1 = 32'd6
; 
32'd1413: dataIn1 = 32'd7
; 
32'd1414: dataIn1 = 32'd10
; 
32'd1415: dataIn1 = 32'd13
; 
32'd1416: dataIn1 = 32'd17
; 
32'd1417: dataIn1 = 32'd23
; 
32'd1418: dataIn1 = 32'd26
; 
32'd1419: dataIn1 = 32'd27
; 
32'd1420: dataIn1 = 32'd32
; 
32'd1421: dataIn1 = 32'd37
; 
32'd1422: dataIn1 = 32'd40
; 
32'd1423: dataIn1 = 32'd45
; 
32'd1424: dataIn1 = 32'd49
; 
32'd1425: dataIn1 = 32'd50
; 
32'd1426: dataIn1 = 32'd54
; 
32'd1427: dataIn1 = 32'd0
; 
32'd1428: dataIn1 = 32'd8
; 
32'd1429: dataIn1 = 32'd9
; 
32'd1430: dataIn1 = 32'd14
; 
32'd1431: dataIn1 = 32'd3
; 
32'd1432: dataIn1 = 32'd14
; 
32'd1433: dataIn1 = 32'd15
; 
32'd1434: dataIn1 = 32'd2
; 
32'd1435: dataIn1 = 32'd4
; 
32'd1436: dataIn1 = 32'd9
; 
32'd1437: dataIn1 = 32'd9
; 
32'd1438: dataIn1 = 32'd13
; 
32'd1439: dataIn1 = 32'd15
; 
32'd1440: dataIn1 = 32'd2
; 
32'd1441: dataIn1 = 32'd10
; 
32'd1442: dataIn1 = 32'd11
; 
32'd1443: dataIn1 = 32'd12
; 
32'd1444: dataIn1 = 32'd0
; 
32'd1445: dataIn1 = 32'd1
; 
32'd1446: dataIn1 = 32'd5
; 
32'd1447: dataIn1 = 32'd7
; 
32'd1448: dataIn1 = 32'd13
; 
32'd1449: dataIn1 = 32'd15
; 
32'd1450: dataIn1 = 32'd0
; 
32'd1451: dataIn1 = 32'd6
; 
32'd1452: dataIn1 = 32'd15
; 
32'd1453: dataIn1 = 32'd6
; 
32'd1454: dataIn1 = 32'd4
; 
32'd1455: dataIn1 = 32'd6
; 
32'd1456: dataIn1 = 32'd8
; 
32'd1457: dataIn1 = 32'd10
; 
32'd1458: dataIn1 = 32'd13
; 
32'd1459: dataIn1 = 32'd3
; 
32'd1460: dataIn1 = 32'd5
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd6; 
32'd3: dataIn2 = 32'd0; 
32'd4: dataIn2 = 32'd95; 
32'd5: dataIn2 = 32'd73; 
32'd6: dataIn2 = 32'd22; 
32'd7: dataIn2 = 32'd69; 
32'd8: dataIn2 = 32'd81; 
32'd9: dataIn2 = 32'd54; 
32'd10: dataIn2 = 32'd96; 
32'd11: dataIn2 = 32'd71; 
32'd12: dataIn2 = 32'd71; 
32'd13: dataIn2 = 32'd45; 
32'd14: dataIn2 = 32'd1; 
32'd15: dataIn2 = 32'd90; 
32'd16: dataIn2 = 32'd62; 
32'd17: dataIn2 = 32'd18; 
32'd90: dataIn2 = 32'd30; 
32'd91: dataIn2 = 32'd25; 
32'd92: dataIn2 = 32'd89; 
32'd93: dataIn2 = 32'd98; 
32'd94: dataIn2 = 32'd51; 
32'd95: dataIn2 = 32'd57; 
32'd96: dataIn2 = 32'd26; 
32'd97: dataIn2 = 32'd9; 
32'd98: dataIn2 = 32'd99; 
32'd99: dataIn2 = 32'd33; 
32'd100: dataIn2 = 32'd3; 
32'd101: dataIn2 = 32'd49; 
32'd102: dataIn2 = 32'd59; 
32'd103: dataIn2 = 32'd16; 
32'd104: dataIn2 = 32'd13; 
32'd105: dataIn2 = 32'd89; 
32'd106: dataIn2 = 32'd72; 
32'd107: dataIn2 = 32'd55; 
32'd108: dataIn2 = 32'd45; 
32'd109: dataIn2 = 32'd43; 
32'd110: dataIn2 = 32'd26; 
32'd111: dataIn2 = 32'd87; 
32'd112: dataIn2 = 32'd37; 
32'd113: dataIn2 = 32'd14; 
32'd114: dataIn2 = 32'd91; 
32'd115: dataIn2 = 32'd38; 
32'd116: dataIn2 = 32'd0; 
32'd117: dataIn2 = 32'd76; 
32'd118: dataIn2 = 32'd82; 
32'd119: dataIn2 = 32'd68; 
32'd120: dataIn2 = 32'd51; 
32'd121: dataIn2 = 32'd71; 
32'd122: dataIn2 = 32'd55; 
32'd123: dataIn2 = 32'd32; 
32'd124: dataIn2 = 32'd84; 
32'd125: dataIn2 = 32'd37; 
32'd126: dataIn2 = 32'd43; 
32'd127: dataIn2 = 32'd18; 
32'd128: dataIn2 = 32'd92; 
32'd129: dataIn2 = 32'd75; 
32'd130: dataIn2 = 32'd7; 
32'd131: dataIn2 = 32'd66; 
32'd132: dataIn2 = 32'd55; 
32'd133: dataIn2 = 32'd76; 
32'd134: dataIn2 = 32'd21; 
32'd135: dataIn2 = 32'd32; 
32'd136: dataIn2 = 32'd31; 
32'd137: dataIn2 = 32'd18; 
32'd138: dataIn2 = 32'd40; 
32'd139: dataIn2 = 32'd82; 
32'd140: dataIn2 = 32'd57; 
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
	$dumpfile("hht2_new_16_80.vcd");  
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
