//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 77 ; 
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
  wdata_col_base = 32'd1670 ; 
  row_base = 32'd17470 ; 
  csize = COL_SIZE; 
 fe_init = 1'b1; 
  RD = 1'b1; 
 #15; 
Rst = 1'b0; 
#15 Rst = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #1720; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd17470: dataIn1 = 32'd0
; 
32'd17471: dataIn1 = 32'd7
; 
32'd17472: dataIn1 = 32'd12
; 
32'd17473: dataIn1 = 32'd18
; 
32'd17474: dataIn1 = 32'd19
; 
32'd17475: dataIn1 = 32'd27
; 
32'd17476: dataIn1 = 32'd32
; 
32'd17477: dataIn1 = 32'd36
; 
32'd17478: dataIn1 = 32'd41
; 
32'd17479: dataIn1 = 32'd48
; 
32'd17480: dataIn1 = 32'd52
; 
32'd17481: dataIn1 = 32'd55
; 
32'd17482: dataIn1 = 32'd59
; 
32'd17483: dataIn1 = 32'd64
; 
32'd17484: dataIn1 = 32'd69
; 
32'd17485: dataIn1 = 32'd73
; 
32'd17486: dataIn1 = 32'd78
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
32'd1670: dataIn1 = 32'd0
; 
32'd1671: dataIn1 = 32'd7
; 
32'd1672: dataIn1 = 32'd12
; 
32'd1673: dataIn1 = 32'd18
; 
32'd1674: dataIn1 = 32'd19
; 
32'd1675: dataIn1 = 32'd27
; 
32'd1676: dataIn1 = 32'd32
; 
32'd1677: dataIn1 = 32'd36
; 
32'd1678: dataIn1 = 32'd41
; 
32'd1679: dataIn1 = 32'd48
; 
32'd1680: dataIn1 = 32'd52
; 
32'd1681: dataIn1 = 32'd55
; 
32'd1682: dataIn1 = 32'd59
; 
32'd1683: dataIn1 = 32'd64
; 
32'd1684: dataIn1 = 32'd69
; 
32'd1685: dataIn1 = 32'd73
; 
32'd1686: dataIn1 = 32'd78
; 
32'd1687: dataIn1 = 32'd0
; 
32'd1688: dataIn1 = 32'd1
; 
32'd1689: dataIn1 = 32'd3
; 
32'd1690: dataIn1 = 32'd5
; 
32'd1691: dataIn1 = 32'd8
; 
32'd1692: dataIn1 = 32'd11
; 
32'd1693: dataIn1 = 32'd12
; 
32'd1694: dataIn1 = 32'd5
; 
32'd1695: dataIn1 = 32'd7
; 
32'd1696: dataIn1 = 32'd12
; 
32'd1697: dataIn1 = 32'd13
; 
32'd1698: dataIn1 = 32'd15
; 
32'd1699: dataIn1 = 32'd1
; 
32'd1700: dataIn1 = 32'd2
; 
32'd1701: dataIn1 = 32'd3
; 
32'd1702: dataIn1 = 32'd5
; 
32'd1703: dataIn1 = 32'd7
; 
32'd1704: dataIn1 = 32'd12
; 
32'd1705: dataIn1 = 32'd10
; 
32'd1706: dataIn1 = 32'd0
; 
32'd1707: dataIn1 = 32'd2
; 
32'd1708: dataIn1 = 32'd3
; 
32'd1709: dataIn1 = 32'd5
; 
32'd1710: dataIn1 = 32'd6
; 
32'd1711: dataIn1 = 32'd8
; 
32'd1712: dataIn1 = 32'd9
; 
32'd1713: dataIn1 = 32'd15
; 
32'd1714: dataIn1 = 32'd6
; 
32'd1715: dataIn1 = 32'd7
; 
32'd1716: dataIn1 = 32'd9
; 
32'd1717: dataIn1 = 32'd12
; 
32'd1718: dataIn1 = 32'd15
; 
32'd1719: dataIn1 = 32'd2
; 
32'd1720: dataIn1 = 32'd4
; 
32'd1721: dataIn1 = 32'd9
; 
32'd1722: dataIn1 = 32'd12
; 
32'd1723: dataIn1 = 32'd1
; 
32'd1724: dataIn1 = 32'd3
; 
32'd1725: dataIn1 = 32'd9
; 
32'd1726: dataIn1 = 32'd10
; 
32'd1727: dataIn1 = 32'd15
; 
32'd1728: dataIn1 = 32'd2
; 
32'd1729: dataIn1 = 32'd4
; 
32'd1730: dataIn1 = 32'd5
; 
32'd1731: dataIn1 = 32'd10
; 
32'd1732: dataIn1 = 32'd11
; 
32'd1733: dataIn1 = 32'd14
; 
32'd1734: dataIn1 = 32'd15
; 
32'd1735: dataIn1 = 32'd0
; 
32'd1736: dataIn1 = 32'd8
; 
32'd1737: dataIn1 = 32'd9
; 
32'd1738: dataIn1 = 32'd15
; 
32'd1739: dataIn1 = 32'd4
; 
32'd1740: dataIn1 = 32'd11
; 
32'd1741: dataIn1 = 32'd12
; 
32'd1742: dataIn1 = 32'd0
; 
32'd1743: dataIn1 = 32'd3
; 
32'd1744: dataIn1 = 32'd11
; 
32'd1745: dataIn1 = 32'd14
; 
32'd1746: dataIn1 = 32'd1
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd26; 
32'd3: dataIn2 = 32'd67; 
32'd4: dataIn2 = 32'd31; 
32'd5: dataIn2 = 32'd89; 
32'd6: dataIn2 = 32'd16; 
32'd7: dataIn2 = 32'd22; 
32'd8: dataIn2 = 32'd20; 
32'd9: dataIn2 = 32'd68; 
32'd10: dataIn2 = 32'd23; 
32'd11: dataIn2 = 32'd53; 
32'd12: dataIn2 = 32'd10; 
32'd13: dataIn2 = 32'd88; 
32'd14: dataIn2 = 32'd40; 
32'd15: dataIn2 = 32'd90; 
32'd16: dataIn2 = 32'd6; 
32'd17: dataIn2 = 32'd50; 
default: 
	dataIn2 = 32'd99999; 
