//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 102 ; 
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
  wdata_col_base = 32'd1920 ; 
  row_base = 32'd20220 ; 
  csize = COL_SIZE; 
 //fe_init = 1'b1;
// RD = 1'b0; 
// RD = 1'b1; 
 #15700; 
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
32'd20220: dataIn1 = 32'd0
; 
32'd20221: dataIn1 = 32'd7
; 
32'd20222: dataIn1 = 32'd12
; 
32'd20223: dataIn1 = 32'd16
; 
32'd20224: dataIn1 = 32'd22
; 
32'd20225: dataIn1 = 32'd28
; 
32'd20226: dataIn1 = 32'd33
; 
32'd20227: dataIn1 = 32'd38
; 
32'd20228: dataIn1 = 32'd43
; 
32'd20229: dataIn1 = 32'd51
; 
32'd20230: dataIn1 = 32'd62
; 
32'd20231: dataIn1 = 32'd69
; 
32'd20232: dataIn1 = 32'd75
; 
32'd20233: dataIn1 = 32'd80
; 
32'd20234: dataIn1 = 32'd86
; 
32'd20235: dataIn1 = 32'd94
; 
32'd20236: dataIn1 = 32'd98
; 
32'd1920: dataIn1 = 32'd0
; 
32'd1921: dataIn1 = 32'd7
; 
32'd1922: dataIn1 = 32'd12
; 
32'd1923: dataIn1 = 32'd16
; 
32'd1924: dataIn1 = 32'd22
; 
32'd1925: dataIn1 = 32'd28
; 
32'd1926: dataIn1 = 32'd33
; 
32'd1927: dataIn1 = 32'd38
; 
32'd1928: dataIn1 = 32'd43
; 
32'd1929: dataIn1 = 32'd51
; 
32'd1930: dataIn1 = 32'd62
; 
32'd1931: dataIn1 = 32'd69
; 
32'd1932: dataIn1 = 32'd75
; 
32'd1933: dataIn1 = 32'd80
; 
32'd1934: dataIn1 = 32'd86
; 
32'd1935: dataIn1 = 32'd94
; 
32'd1936: dataIn1 = 32'd98
; 
32'd1937: dataIn1 = 32'd2
; 
32'd1938: dataIn1 = 32'd7
; 
32'd1939: dataIn1 = 32'd8
; 
32'd1940: dataIn1 = 32'd9
; 
32'd1941: dataIn1 = 32'd10
; 
32'd1942: dataIn1 = 32'd12
; 
32'd1943: dataIn1 = 32'd15
; 
32'd1944: dataIn1 = 32'd0
; 
32'd1945: dataIn1 = 32'd1
; 
32'd1946: dataIn1 = 32'd6
; 
32'd1947: dataIn1 = 32'd9
; 
32'd1948: dataIn1 = 32'd11
; 
32'd1949: dataIn1 = 32'd1
; 
32'd1950: dataIn1 = 32'd5
; 
32'd1951: dataIn1 = 32'd6
; 
32'd1952: dataIn1 = 32'd13
; 
32'd1953: dataIn1 = 32'd1
; 
32'd1954: dataIn1 = 32'd4
; 
32'd1955: dataIn1 = 32'd6
; 
32'd1956: dataIn1 = 32'd7
; 
32'd1957: dataIn1 = 32'd9
; 
32'd1958: dataIn1 = 32'd10
; 
32'd1959: dataIn1 = 32'd5
; 
32'd1960: dataIn1 = 32'd8
; 
32'd1961: dataIn1 = 32'd10
; 
32'd1962: dataIn1 = 32'd12
; 
32'd1963: dataIn1 = 32'd13
; 
32'd1964: dataIn1 = 32'd15
; 
32'd1965: dataIn1 = 32'd3
; 
32'd1966: dataIn1 = 32'd6
; 
32'd1967: dataIn1 = 32'd10
; 
32'd1968: dataIn1 = 32'd13
; 
32'd1969: dataIn1 = 32'd14
; 
32'd1970: dataIn1 = 32'd4
; 
32'd1971: dataIn1 = 32'd7
; 
32'd1972: dataIn1 = 32'd9
; 
32'd1973: dataIn1 = 32'd10
; 
32'd1974: dataIn1 = 32'd14
; 
32'd1975: dataIn1 = 32'd0
; 
32'd1976: dataIn1 = 32'd2
; 
32'd1977: dataIn1 = 32'd3
; 
32'd1978: dataIn1 = 32'd9
; 
32'd1979: dataIn1 = 32'd12
; 
32'd1980: dataIn1 = 32'd1
; 
32'd1981: dataIn1 = 32'd3
; 
32'd1982: dataIn1 = 32'd4
; 
32'd1983: dataIn1 = 32'd7
; 
32'd1984: dataIn1 = 32'd8
; 
32'd1985: dataIn1 = 32'd11
; 
32'd1986: dataIn1 = 32'd13
; 
32'd1987: dataIn1 = 32'd15
; 
32'd1988: dataIn1 = 32'd0
; 
32'd1989: dataIn1 = 32'd1
; 
32'd1990: dataIn1 = 32'd2
; 
32'd1991: dataIn1 = 32'd3
; 
32'd1992: dataIn1 = 32'd4
; 
32'd1993: dataIn1 = 32'd6
; 
32'd1994: dataIn1 = 32'd7
; 
32'd1995: dataIn1 = 32'd10
; 
32'd1996: dataIn1 = 32'd11
; 
32'd1997: dataIn1 = 32'd12
; 
32'd1998: dataIn1 = 32'd15
; 
32'd1999: dataIn1 = 32'd2
; 
32'd2000: dataIn1 = 32'd3
; 
32'd2001: dataIn1 = 32'd7
; 
32'd2002: dataIn1 = 32'd10
; 
32'd2003: dataIn1 = 32'd11
; 
32'd2004: dataIn1 = 32'd13
; 
32'd2005: dataIn1 = 32'd15
; 
32'd2006: dataIn1 = 32'd1
; 
32'd2007: dataIn1 = 32'd2
; 
32'd2008: dataIn1 = 32'd5
; 
32'd2009: dataIn1 = 32'd7
; 
32'd2010: dataIn1 = 32'd8
; 
32'd2011: dataIn1 = 32'd14
; 
32'd2012: dataIn1 = 32'd1
; 
32'd2013: dataIn1 = 32'd5
; 
32'd2014: dataIn1 = 32'd6
; 
32'd2015: dataIn1 = 32'd7
; 
32'd2016: dataIn1 = 32'd12
; 
32'd2017: dataIn1 = 32'd0
; 
32'd2018: dataIn1 = 32'd2
; 
32'd2019: dataIn1 = 32'd3
; 
32'd2020: dataIn1 = 32'd7
; 
32'd2021: dataIn1 = 32'd10
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd36; 
32'd3: dataIn2 = 32'd26; 
32'd4: dataIn2 = 32'd96; 
32'd5: dataIn2 = 32'd100; 
32'd6: dataIn2 = 32'd57; 
32'd7: dataIn2 = 32'd76; 
32'd8: dataIn2 = 32'd0; 
32'd9: dataIn2 = 32'd13; 
32'd10: dataIn2 = 32'd90; 
32'd11: dataIn2 = 32'd84; 
32'd12: dataIn2 = 32'd88; 
32'd13: dataIn2 = 32'd64; 
32'd14: dataIn2 = 32'd10; 
32'd15: dataIn2 = 32'd54; 
32'd16: dataIn2 = 32'd24; 
32'd17: dataIn2 = 32'd69; 
32'd90: dataIn2 = 32'd66; 
32'd91: dataIn2 = 32'd55; 
32'd92: dataIn2 = 32'd22; 
32'd93: dataIn2 = 32'd14; 
32'd94: dataIn2 = 32'd88; 
32'd95: dataIn2 = 32'd30; 
32'd96: dataIn2 = 32'd79; 
32'd97: dataIn2 = 32'd81; 
32'd98: dataIn2 = 32'd15; 
32'd99: dataIn2 = 32'd100; 
32'd100: dataIn2 = 32'd0; 
32'd101: dataIn2 = 32'd2; 
32'd102: dataIn2 = 32'd60; 
32'd103: dataIn2 = 32'd52; 
32'd104: dataIn2 = 32'd98; 
32'd105: dataIn2 = 32'd20; 
32'd106: dataIn2 = 32'd63; 
32'd107: dataIn2 = 32'd18; 
32'd108: dataIn2 = 32'd0; 
32'd109: dataIn2 = 32'd23; 
32'd110: dataIn2 = 32'd44; 
32'd111: dataIn2 = 32'd35; 
32'd112: dataIn2 = 32'd83; 
32'd113: dataIn2 = 32'd62; 
32'd114: dataIn2 = 32'd51; 
32'd115: dataIn2 = 32'd88; 
32'd116: dataIn2 = 32'd97; 
32'd117: dataIn2 = 32'd66; 
32'd118: dataIn2 = 32'd93; 
32'd119: dataIn2 = 32'd22; 
32'd120: dataIn2 = 32'd8; 
32'd121: dataIn2 = 32'd98; 
32'd122: dataIn2 = 32'd57; 
32'd123: dataIn2 = 32'd5; 
32'd124: dataIn2 = 32'd75; 
32'd125: dataIn2 = 32'd100; 
32'd126: dataIn2 = 32'd94; 
32'd127: dataIn2 = 32'd9; 
32'd128: dataIn2 = 32'd78; 
32'd129: dataIn2 = 32'd58; 
32'd130: dataIn2 = 32'd92; 
32'd131: dataIn2 = 32'd56; 
32'd132: dataIn2 = 32'd96; 
32'd133: dataIn2 = 32'd18; 
32'd134: dataIn2 = 32'd36; 
32'd135: dataIn2 = 32'd85; 
32'd136: dataIn2 = 32'd58; 
32'd137: dataIn2 = 32'd19; 
32'd138: dataIn2 = 32'd8; 
32'd139: dataIn2 = 32'd12; 
32'd140: dataIn2 = 32'd1; 
32'd141: dataIn2 = 32'd71; 
32'd142: dataIn2 = 32'd55; 
32'd143: dataIn2 = 32'd38; 
32'd144: dataIn2 = 32'd47; 
32'd145: dataIn2 = 32'd71; 
32'd146: dataIn2 = 32'd58; 
32'd147: dataIn2 = 32'd0; 
32'd148: dataIn2 = 32'd54; 
32'd149: dataIn2 = 32'd22; 
32'd150: dataIn2 = 32'd59; 
32'd151: dataIn2 = 32'd98; 
32'd152: dataIn2 = 32'd22; 
32'd153: dataIn2 = 32'd81; 
32'd154: dataIn2 = 32'd49; 
32'd155: dataIn2 = 32'd49; 
32'd156: dataIn2 = 32'd99; 
32'd157: dataIn2 = 32'd13; 
32'd158: dataIn2 = 32'd37; 
32'd159: dataIn2 = 32'd15; 
32'd160: dataIn2 = 32'd99; 
32'd161: dataIn2 = 32'd90; 
32'd162: dataIn2 = 32'd40; 
32'd163: dataIn2 = 32'd32; 
32'd164: dataIn2 = 32'd42; 
32'd165: dataIn2 = 32'd48; 
32'd166: dataIn2 = 32'd73; 
32'd167: dataIn2 = 32'd54; 
32'd168: dataIn2 = 32'd18; 
32'd169: dataIn2 = 32'd54; 
32'd170: dataIn2 = 32'd24; 
32'd171: dataIn2 = 32'd95; 
32'd172: dataIn2 = 32'd39; 
32'd173: dataIn2 = 32'd16; 
32'd174: dataIn2 = 32'd66; 
32'd175: dataIn2 = 32'd65; 
32'd176: dataIn2 = 32'd90; 
32'd177: dataIn2 = 32'd39; 
32'd178: dataIn2 = 32'd67; 
32'd179: dataIn2 = 32'd11; 
32'd180: dataIn2 = 32'd39; 
32'd181: dataIn2 = 32'd43; 
32'd182: dataIn2 = 32'd6; 
32'd183: dataIn2 = 32'd97; 
32'd184: dataIn2 = 32'd73; 
32'd185: dataIn2 = 32'd95; 
32'd186: dataIn2 = 32'd12; 
32'd187: dataIn2 = 32'd82; 
32'd188: dataIn2 = 32'd78; 
32'd189: dataIn2 = 32'd59; 
32'd190: dataIn2 = 32'd70; 
32'd191: dataIn2 = 32'd56; 
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
	$dumpfile("hht2_new_16_60.vcd");  
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
