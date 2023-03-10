//32x32 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 307 ; 
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
 #6320; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd340: dataIn1 = 32'd24; 
32'd341: dataIn1 = 32'd10; 
32'd342: dataIn1 = 32'd12; 
32'd343: dataIn1 = 32'd6; 
32'd344: dataIn1 = 32'd28; 
32'd345: dataIn1 = 32'd14; 
32'd346: dataIn1 = 32'd11; 
32'd347: dataIn1 = 32'd17; 
32'd348: dataIn1 = 32'd24; 
32'd349: dataIn1 = 32'd8; 
32'd350: dataIn1 = 32'd21; 
32'd351: dataIn1 = 32'd29; 
32'd352: dataIn1 = 32'd20; 
32'd353: dataIn1 = 32'd11; 
32'd354: dataIn1 = 32'd25; 
32'd355: dataIn1 = 32'd19; 
32'd356: dataIn1 = 32'd31; 
32'd357: dataIn1 = 32'd14; 
32'd358: dataIn1 = 32'd26; 
32'd359: dataIn1 = 32'd13; 
32'd360: dataIn1 = 32'd14; 
32'd361: dataIn1 = 32'd27; 
32'd362: dataIn1 = 32'd5; 
32'd363: dataIn1 = 32'd30; 
32'd364: dataIn1 = 32'd10; 
32'd365: dataIn1 = 32'd8; 
32'd366: dataIn1 = 32'd24; 
32'd367: dataIn1 = 32'd15; 
32'd368: dataIn1 = 32'd14; 
32'd369: dataIn1 = 32'd19; 
32'd370: dataIn1 = 32'd26; 
32'd371: dataIn1 = 32'd10; 
32'd372: dataIn1 = 32'd23; 
32'd373: dataIn1 = 32'd22; 
32'd374: dataIn1 = 32'd7; 
32'd375: dataIn1 = 32'd18; 
32'd376: dataIn1 = 32'd1; 
32'd377: dataIn1 = 32'd17; 
32'd378: dataIn1 = 32'd27; 
32'd379: dataIn1 = 32'd21; 
32'd380: dataIn1 = 32'd25; 
32'd381: dataIn1 = 32'd31; 
32'd382: dataIn1 = 32'd2; 
32'd383: dataIn1 = 32'd1; 
32'd384: dataIn1 = 32'd23; 
32'd385: dataIn1 = 32'd28; 
32'd386: dataIn1 = 32'd22; 
32'd387: dataIn1 = 32'd0; 
32'd388: dataIn1 = 32'd21; 
32'd389: dataIn1 = 32'd30; 
32'd390: dataIn1 = 32'd8; 
32'd391: dataIn1 = 32'd28; 
32'd392: dataIn1 = 32'd21; 
32'd393: dataIn1 = 32'd12; 
32'd394: dataIn1 = 32'd22; 
32'd395: dataIn1 = 32'd1; 
32'd396: dataIn1 = 32'd25; 
32'd397: dataIn1 = 32'd25; 
32'd398: dataIn1 = 32'd25; 
32'd399: dataIn1 = 32'd21; 
32'd400: dataIn1 = 32'd13; 
32'd401: dataIn1 = 32'd4; 
32'd402: dataIn1 = 32'd7; 
32'd403: dataIn1 = 32'd25; 
32'd404: dataIn1 = 32'd24; 
32'd405: dataIn1 = 32'd31; 
32'd406: dataIn1 = 32'd29; 
32'd407: dataIn1 = 32'd18; 
32'd408: dataIn1 = 32'd6; 
32'd409: dataIn1 = 32'd24; 
32'd410: dataIn1 = 32'd24; 
32'd411: dataIn1 = 32'd12; 
32'd412: dataIn1 = 32'd29; 
32'd413: dataIn1 = 32'd31; 
32'd414: dataIn1 = 32'd6; 
32'd415: dataIn1 = 32'd13; 
32'd416: dataIn1 = 32'd24; 
32'd417: dataIn1 = 32'd14; 
32'd418: dataIn1 = 32'd12; 
32'd419: dataIn1 = 32'd4; 
32'd420: dataIn1 = 32'd18; 
32'd421: dataIn1 = 32'd3; 
32'd422: dataIn1 = 32'd16; 
32'd423: dataIn1 = 32'd22; 
32'd424: dataIn1 = 32'd28; 
32'd425: dataIn1 = 32'd7; 
32'd426: dataIn1 = 32'd15; 
32'd427: dataIn1 = 32'd0; 
32'd428: dataIn1 = 32'd4; 
32'd429: dataIn1 = 32'd29; 
32'd430: dataIn1 = 32'd26; 
32'd431: dataIn1 = 32'd4; 
32'd432: dataIn1 = 32'd5; 
32'd433: dataIn1 = 32'd0; 
32'd434: dataIn1 = 32'd6; 
32'd435: dataIn1 = 32'd24; 
32'd436: dataIn1 = 32'd12; 
32'd437: dataIn1 = 32'd15; 
32'd438: dataIn1 = 32'd1; 
32'd439: dataIn1 = 32'd16; 
32'd440: dataIn1 = 32'd2; 
32'd441: dataIn1 = 32'd16; 
32'd442: dataIn1 = 32'd19; 
32'd443: dataIn1 = 32'd19; 
32'd444: dataIn1 = 32'd1; 
32'd445: dataIn1 = 32'd29; 
32'd446: dataIn1 = 32'd24; 
32'd447: dataIn1 = 32'd6; 
32'd448: dataIn1 = 32'd14; 
32'd449: dataIn1 = 32'd7; 
32'd450: dataIn1 = 32'd8; 
32'd451: dataIn1 = 32'd27; 
32'd452: dataIn1 = 32'd20; 
32'd453: dataIn1 = 32'd21; 
32'd454: dataIn1 = 32'd6; 
32'd455: dataIn1 = 32'd24; 
32'd456: dataIn1 = 32'd4; 
32'd457: dataIn1 = 32'd17; 
32'd458: dataIn1 = 32'd2; 
32'd459: dataIn1 = 32'd4; 
32'd460: dataIn1 = 32'd4; 
32'd461: dataIn1 = 32'd9; 
32'd462: dataIn1 = 32'd20; 
32'd463: dataIn1 = 32'd4; 
32'd464: dataIn1 = 32'd27; 
32'd465: dataIn1 = 32'd22; 
32'd466: dataIn1 = 32'd14; 
32'd467: dataIn1 = 32'd30; 
32'd468: dataIn1 = 32'd6; 
32'd469: dataIn1 = 32'd15; 
32'd470: dataIn1 = 32'd22; 
32'd471: dataIn1 = 32'd5; 
32'd472: dataIn1 = 32'd20; 
32'd473: dataIn1 = 32'd0; 
32'd474: dataIn1 = 32'd0; 
32'd475: dataIn1 = 32'd21; 
32'd476: dataIn1 = 32'd4; 
32'd477: dataIn1 = 32'd29; 
32'd478: dataIn1 = 32'd29; 
32'd479: dataIn1 = 32'd31; 
32'd480: dataIn1 = 32'd12; 
32'd481: dataIn1 = 32'd23; 
32'd482: dataIn1 = 32'd6; 
32'd483: dataIn1 = 32'd20; 
32'd484: dataIn1 = 32'd11; 
32'd485: dataIn1 = 32'd2; 
32'd486: dataIn1 = 32'd9; 
32'd487: dataIn1 = 32'd13; 
32'd488: dataIn1 = 32'd4; 
32'd489: dataIn1 = 32'd31; 
32'd490: dataIn1 = 32'd25; 
32'd491: dataIn1 = 32'd0; 
32'd492: dataIn1 = 32'd7; 
32'd493: dataIn1 = 32'd19; 
32'd494: dataIn1 = 32'd1; 
32'd495: dataIn1 = 32'd30; 
32'd496: dataIn1 = 32'd7; 
32'd497: dataIn1 = 32'd18; 
32'd498: dataIn1 = 32'd27; 
32'd499: dataIn1 = 32'd27; 
32'd500: dataIn1 = 32'd17; 
32'd501: dataIn1 = 32'd2; 
32'd502: dataIn1 = 32'd6; 
32'd503: dataIn1 = 32'd12; 
32'd504: dataIn1 = 32'd0; 
32'd505: dataIn1 = 32'd8; 
32'd506: dataIn1 = 32'd14; 
32'd507: dataIn1 = 32'd27; 
32'd508: dataIn1 = 32'd8; 
32'd509: dataIn1 = 32'd5; 
32'd510: dataIn1 = 32'd18; 
32'd511: dataIn1 = 32'd7; 
32'd512: dataIn1 = 32'd29; 
32'd513: dataIn1 = 32'd14; 
32'd514: dataIn1 = 32'd12; 
32'd515: dataIn1 = 32'd16; 
32'd516: dataIn1 = 32'd11; 
32'd517: dataIn1 = 32'd0; 
32'd518: dataIn1 = 32'd13; 
32'd519: dataIn1 = 32'd17; 
32'd520: dataIn1 = 32'd8; 
32'd521: dataIn1 = 32'd14; 
32'd522: dataIn1 = 32'd8; 
32'd523: dataIn1 = 32'd14; 
32'd524: dataIn1 = 32'd20; 
32'd525: dataIn1 = 32'd6; 
32'd526: dataIn1 = 32'd2; 
32'd527: dataIn1 = 32'd10; 
32'd528: dataIn1 = 32'd4; 
32'd529: dataIn1 = 32'd16; 
32'd530: dataIn1 = 32'd24; 
32'd531: dataIn1 = 32'd26; 
32'd532: dataIn1 = 32'd6; 
32'd533: dataIn1 = 32'd18; 
32'd534: dataIn1 = 32'd31; 
32'd535: dataIn1 = 32'd25; 
32'd536: dataIn1 = 32'd19; 
32'd537: dataIn1 = 32'd24; 
32'd538: dataIn1 = 32'd23; 
32'd539: dataIn1 = 32'd13; 
32'd540: dataIn1 = 32'd13; 
32'd541: dataIn1 = 32'd24; 
32'd542: dataIn1 = 32'd1; 
32'd543: dataIn1 = 32'd17; 
32'd544: dataIn1 = 32'd22; 
32'd545: dataIn1 = 32'd30; 
32'd546: dataIn1 = 32'd10; 
32'd547: dataIn1 = 32'd31; 
32'd548: dataIn1 = 32'd21; 
32'd549: dataIn1 = 32'd17; 
32'd550: dataIn1 = 32'd1; 
32'd551: dataIn1 = 32'd4; 
32'd552: dataIn1 = 32'd26; 
32'd553: dataIn1 = 32'd23; 
32'd554: dataIn1 = 32'd30; 
32'd555: dataIn1 = 32'd24; 
32'd556: dataIn1 = 32'd30; 
32'd557: dataIn1 = 32'd7; 
32'd558: dataIn1 = 32'd7; 
32'd559: dataIn1 = 32'd5; 
32'd560: dataIn1 = 32'd11; 
32'd561: dataIn1 = 32'd11; 
32'd562: dataIn1 = 32'd22; 
32'd563: dataIn1 = 32'd0; 
32'd564: dataIn1 = 32'd18; 
32'd565: dataIn1 = 32'd1; 
32'd566: dataIn1 = 32'd10; 
32'd567: dataIn1 = 32'd5; 
32'd568: dataIn1 = 32'd31; 
32'd569: dataIn1 = 32'd11; 
32'd570: dataIn1 = 32'd4; 
32'd571: dataIn1 = 32'd18; 
32'd572: dataIn1 = 32'd6; 
32'd573: dataIn1 = 32'd15; 
32'd574: dataIn1 = 32'd20; 
32'd575: dataIn1 = 32'd8; 
32'd576: dataIn1 = 32'd2; 
32'd577: dataIn1 = 32'd20; 
32'd578: dataIn1 = 32'd4; 
32'd579: dataIn1 = 32'd30; 
32'd580: dataIn1 = 32'd23; 
32'd581: dataIn1 = 32'd18; 
32'd582: dataIn1 = 32'd23; 
32'd583: dataIn1 = 32'd15; 
32'd584: dataIn1 = 32'd20; 
32'd585: dataIn1 = 32'd1; 
32'd586: dataIn1 = 32'd19; 
32'd587: dataIn1 = 32'd10; 
32'd588: dataIn1 = 32'd1; 
32'd589: dataIn1 = 32'd30; 
32'd590: dataIn1 = 32'd21; 
32'd591: dataIn1 = 32'd9; 
32'd592: dataIn1 = 32'd7; 
32'd593: dataIn1 = 32'd15; 
32'd594: dataIn1 = 32'd25; 
32'd595: dataIn1 = 32'd11; 
32'd596: dataIn1 = 32'd22; 
32'd597: dataIn1 = 32'd14; 
32'd598: dataIn1 = 32'd9; 
32'd599: dataIn1 = 32'd5; 
32'd600: dataIn1 = 32'd5; 
32'd601: dataIn1 = 32'd10; 
32'd602: dataIn1 = 32'd18; 
32'd603: dataIn1 = 32'd0; 
32'd604: dataIn1 = 32'd26; 
32'd605: dataIn1 = 32'd2; 
32'd606: dataIn1 = 32'd15; 
32'd607: dataIn1 = 32'd26; 
32'd608: dataIn1 = 32'd1; 
32'd609: dataIn1 = 32'd15; 
32'd610: dataIn1 = 32'd21; 
32'd611: dataIn1 = 32'd21; 
32'd612: dataIn1 = 32'd31; 
32'd613: dataIn1 = 32'd9; 
32'd614: dataIn1 = 32'd24; 
32'd615: dataIn1 = 32'd31; 
32'd616: dataIn1 = 32'd17; 
32'd617: dataIn1 = 32'd26; 
32'd618: dataIn1 = 32'd21; 
32'd619: dataIn1 = 32'd5; 
32'd620: dataIn1 = 32'd0; 
32'd621: dataIn1 = 32'd22; 
32'd622: dataIn1 = 32'd31; 
32'd623: dataIn1 = 32'd7; 
32'd624: dataIn1 = 32'd1; 
32'd625: dataIn1 = 32'd17; 
32'd626: dataIn1 = 32'd30; 
32'd627: dataIn1 = 32'd7; 
32'd628: dataIn1 = 32'd4; 
32'd629: dataIn1 = 32'd12; 
32'd630: dataIn1 = 32'd15; 
32'd631: dataIn1 = 32'd22; 
32'd632: dataIn1 = 32'd12; 
32'd633: dataIn1 = 32'd1; 
32'd634: dataIn1 = 32'd21; 
32'd635: dataIn1 = 32'd7; 
32'd636: dataIn1 = 32'd3; 
32'd637: dataIn1 = 32'd24; 
32'd638: dataIn1 = 32'd17; 
32'd639: dataIn1 = 32'd1; 
32'd640: dataIn1 = 32'd24; 
32'd641: dataIn1 = 32'd12; 
32'd642: dataIn1 = 32'd1; 
32'd643: dataIn1 = 32'd0; 
32'd644: dataIn1 = 32'd7; 
32'd645: dataIn1 = 32'd12; 
32'd646: dataIn1 = 32'd11; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd95; 
32'd3: dataIn2 = 32'd56; 
32'd4: dataIn2 = 32'd36; 
32'd5: dataIn2 = 32'd48; 
32'd6: dataIn2 = 32'd44; 
32'd7: dataIn2 = 32'd99; 
32'd8: dataIn2 = 32'd16; 
32'd9: dataIn2 = 32'd36; 
32'd10: dataIn2 = 32'd4; 
32'd11: dataIn2 = 32'd37; 
32'd12: dataIn2 = 32'd79; 
32'd13: dataIn2 = 32'd25; 
32'd14: dataIn2 = 32'd10; 
32'd15: dataIn2 = 32'd42; 
32'd16: dataIn2 = 32'd35; 
32'd17: dataIn2 = 32'd12; 
32'd18: dataIn2 = 32'd20; 
32'd19: dataIn2 = 32'd4; 
32'd20: dataIn2 = 32'd99; 
32'd21: dataIn2 = 32'd77; 
32'd22: dataIn2 = 32'd31; 
32'd23: dataIn2 = 32'd83; 
32'd24: dataIn2 = 32'd19; 
32'd25: dataIn2 = 32'd78; 
32'd26: dataIn2 = 32'd54; 
32'd27: dataIn2 = 32'd86; 
32'd28: dataIn2 = 32'd58; 
32'd29: dataIn2 = 32'd66; 
32'd30: dataIn2 = 32'd52; 
32'd31: dataIn2 = 32'd28; 
32'd32: dataIn2 = 32'd59; 
32'd33: dataIn2 = 32'd63; 
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