endcase 
32'd90: dataIn2 = 32'd19; 
32'd91: dataIn2 = 32'd32; 
32'd92: dataIn2 = 32'd91; 
32'd93: dataIn2 = 32'd24; 
32'd94: dataIn2 = 32'd100; 
32'd95: dataIn2 = 32'd88; 
32'd96: dataIn2 = 32'd12; 
32'd97: dataIn2 = 32'd74; 
32'd98: dataIn2 = 32'd33; 
32'd99: dataIn2 = 32'd78; 
32'd100: dataIn2 = 32'd5; 
32'd101: dataIn2 = 32'd74; 
32'd102: dataIn2 = 32'd68; 
32'd103: dataIn2 = 32'd81; 
32'd104: dataIn2 = 32'd51; 
32'd105: dataIn2 = 32'd84; 
32'd106: dataIn2 = 32'd46; 
32'd107: dataIn2 = 32'd66; 
32'd108: dataIn2 = 32'd80; 
32'd109: dataIn2 = 32'd30; 
32'd110: dataIn2 = 32'd8; 
32'd111: dataIn2 = 32'd73; 
32'd112: dataIn2 = 32'd68; 
32'd113: dataIn2 = 32'd14; 
32'd114: dataIn2 = 32'd69; 
32'd115: dataIn2 = 32'd86; 
32'd116: dataIn2 = 32'd59; 
32'd117: dataIn2 = 32'd48; 
32'd118: dataIn2 = 32'd15; 
32'd119: dataIn2 = 32'd85; 
32'd120: dataIn2 = 32'd16; 
32'd121: dataIn2 = 32'd37; 
32'd122: dataIn2 = 32'd66; 
32'd123: dataIn2 = 32'd11; 
32'd124: dataIn2 = 32'd48; 
32'd125: dataIn2 = 32'd86; 
32'd126: dataIn2 = 32'd69; 
32'd127: dataIn2 = 32'd72; 
32'd128: dataIn2 = 32'd66; 
32'd129: dataIn2 = 32'd53; 
32'd130: dataIn2 = 32'd47; 
32'd131: dataIn2 = 32'd75; 
32'd132: dataIn2 = 32'd59; 
32'd133: dataIn2 = 32'd42; 
32'd134: dataIn2 = 32'd79; 
32'd135: dataIn2 = 32'd65; 
32'd136: dataIn2 = 32'd72; 
32'd137: dataIn2 = 32'd90; 
32'd138: dataIn2 = 32'd26; 
32'd139: dataIn2 = 32'd88; 
32'd140: dataIn2 = 32'd58; 
32'd141: dataIn2 = 32'd49; 
32'd142: dataIn2 = 32'd38; 
32'd143: dataIn2 = 32'd62; 
32'd144: dataIn2 = 32'd58; 
32'd145: dataIn2 = 32'd23; 
32'd146: dataIn2 = 32'd97; 
32'd147: dataIn2 = 32'd79; 
32'd148: dataIn2 = 32'd82; 
32'd149: dataIn2 = 32'd25; 
32'd150: dataIn2 = 32'd6; 
32'd151: dataIn2 = 32'd73; 
32'd152: dataIn2 = 32'd53; 
32'd153: dataIn2 = 32'd60; 
32'd154: dataIn2 = 32'd46; 
32'd155: dataIn2 = 32'd100; 
32'd156: dataIn2 = 32'd67; 
32'd157: dataIn2 = 32'd40; 
32'd158: dataIn2 = 32'd10; 
32'd159: dataIn2 = 32'd76; 
32'd160: dataIn2 = 32'd24; 
32'd161: dataIn2 = 32'd95; 
32'd162: dataIn2 = 32'd76; 
32'd163: dataIn2 = 32'd78; 
32'd164: dataIn2 = 32'd50; 
32'd165: dataIn2 = 32'd4; 
32'd166: dataIn2 = 32'd32; 
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
	$dumpfile("hht2_16_70.vcd");  
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
