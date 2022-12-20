//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 154 ; 
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
  wdata_col_base = 32'd2440 ; 
  row_base = 32'd25940 ; 
  csize = COL_SIZE; 
// fe_init = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #22000; 
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
32'd25940: dataIn1 = 32'd0
; 
32'd25941: dataIn1 = 32'd12
; 
32'd25942: dataIn1 = 32'd24
; 
32'd25943: dataIn1 = 32'd34
; 
32'd25944: dataIn1 = 32'd42
; 
32'd25945: dataIn1 = 32'd50
; 
32'd25946: dataIn1 = 32'd60
; 
32'd25947: dataIn1 = 32'd68
; 
32'd25948: dataIn1 = 32'd77
; 
32'd25949: dataIn1 = 32'd87
; 
32'd25950: dataIn1 = 32'd95
; 
32'd25951: dataIn1 = 32'd102
; 
32'd25952: dataIn1 = 32'd109
; 
32'd25953: dataIn1 = 32'd119
; 
32'd25954: dataIn1 = 32'd126
; 
32'd25955: dataIn1 = 32'd140
; 
32'd25956: dataIn1 = 32'd150
; 
32'd2440: dataIn1 = 32'd0
; 
32'd2441: dataIn1 = 32'd12
; 
32'd2442: dataIn1 = 32'd24
; 
32'd2443: dataIn1 = 32'd34
; 
32'd2444: dataIn1 = 32'd42
; 
32'd2445: dataIn1 = 32'd50
; 
32'd2446: dataIn1 = 32'd60
; 
32'd2447: dataIn1 = 32'd68
; 
32'd2448: dataIn1 = 32'd77
; 
32'd2449: dataIn1 = 32'd87
; 
32'd2450: dataIn1 = 32'd95
; 
32'd2451: dataIn1 = 32'd102
; 
32'd2452: dataIn1 = 32'd109
; 
32'd2453: dataIn1 = 32'd119
; 
32'd2454: dataIn1 = 32'd126
; 
32'd2455: dataIn1 = 32'd140
; 
32'd2456: dataIn1 = 32'd150
; 
32'd2457: dataIn1 = 32'd0
; 
32'd2458: dataIn1 = 32'd1
; 
32'd2459: dataIn1 = 32'd2
; 
32'd2460: dataIn1 = 32'd3
; 
32'd2461: dataIn1 = 32'd4
; 
32'd2462: dataIn1 = 32'd6
; 
32'd2463: dataIn1 = 32'd7
; 
32'd2464: dataIn1 = 32'd8
; 
32'd2465: dataIn1 = 32'd10
; 
32'd2466: dataIn1 = 32'd11
; 
32'd2467: dataIn1 = 32'd13
; 
32'd2468: dataIn1 = 32'd15
; 
32'd2469: dataIn1 = 32'd0
; 
32'd2470: dataIn1 = 32'd2
; 
32'd2471: dataIn1 = 32'd3
; 
32'd2472: dataIn1 = 32'd4
; 
32'd2473: dataIn1 = 32'd5
; 
32'd2474: dataIn1 = 32'd7
; 
32'd2475: dataIn1 = 32'd9
; 
32'd2476: dataIn1 = 32'd10
; 
32'd2477: dataIn1 = 32'd11
; 
32'd2478: dataIn1 = 32'd12
; 
32'd2479: dataIn1 = 32'd14
; 
32'd2480: dataIn1 = 32'd15
; 
32'd2481: dataIn1 = 32'd2
; 
32'd2482: dataIn1 = 32'd3
; 
32'd2483: dataIn1 = 32'd4
; 
32'd2484: dataIn1 = 32'd6
; 
32'd2485: dataIn1 = 32'd7
; 
32'd2486: dataIn1 = 32'd9
; 
32'd2487: dataIn1 = 32'd11
; 
32'd2488: dataIn1 = 32'd13
; 
32'd2489: dataIn1 = 32'd14
; 
32'd2490: dataIn1 = 32'd15
; 
32'd2491: dataIn1 = 32'd3
; 
32'd2492: dataIn1 = 32'd5
; 
32'd2493: dataIn1 = 32'd6
; 
32'd2494: dataIn1 = 32'd7
; 
32'd2495: dataIn1 = 32'd9
; 
32'd2496: dataIn1 = 32'd11
; 
32'd2497: dataIn1 = 32'd12
; 
32'd2498: dataIn1 = 32'd13
; 
32'd2499: dataIn1 = 32'd2
; 
32'd2500: dataIn1 = 32'd4
; 
32'd2501: dataIn1 = 32'd6
; 
32'd2502: dataIn1 = 32'd7
; 
32'd2503: dataIn1 = 32'd8
; 
32'd2504: dataIn1 = 32'd11
; 
32'd2505: dataIn1 = 32'd13
; 
32'd2506: dataIn1 = 32'd15
; 
32'd2507: dataIn1 = 32'd0
; 
32'd2508: dataIn1 = 32'd3
; 
32'd2509: dataIn1 = 32'd4
; 
32'd2510: dataIn1 = 32'd5
; 
32'd2511: dataIn1 = 32'd7
; 
32'd2512: dataIn1 = 32'd9
; 
32'd2513: dataIn1 = 32'd11
; 
32'd2514: dataIn1 = 32'd13
; 
32'd2515: dataIn1 = 32'd14
; 
32'd2516: dataIn1 = 32'd15
; 
32'd2517: dataIn1 = 32'd0
; 
32'd2518: dataIn1 = 32'd5
; 
32'd2519: dataIn1 = 32'd6
; 
32'd2520: dataIn1 = 32'd7
; 
32'd2521: dataIn1 = 32'd8
; 
32'd2522: dataIn1 = 32'd12
; 
32'd2523: dataIn1 = 32'd13
; 
32'd2524: dataIn1 = 32'd15
; 
32'd2525: dataIn1 = 32'd0
; 
32'd2526: dataIn1 = 32'd2
; 
32'd2527: dataIn1 = 32'd4
; 
32'd2528: dataIn1 = 32'd5
; 
32'd2529: dataIn1 = 32'd6
; 
32'd2530: dataIn1 = 32'd7
; 
32'd2531: dataIn1 = 32'd9
; 
32'd2532: dataIn1 = 32'd13
; 
32'd2533: dataIn1 = 32'd15
; 
32'd2534: dataIn1 = 32'd2
; 
32'd2535: dataIn1 = 32'd3
; 
32'd2536: dataIn1 = 32'd4
; 
32'd2537: dataIn1 = 32'd5
; 
32'd2538: dataIn1 = 32'd6
; 
32'd2539: dataIn1 = 32'd8
; 
32'd2540: dataIn1 = 32'd10
; 
32'd2541: dataIn1 = 32'd11
; 
32'd2542: dataIn1 = 32'd12
; 
32'd2543: dataIn1 = 32'd14
; 
32'd2544: dataIn1 = 32'd3
; 
32'd2545: dataIn1 = 32'd4
; 
32'd2546: dataIn1 = 32'd7
; 
32'd2547: dataIn1 = 32'd10
; 
32'd2548: dataIn1 = 32'd11
; 
32'd2549: dataIn1 = 32'd12
; 
32'd2550: dataIn1 = 32'd14
; 
32'd2551: dataIn1 = 32'd15
; 
32'd2552: dataIn1 = 32'd0
; 
32'd2553: dataIn1 = 32'd2
; 
32'd2554: dataIn1 = 32'd4
; 
32'd2555: dataIn1 = 32'd5
; 
32'd2556: dataIn1 = 32'd8
; 
32'd2557: dataIn1 = 32'd12
; 
32'd2558: dataIn1 = 32'd13
; 
32'd2559: dataIn1 = 32'd0
; 
32'd2560: dataIn1 = 32'd3
; 
32'd2561: dataIn1 = 32'd5
; 
32'd2562: dataIn1 = 32'd9
; 
32'd2563: dataIn1 = 32'd12
; 
32'd2564: dataIn1 = 32'd14
; 
32'd2565: dataIn1 = 32'd15
; 
32'd2566: dataIn1 = 32'd1
; 
32'd2567: dataIn1 = 32'd2
; 
32'd2568: dataIn1 = 32'd3
; 
32'd2569: dataIn1 = 32'd4
; 
32'd2570: dataIn1 = 32'd6
; 
32'd2571: dataIn1 = 32'd7
; 
32'd2572: dataIn1 = 32'd10
; 
32'd2573: dataIn1 = 32'd11
; 
32'd2574: dataIn1 = 32'd14
; 
32'd2575: dataIn1 = 32'd15
; 
32'd2576: dataIn1 = 32'd0
; 
32'd2577: dataIn1 = 32'd7
; 
32'd2578: dataIn1 = 32'd8
; 
32'd2579: dataIn1 = 32'd9
; 
32'd2580: dataIn1 = 32'd10
; 
32'd2581: dataIn1 = 32'd13
; 
32'd2582: dataIn1 = 32'd14
; 
32'd2583: dataIn1 = 32'd0
; 
32'd2584: dataIn1 = 32'd1
; 
32'd2585: dataIn1 = 32'd2
; 
32'd2586: dataIn1 = 32'd3
; 
32'd2587: dataIn1 = 32'd4
; 
32'd2588: dataIn1 = 32'd6
; 
32'd2589: dataIn1 = 32'd7
; 
32'd2590: dataIn1 = 32'd8
; 
32'd2591: dataIn1 = 32'd9
; 
32'd2592: dataIn1 = 32'd10
; 
32'd2593: dataIn1 = 32'd11
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd8; 
32'd3: dataIn2 = 32'd98; 
32'd4: dataIn2 = 32'd18; 
32'd5: dataIn2 = 32'd87; 
32'd6: dataIn2 = 32'd65; 
32'd7: dataIn2 = 32'd7; 
32'd8: dataIn2 = 32'd82; 
32'd9: dataIn2 = 32'd48; 
32'd10: dataIn2 = 32'd55; 
32'd11: dataIn2 = 32'd97; 
32'd12: dataIn2 = 32'd8; 
32'd13: dataIn2 = 32'd69; 
32'd14: dataIn2 = 32'd28; 
32'd15: dataIn2 = 32'd71; 
32'd16: dataIn2 = 32'd44; 
32'd17: dataIn2 = 32'd84; 
32'd90: dataIn2 = 32'd45; 
32'd91: dataIn2 = 32'd66; 
32'd92: dataIn2 = 32'd83; 
32'd93: dataIn2 = 32'd8; 
32'd94: dataIn2 = 32'd5; 
32'd95: dataIn2 = 32'd79; 
32'd96: dataIn2 = 32'd78; 
32'd97: dataIn2 = 32'd61; 
32'd98: dataIn2 = 32'd29; 
32'd99: dataIn2 = 32'd52; 
32'd100: dataIn2 = 32'd21; 
32'd101: dataIn2 = 32'd86; 
32'd102: dataIn2 = 32'd97; 
32'd103: dataIn2 = 32'd77; 
32'd104: dataIn2 = 32'd68; 
32'd105: dataIn2 = 32'd42; 
32'd106: dataIn2 = 32'd53; 
32'd107: dataIn2 = 32'd76; 
32'd108: dataIn2 = 32'd42; 
32'd109: dataIn2 = 32'd80; 
32'd110: dataIn2 = 32'd83; 
32'd111: dataIn2 = 32'd18; 
32'd112: dataIn2 = 32'd35; 
32'd113: dataIn2 = 32'd33; 
32'd114: dataIn2 = 32'd1; 
32'd115: dataIn2 = 32'd36; 
32'd116: dataIn2 = 32'd31; 
32'd117: dataIn2 = 32'd36; 
32'd118: dataIn2 = 32'd65; 
32'd119: dataIn2 = 32'd29; 
32'd120: dataIn2 = 32'd90; 
32'd121: dataIn2 = 32'd88; 
32'd122: dataIn2 = 32'd92; 
32'd123: dataIn2 = 32'd6; 
32'd124: dataIn2 = 32'd74; 
32'd125: dataIn2 = 32'd85; 
32'd126: dataIn2 = 32'd44; 
32'd127: dataIn2 = 32'd20; 
32'd128: dataIn2 = 32'd58; 
32'd129: dataIn2 = 32'd90; 
32'd130: dataIn2 = 32'd74; 
32'd131: dataIn2 = 32'd81; 
32'd132: dataIn2 = 32'd68; 
32'd133: dataIn2 = 32'd99; 
32'd134: dataIn2 = 32'd46; 
32'd135: dataIn2 = 32'd90; 
32'd136: dataIn2 = 32'd81; 
32'd137: dataIn2 = 32'd18; 
32'd138: dataIn2 = 32'd55; 
32'd139: dataIn2 = 32'd31; 
32'd140: dataIn2 = 32'd33; 
32'd141: dataIn2 = 32'd65; 
32'd142: dataIn2 = 32'd84; 
32'd143: dataIn2 = 32'd75; 
32'd144: dataIn2 = 32'd32; 
32'd145: dataIn2 = 32'd19; 
32'd146: dataIn2 = 32'd91; 
32'd147: dataIn2 = 32'd8; 
32'd148: dataIn2 = 32'd14; 
32'd149: dataIn2 = 32'd11; 
32'd150: dataIn2 = 32'd30; 
32'd151: dataIn2 = 32'd28; 
32'd152: dataIn2 = 32'd6; 
32'd153: dataIn2 = 32'd39; 
32'd154: dataIn2 = 32'd17; 
32'd155: dataIn2 = 32'd43; 
32'd156: dataIn2 = 32'd89; 
32'd157: dataIn2 = 32'd27; 
32'd158: dataIn2 = 32'd6; 
32'd159: dataIn2 = 32'd87; 
32'd160: dataIn2 = 32'd66; 
32'd161: dataIn2 = 32'd83; 
32'd162: dataIn2 = 32'd26; 
32'd163: dataIn2 = 32'd2; 
32'd164: dataIn2 = 32'd91; 
32'd165: dataIn2 = 32'd21; 
32'd166: dataIn2 = 32'd7; 
32'd167: dataIn2 = 32'd86; 
32'd168: dataIn2 = 32'd32; 
32'd169: dataIn2 = 32'd43; 
32'd170: dataIn2 = 32'd5; 
32'd171: dataIn2 = 32'd42; 
32'd172: dataIn2 = 32'd25; 
32'd173: dataIn2 = 32'd44; 
32'd174: dataIn2 = 32'd51; 
32'd175: dataIn2 = 32'd37; 
32'd176: dataIn2 = 32'd88; 
32'd177: dataIn2 = 32'd36; 
32'd178: dataIn2 = 32'd16; 
32'd179: dataIn2 = 32'd46; 
32'd180: dataIn2 = 32'd82; 
32'd181: dataIn2 = 32'd1; 
32'd182: dataIn2 = 32'd51; 
32'd183: dataIn2 = 32'd5; 
32'd184: dataIn2 = 32'd96; 
32'd185: dataIn2 = 32'd99; 
32'd186: dataIn2 = 32'd6; 
32'd187: dataIn2 = 32'd27; 
32'd188: dataIn2 = 32'd66; 
32'd189: dataIn2 = 32'd83; 
32'd190: dataIn2 = 32'd97; 
32'd191: dataIn2 = 32'd21; 
32'd192: dataIn2 = 32'd92; 
32'd193: dataIn2 = 32'd11; 
32'd194: dataIn2 = 32'd31; 
32'd195: dataIn2 = 32'd82; 
32'd196: dataIn2 = 32'd78; 
32'd197: dataIn2 = 32'd67; 
32'd198: dataIn2 = 32'd21; 
32'd199: dataIn2 = 32'd67; 
32'd200: dataIn2 = 32'd97; 
32'd201: dataIn2 = 32'd11; 
32'd202: dataIn2 = 32'd16; 
32'd203: dataIn2 = 32'd67; 
32'd204: dataIn2 = 32'd57; 
32'd205: dataIn2 = 32'd90; 
32'd206: dataIn2 = 32'd42; 
32'd207: dataIn2 = 32'd13; 
32'd208: dataIn2 = 32'd33; 
32'd209: dataIn2 = 32'd81; 
32'd210: dataIn2 = 32'd62; 
32'd211: dataIn2 = 32'd31; 
32'd212: dataIn2 = 32'd44; 
32'd213: dataIn2 = 32'd42; 
32'd214: dataIn2 = 32'd89; 
32'd215: dataIn2 = 32'd9; 
32'd216: dataIn2 = 32'd8; 
32'd217: dataIn2 = 32'd93; 
32'd218: dataIn2 = 32'd9; 
32'd219: dataIn2 = 32'd45; 
32'd220: dataIn2 = 32'd22; 
32'd221: dataIn2 = 32'd38; 
32'd222: dataIn2 = 32'd68; 
32'd223: dataIn2 = 32'd100; 
32'd224: dataIn2 = 32'd59; 
32'd225: dataIn2 = 32'd97; 
32'd226: dataIn2 = 32'd17; 
32'd227: dataIn2 = 32'd42; 
32'd228: dataIn2 = 32'd6; 
32'd229: dataIn2 = 32'd1; 
32'd230: dataIn2 = 32'd2; 
32'd231: dataIn2 = 32'd31; 
32'd232: dataIn2 = 32'd45; 
32'd233: dataIn2 = 32'd59; 
32'd234: dataIn2 = 32'd12; 
32'd235: dataIn2 = 32'd93; 
32'd236: dataIn2 = 32'd42; 
32'd237: dataIn2 = 32'd13; 
32'd238: dataIn2 = 32'd91; 
32'd239: dataIn2 = 32'd55; 
32'd240: dataIn2 = 32'd94; 
32'd241: dataIn2 = 32'd92; 
32'd242: dataIn2 = 32'd50; 
32'd243: dataIn2 = 32'd23; 
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
	$dumpfile("hht2_new_16_40.vcd");  
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
