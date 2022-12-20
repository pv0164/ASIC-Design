//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 128 ; 
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
  wdata_col_base = 32'd2180 ; 
  row_base = 32'd23080 ; 
  csize = COL_SIZE; 
 //fe_init = 1'b1;
// RD = 1'b0; 
// RD = 1'b1; 
 #18900; 
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
32'd23080: dataIn1 = 32'd0
; 
32'd23081: dataIn1 = 32'd5
; 
32'd23082: dataIn1 = 32'd11
; 
32'd23083: dataIn1 = 32'd16
; 
32'd23084: dataIn1 = 32'd23
; 
32'd23085: dataIn1 = 32'd27
; 
32'd23086: dataIn1 = 32'd31
; 
32'd23087: dataIn1 = 32'd38
; 
32'd23088: dataIn1 = 32'd44
; 
32'd23089: dataIn1 = 32'd51
; 
32'd23090: dataIn1 = 32'd63
; 
32'd23091: dataIn1 = 32'd69
; 
32'd23092: dataIn1 = 32'd77
; 
32'd23093: dataIn1 = 32'd81
; 
32'd23094: dataIn1 = 32'd87
; 
32'd23095: dataIn1 = 32'd94
; 
32'd23096: dataIn1 = 32'd100
; 
32'd2180: dataIn1 = 32'd0
; 
32'd2181: dataIn1 = 32'd5
; 
32'd2182: dataIn1 = 32'd11
; 
32'd2183: dataIn1 = 32'd16
; 
32'd2184: dataIn1 = 32'd23
; 
32'd2185: dataIn1 = 32'd27
; 
32'd2186: dataIn1 = 32'd31
; 
32'd2187: dataIn1 = 32'd38
; 
32'd2188: dataIn1 = 32'd44
; 
32'd2189: dataIn1 = 32'd51
; 
32'd2190: dataIn1 = 32'd63
; 
32'd2191: dataIn1 = 32'd69
; 
32'd2192: dataIn1 = 32'd77
; 
32'd2193: dataIn1 = 32'd81
; 
32'd2194: dataIn1 = 32'd87
; 
32'd2195: dataIn1 = 32'd94
; 
32'd2196: dataIn1 = 32'd100
; 
32'd2197: dataIn1 = 32'd3
; 
32'd2198: dataIn1 = 32'd4
; 
32'd2199: dataIn1 = 32'd6
; 
32'd2200: dataIn1 = 32'd8
; 
32'd2201: dataIn1 = 32'd9
; 
32'd2202: dataIn1 = 32'd1
; 
32'd2203: dataIn1 = 32'd3
; 
32'd2204: dataIn1 = 32'd9
; 
32'd2205: dataIn1 = 32'd10
; 
32'd2206: dataIn1 = 32'd12
; 
32'd2207: dataIn1 = 32'd13
; 
32'd2208: dataIn1 = 32'd0
; 
32'd2209: dataIn1 = 32'd2
; 
32'd2210: dataIn1 = 32'd8
; 
32'd2211: dataIn1 = 32'd9
; 
32'd2212: dataIn1 = 32'd11
; 
32'd2213: dataIn1 = 32'd1
; 
32'd2214: dataIn1 = 32'd6
; 
32'd2215: dataIn1 = 32'd8
; 
32'd2216: dataIn1 = 32'd9
; 
32'd2217: dataIn1 = 32'd10
; 
32'd2218: dataIn1 = 32'd13
; 
32'd2219: dataIn1 = 32'd15
; 
32'd2220: dataIn1 = 32'd0
; 
32'd2221: dataIn1 = 32'd6
; 
32'd2222: dataIn1 = 32'd12
; 
32'd2223: dataIn1 = 32'd13
; 
32'd2224: dataIn1 = 32'd0
; 
32'd2225: dataIn1 = 32'd11
; 
32'd2226: dataIn1 = 32'd12
; 
32'd2227: dataIn1 = 32'd13
; 
32'd2228: dataIn1 = 32'd2
; 
32'd2229: dataIn1 = 32'd5
; 
32'd2230: dataIn1 = 32'd7
; 
32'd2231: dataIn1 = 32'd12
; 
32'd2232: dataIn1 = 32'd13
; 
32'd2233: dataIn1 = 32'd14
; 
32'd2234: dataIn1 = 32'd15
; 
32'd2235: dataIn1 = 32'd6
; 
32'd2236: dataIn1 = 32'd7
; 
32'd2237: dataIn1 = 32'd11
; 
32'd2238: dataIn1 = 32'd13
; 
32'd2239: dataIn1 = 32'd14
; 
32'd2240: dataIn1 = 32'd15
; 
32'd2241: dataIn1 = 32'd0
; 
32'd2242: dataIn1 = 32'd2
; 
32'd2243: dataIn1 = 32'd6
; 
32'd2244: dataIn1 = 32'd9
; 
32'd2245: dataIn1 = 32'd10
; 
32'd2246: dataIn1 = 32'd12
; 
32'd2247: dataIn1 = 32'd13
; 
32'd2248: dataIn1 = 32'd0
; 
32'd2249: dataIn1 = 32'd2
; 
32'd2250: dataIn1 = 32'd4
; 
32'd2251: dataIn1 = 32'd5
; 
32'd2252: dataIn1 = 32'd6
; 
32'd2253: dataIn1 = 32'd8
; 
32'd2254: dataIn1 = 32'd9
; 
32'd2255: dataIn1 = 32'd10
; 
32'd2256: dataIn1 = 32'd11
; 
32'd2257: dataIn1 = 32'd12
; 
32'd2258: dataIn1 = 32'd14
; 
32'd2259: dataIn1 = 32'd15
; 
32'd2260: dataIn1 = 32'd1
; 
32'd2261: dataIn1 = 32'd3
; 
32'd2262: dataIn1 = 32'd4
; 
32'd2263: dataIn1 = 32'd9
; 
32'd2264: dataIn1 = 32'd13
; 
32'd2265: dataIn1 = 32'd15
; 
32'd2266: dataIn1 = 32'd0
; 
32'd2267: dataIn1 = 32'd1
; 
32'd2268: dataIn1 = 32'd2
; 
32'd2269: dataIn1 = 32'd3
; 
32'd2270: dataIn1 = 32'd4
; 
32'd2271: dataIn1 = 32'd8
; 
32'd2272: dataIn1 = 32'd10
; 
32'd2273: dataIn1 = 32'd11
; 
32'd2274: dataIn1 = 32'd5
; 
32'd2275: dataIn1 = 32'd6
; 
32'd2276: dataIn1 = 32'd9
; 
32'd2277: dataIn1 = 32'd14
; 
32'd2278: dataIn1 = 32'd2
; 
32'd2279: dataIn1 = 32'd4
; 
32'd2280: dataIn1 = 32'd9
; 
32'd2281: dataIn1 = 32'd10
; 
32'd2282: dataIn1 = 32'd12
; 
32'd2283: dataIn1 = 32'd14
; 
32'd2284: dataIn1 = 32'd1
; 
32'd2285: dataIn1 = 32'd2
; 
32'd2286: dataIn1 = 32'd4
; 
32'd2287: dataIn1 = 32'd6
; 
32'd2288: dataIn1 = 32'd8
; 
32'd2289: dataIn1 = 32'd10
; 
32'd2290: dataIn1 = 32'd14
; 
32'd2291: dataIn1 = 32'd0
; 
32'd2292: dataIn1 = 32'd2
; 
32'd2293: dataIn1 = 32'd3
; 
32'd2294: dataIn1 = 32'd8
; 
32'd2295: dataIn1 = 32'd10
; 
32'd2296: dataIn1 = 32'd14
; 
32'd2297: dataIn1 = 32'd0; 
32'd2298: dataIn1 = 32'd1; 
32'd2299: dataIn1 = 32'd2; 
32'd2300: dataIn1 = 32'd3; 
32'd2301: dataIn1 = 32'd4; 
32'd2302: dataIn1 = 32'd5; 
32'd2303: dataIn1 = 32'd6; 
32'd2304: dataIn1 = 32'd7; 
32'd2305: dataIn1 = 32'd8; 
32'd2306: dataIn1 = 32'd9; 
32'd2307: dataIn1 = 32'd10; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd27; 
32'd3: dataIn2 = 32'd60; 
32'd4: dataIn2 = 32'd77; 
32'd5: dataIn2 = 32'd36; 
32'd6: dataIn2 = 32'd96; 
32'd7: dataIn2 = 32'd43; 
32'd8: dataIn2 = 32'd15; 
32'd9: dataIn2 = 32'd32; 
32'd10: dataIn2 = 32'd64; 
32'd11: dataIn2 = 32'd43; 
32'd12: dataIn2 = 32'd26; 
32'd13: dataIn2 = 32'd77; 
32'd14: dataIn2 = 32'd15; 
32'd15: dataIn2 = 32'd65; 
32'd16: dataIn2 = 32'd36; 
32'd17: dataIn2 = 32'd8; 
32'd90: dataIn2 = 32'd82; 
32'd91: dataIn2 = 32'd9; 
32'd92: dataIn2 = 32'd27; 
32'd93: dataIn2 = 32'd28; 
32'd94: dataIn2 = 32'd97; 
32'd95: dataIn2 = 32'd74; 
32'd96: dataIn2 = 32'd80; 
32'd97: dataIn2 = 32'd94; 
32'd98: dataIn2 = 32'd43; 
32'd99: dataIn2 = 32'd55; 
32'd100: dataIn2 = 32'd14; 
32'd101: dataIn2 = 32'd62; 
32'd102: dataIn2 = 32'd49; 
32'd103: dataIn2 = 32'd1; 
32'd104: dataIn2 = 32'd9; 
32'd105: dataIn2 = 32'd43; 
32'd106: dataIn2 = 32'd11; 
32'd107: dataIn2 = 32'd2; 
32'd108: dataIn2 = 32'd54; 
32'd109: dataIn2 = 32'd27; 
32'd110: dataIn2 = 32'd63; 
32'd111: dataIn2 = 32'd31; 
32'd112: dataIn2 = 32'd57; 
32'd113: dataIn2 = 32'd12; 
32'd114: dataIn2 = 32'd74; 
32'd115: dataIn2 = 32'd18; 
32'd116: dataIn2 = 32'd24; 
32'd117: dataIn2 = 32'd18; 
32'd118: dataIn2 = 32'd8; 
32'd119: dataIn2 = 32'd83; 
32'd120: dataIn2 = 32'd49; 
32'd121: dataIn2 = 32'd43; 
32'd122: dataIn2 = 32'd48; 
32'd123: dataIn2 = 32'd2; 
32'd124: dataIn2 = 32'd30; 
32'd125: dataIn2 = 32'd65; 
32'd126: dataIn2 = 32'd4; 
32'd127: dataIn2 = 32'd48; 
32'd128: dataIn2 = 32'd10; 
32'd129: dataIn2 = 32'd86; 
32'd130: dataIn2 = 32'd33; 
32'd131: dataIn2 = 32'd90; 
32'd132: dataIn2 = 32'd90; 
32'd133: dataIn2 = 32'd46; 
32'd134: dataIn2 = 32'd57; 
32'd135: dataIn2 = 32'd88; 
32'd136: dataIn2 = 32'd30; 
32'd137: dataIn2 = 32'd56; 
32'd138: dataIn2 = 32'd89; 
32'd139: dataIn2 = 32'd26; 
32'd140: dataIn2 = 32'd76; 
32'd141: dataIn2 = 32'd11; 
32'd142: dataIn2 = 32'd9; 
32'd143: dataIn2 = 32'd45; 
32'd144: dataIn2 = 32'd3; 
32'd145: dataIn2 = 32'd88; 
32'd146: dataIn2 = 32'd80; 
32'd147: dataIn2 = 32'd10; 
32'd148: dataIn2 = 32'd80; 
32'd149: dataIn2 = 32'd83; 
32'd150: dataIn2 = 32'd38; 
32'd151: dataIn2 = 32'd82; 
32'd152: dataIn2 = 32'd28; 
32'd153: dataIn2 = 32'd77; 
32'd154: dataIn2 = 32'd14; 
32'd155: dataIn2 = 32'd42; 
32'd156: dataIn2 = 32'd66; 
32'd157: dataIn2 = 32'd79; 
32'd158: dataIn2 = 32'd73; 
32'd159: dataIn2 = 32'd51; 
32'd160: dataIn2 = 32'd58; 
32'd161: dataIn2 = 32'd85; 
32'd162: dataIn2 = 32'd54; 
32'd163: dataIn2 = 32'd95; 
32'd164: dataIn2 = 32'd65; 
32'd165: dataIn2 = 32'd67; 
32'd166: dataIn2 = 32'd84; 
32'd167: dataIn2 = 32'd49; 
32'd168: dataIn2 = 32'd93; 
32'd169: dataIn2 = 32'd77; 
32'd170: dataIn2 = 32'd2; 
32'd171: dataIn2 = 32'd57; 
32'd172: dataIn2 = 32'd45; 
32'd173: dataIn2 = 32'd40; 
32'd174: dataIn2 = 32'd2; 
32'd175: dataIn2 = 32'd45; 
32'd176: dataIn2 = 32'd80; 
32'd177: dataIn2 = 32'd40; 
32'd178: dataIn2 = 32'd58; 
32'd179: dataIn2 = 32'd30; 
32'd180: dataIn2 = 32'd93; 
32'd181: dataIn2 = 32'd14; 
32'd182: dataIn2 = 32'd14; 
32'd183: dataIn2 = 32'd24; 
32'd184: dataIn2 = 32'd52; 
32'd185: dataIn2 = 32'd70; 
32'd186: dataIn2 = 32'd88; 
32'd187: dataIn2 = 32'd37; 
32'd188: dataIn2 = 32'd95; 
32'd189: dataIn2 = 32'd55; 
32'd190: dataIn2 = 32'd11; 
32'd191: dataIn2 = 32'd61; 
32'd192: dataIn2 = 32'd1; 
32'd193: dataIn2 = 32'd59; 
32'd194: dataIn2 = 32'd90; 
32'd195: dataIn2 = 32'd91; 
32'd196: dataIn2 = 32'd72; 
32'd197: dataIn2 = 32'd8; 
32'd198: dataIn2 = 32'd94; 
32'd199: dataIn2 = 32'd74; 
32'd200: dataIn2 = 32'd96; 
32'd201: dataIn2 = 32'd51; 
32'd202: dataIn2 = 32'd85; 
32'd203: dataIn2 = 32'd39; 
32'd204: dataIn2 = 32'd12; 
32'd205: dataIn2 = 32'd9; 
32'd206: dataIn2 = 32'd41; 
32'd207: dataIn2 = 32'd26; 
32'd208: dataIn2 = 32'd96; 
32'd209: dataIn2 = 32'd87; 
32'd210: dataIn2 = 32'd91; 
32'd211: dataIn2 = 32'd54; 
32'd212: dataIn2 = 32'd83; 
32'd213: dataIn2 = 32'd13; 
32'd214: dataIn2 = 32'd24; 
32'd215: dataIn2 = 32'd46; 
32'd216: dataIn2 = 32'd58; 
32'd217: dataIn2 = 32'd66; 
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
	$dumpfile("hht2_new_16_50.vcd");  
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
