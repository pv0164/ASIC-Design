//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 205 ; 
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
  wdata_col_base = 32'd2950 ; 
  row_base = 32'd31550 ; 
  csize = COL_SIZE; 
 //fe_init = 1'b1; 
 
// RD = 1'b0; 
// RD = 1'b1; 
 #28000; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 

if(regaddr1 == 5'd6)
	base_dat_a = wdata_col_base;
else if (regaddr1 == 5'd8)
	base_dat_a = v_values_base;
if(regaddr2 == 5'd15)
	base_dat_b = row_base;
else if (regaddr2 == 5'd9)
	base_dat_b = matrix_base;

case(addr1)  
32'd31550: dataIn1 = 32'd0
; 
32'd31551: dataIn1 = 32'd13
; 
32'd31552: dataIn1 = 32'd28
; 
32'd31553: dataIn1 = 32'd38
; 
32'd31554: dataIn1 = 32'd47
; 
32'd31555: dataIn1 = 32'd60
; 
32'd31556: dataIn1 = 32'd72
; 
32'd31557: dataIn1 = 32'd85
; 
32'd31558: dataIn1 = 32'd96
; 
32'd31559: dataIn1 = 32'd106
; 
32'd31560: dataIn1 = 32'd119
; 
32'd31561: dataIn1 = 32'd133
; 
32'd31562: dataIn1 = 32'd145
; 
32'd31563: dataIn1 = 32'd156
; 
32'd31564: dataIn1 = 32'd170
; 
32'd31565: dataIn1 = 32'd183
; 
32'd31566: dataIn1 = 32'd196
; 
32'd2950: dataIn1 = 32'd0
; 
32'd2951: dataIn1 = 32'd13
; 
32'd2952: dataIn1 = 32'd28
; 
32'd2953: dataIn1 = 32'd38
; 
32'd2954: dataIn1 = 32'd47
; 
32'd2955: dataIn1 = 32'd60
; 
32'd2956: dataIn1 = 32'd72
; 
32'd2957: dataIn1 = 32'd85
; 
32'd2958: dataIn1 = 32'd96
; 
32'd2959: dataIn1 = 32'd106
; 
32'd2960: dataIn1 = 32'd119
; 
32'd2961: dataIn1 = 32'd133
; 
32'd2962: dataIn1 = 32'd145
; 
32'd2963: dataIn1 = 32'd156
; 
32'd2964: dataIn1 = 32'd170
; 
32'd2965: dataIn1 = 32'd183
; 
32'd2966: dataIn1 = 32'd196
; 
32'd2967: dataIn1 = 32'd0
; 
32'd2968: dataIn1 = 32'd1
; 
32'd2969: dataIn1 = 32'd2
; 
32'd2970: dataIn1 = 32'd4
; 
32'd2971: dataIn1 = 32'd5
; 
32'd2972: dataIn1 = 32'd6
; 
32'd2973: dataIn1 = 32'd7
; 
32'd2974: dataIn1 = 32'd9
; 
32'd2975: dataIn1 = 32'd10
; 
32'd2976: dataIn1 = 32'd11
; 
32'd2977: dataIn1 = 32'd12
; 
32'd2978: dataIn1 = 32'd13
; 
32'd2979: dataIn1 = 32'd15
; 
32'd2980: dataIn1 = 32'd0
; 
32'd2981: dataIn1 = 32'd1
; 
32'd2982: dataIn1 = 32'd2
; 
32'd2983: dataIn1 = 32'd3
; 
32'd2984: dataIn1 = 32'd4
; 
32'd2985: dataIn1 = 32'd5
; 
32'd2986: dataIn1 = 32'd6
; 
32'd2987: dataIn1 = 32'd7
; 
32'd2988: dataIn1 = 32'd8
; 
32'd2989: dataIn1 = 32'd9
; 
32'd2990: dataIn1 = 32'd10
; 
32'd2991: dataIn1 = 32'd11
; 
32'd2992: dataIn1 = 32'd13
; 
32'd2993: dataIn1 = 32'd14
; 
32'd2994: dataIn1 = 32'd15
; 
32'd2995: dataIn1 = 32'd0
; 
32'd2996: dataIn1 = 32'd1
; 
32'd2997: dataIn1 = 32'd2
; 
32'd2998: dataIn1 = 32'd4
; 
32'd2999: dataIn1 = 32'd6
; 
32'd3000: dataIn1 = 32'd7
; 
32'd3001: dataIn1 = 32'd8
; 
32'd3002: dataIn1 = 32'd9
; 
32'd3003: dataIn1 = 32'd12
; 
32'd3004: dataIn1 = 32'd13
; 
32'd3005: dataIn1 = 32'd1
; 
32'd3006: dataIn1 = 32'd2
; 
32'd3007: dataIn1 = 32'd6
; 
32'd3008: dataIn1 = 32'd7
; 
32'd3009: dataIn1 = 32'd8
; 
32'd3010: dataIn1 = 32'd10
; 
32'd3011: dataIn1 = 32'd11
; 
32'd3012: dataIn1 = 32'd14
; 
32'd3013: dataIn1 = 32'd15
; 
32'd3014: dataIn1 = 32'd1
; 
32'd3015: dataIn1 = 32'd2
; 
32'd3016: dataIn1 = 32'd3
; 
32'd3017: dataIn1 = 32'd4
; 
32'd3018: dataIn1 = 32'd5
; 
32'd3019: dataIn1 = 32'd6
; 
32'd3020: dataIn1 = 32'd8
; 
32'd3021: dataIn1 = 32'd9
; 
32'd3022: dataIn1 = 32'd10
; 
32'd3023: dataIn1 = 32'd11
; 
32'd3024: dataIn1 = 32'd12
; 
32'd3025: dataIn1 = 32'd14
; 
32'd3026: dataIn1 = 32'd15
; 
32'd3027: dataIn1 = 32'd0
; 
32'd3028: dataIn1 = 32'd4
; 
32'd3029: dataIn1 = 32'd5
; 
32'd3030: dataIn1 = 32'd6
; 
32'd3031: dataIn1 = 32'd7
; 
32'd3032: dataIn1 = 32'd8
; 
32'd3033: dataIn1 = 32'd9
; 
32'd3034: dataIn1 = 32'd10
; 
32'd3035: dataIn1 = 32'd12
; 
32'd3036: dataIn1 = 32'd13
; 
32'd3037: dataIn1 = 32'd14
; 
32'd3038: dataIn1 = 32'd15
; 
32'd3039: dataIn1 = 32'd1
; 
32'd3040: dataIn1 = 32'd2
; 
32'd3041: dataIn1 = 32'd3
; 
32'd3042: dataIn1 = 32'd4
; 
32'd3043: dataIn1 = 32'd5
; 
32'd3044: dataIn1 = 32'd7
; 
32'd3045: dataIn1 = 32'd8
; 
32'd3046: dataIn1 = 32'd9
; 
32'd3047: dataIn1 = 32'd10
; 
32'd3048: dataIn1 = 32'd11
; 
32'd3049: dataIn1 = 32'd12
; 
32'd3050: dataIn1 = 32'd14
; 
32'd3051: dataIn1 = 32'd15
; 
32'd3052: dataIn1 = 32'd0
; 
32'd3053: dataIn1 = 32'd1
; 
32'd3054: dataIn1 = 32'd2
; 
32'd3055: dataIn1 = 32'd3
; 
32'd3056: dataIn1 = 32'd4
; 
32'd3057: dataIn1 = 32'd8
; 
32'd3058: dataIn1 = 32'd9
; 
32'd3059: dataIn1 = 32'd10
; 
32'd3060: dataIn1 = 32'd12
; 
32'd3061: dataIn1 = 32'd13
; 
32'd3062: dataIn1 = 32'd14
; 
32'd3063: dataIn1 = 32'd3
; 
32'd3064: dataIn1 = 32'd7
; 
32'd3065: dataIn1 = 32'd8
; 
32'd3066: dataIn1 = 32'd9
; 
32'd3067: dataIn1 = 32'd10
; 
32'd3068: dataIn1 = 32'd11
; 
32'd3069: dataIn1 = 32'd12
; 
32'd3070: dataIn1 = 32'd13
; 
32'd3071: dataIn1 = 32'd14
; 
32'd3072: dataIn1 = 32'd15
; 
32'd3073: dataIn1 = 32'd0
; 
32'd3074: dataIn1 = 32'd1
; 
32'd3075: dataIn1 = 32'd2
; 
32'd3076: dataIn1 = 32'd3
; 
32'd3077: dataIn1 = 32'd4
; 
32'd3078: dataIn1 = 32'd6
; 
32'd3079: dataIn1 = 32'd8
; 
32'd3080: dataIn1 = 32'd9
; 
32'd3081: dataIn1 = 32'd10
; 
32'd3082: dataIn1 = 32'd11
; 
32'd3083: dataIn1 = 32'd12
; 
32'd3084: dataIn1 = 32'd14
; 
32'd3085: dataIn1 = 32'd15
; 
32'd3086: dataIn1 = 32'd0
; 
32'd3087: dataIn1 = 32'd1
; 
32'd3088: dataIn1 = 32'd2
; 
32'd3089: dataIn1 = 32'd3
; 
32'd3090: dataIn1 = 32'd4
; 
32'd3091: dataIn1 = 32'd5
; 
32'd3092: dataIn1 = 32'd6
; 
32'd3093: dataIn1 = 32'd7
; 
32'd3094: dataIn1 = 32'd8
; 
32'd3095: dataIn1 = 32'd10
; 
32'd3096: dataIn1 = 32'd11
; 
32'd3097: dataIn1 = 32'd12
; 
32'd3098: dataIn1 = 32'd13
; 
32'd3099: dataIn1 = 32'd14
; 
32'd3100: dataIn1 = 32'd0
; 
32'd3101: dataIn1 = 32'd1
; 
32'd3102: dataIn1 = 32'd3
; 
32'd3103: dataIn1 = 32'd4
; 
32'd3104: dataIn1 = 32'd6
; 
32'd3105: dataIn1 = 32'd8
; 
32'd3106: dataIn1 = 32'd9
; 
32'd3107: dataIn1 = 32'd10
; 
32'd3108: dataIn1 = 32'd11
; 
32'd3109: dataIn1 = 32'd12
; 
32'd3110: dataIn1 = 32'd13
; 
32'd3111: dataIn1 = 32'd14
; 
32'd3112: dataIn1 = 32'd1
; 
32'd3113: dataIn1 = 32'd2
; 
32'd3114: dataIn1 = 32'd3
; 
32'd3115: dataIn1 = 32'd4
; 
32'd3116: dataIn1 = 32'd5
; 
32'd3117: dataIn1 = 32'd6
; 
32'd3118: dataIn1 = 32'd9
; 
32'd3119: dataIn1 = 32'd11
; 
32'd3120: dataIn1 = 32'd12
; 
32'd3121: dataIn1 = 32'd13
; 
32'd3122: dataIn1 = 32'd14
; 
32'd3123: dataIn1 = 32'd0
; 
32'd3124: dataIn1 = 32'd1
; 
32'd3125: dataIn1 = 32'd2
; 
32'd3126: dataIn1 = 32'd3
; 
32'd3127: dataIn1 = 32'd4
; 
32'd3128: dataIn1 = 32'd5
; 
32'd3129: dataIn1 = 32'd6
; 
32'd3130: dataIn1 = 32'd7
; 
32'd3131: dataIn1 = 32'd8
; 
32'd3132: dataIn1 = 32'd9
; 
32'd3133: dataIn1 = 32'd10
; 
32'd3134: dataIn1 = 32'd11
; 
32'd3135: dataIn1 = 32'd13
; 
32'd3136: dataIn1 = 32'd14
; 
32'd3137: dataIn1 = 32'd0
; 
32'd3138: dataIn1 = 32'd1
; 
32'd3139: dataIn1 = 32'd2
; 
32'd3140: dataIn1 = 32'd5
; 
32'd3141: dataIn1 = 32'd6
; 
32'd3142: dataIn1 = 32'd7
; 
32'd3143: dataIn1 = 32'd8
; 
32'd3144: dataIn1 = 32'd9
; 
32'd3145: dataIn1 = 32'd10
; 
32'd3146: dataIn1 = 32'd11
; 
32'd3147: dataIn1 = 32'd12
; 
32'd3148: dataIn1 = 32'd13
; 
32'd3149: dataIn1 = 32'd14
; 
32'd3150: dataIn1 = 32'd0
; 
32'd3151: dataIn1 = 32'd1
; 
32'd3152: dataIn1 = 32'd2
; 
32'd3153: dataIn1 = 32'd3
; 
32'd3154: dataIn1 = 32'd4
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd82; 
32'd3: dataIn2 = 32'd8; 
32'd4: dataIn2 = 32'd57; 
32'd5: dataIn2 = 32'd74; 
32'd6: dataIn2 = 32'd49; 
32'd7: dataIn2 = 32'd93; 
32'd8: dataIn2 = 32'd73; 
32'd9: dataIn2 = 32'd90; 
32'd10: dataIn2 = 32'd88; 
32'd11: dataIn2 = 32'd100; 
32'd12: dataIn2 = 32'd53; 
32'd13: dataIn2 = 32'd97; 
32'd14: dataIn2 = 32'd97; 
32'd15: dataIn2 = 32'd74; 
32'd16: dataIn2 = 32'd50; 
32'd17: dataIn2 = 32'd42; 
32'd90: dataIn2 = 32'd31; 
32'd91: dataIn2 = 32'd32; 
32'd92: dataIn2 = 32'd8; 
32'd93: dataIn2 = 32'd36; 
32'd94: dataIn2 = 32'd74; 
32'd95: dataIn2 = 32'd62; 
32'd96: dataIn2 = 32'd87; 
32'd97: dataIn2 = 32'd43; 
32'd98: dataIn2 = 32'd90; 
32'd99: dataIn2 = 32'd48; 
32'd100: dataIn2 = 32'd20; 
32'd101: dataIn2 = 32'd50; 
32'd102: dataIn2 = 32'd60; 
32'd103: dataIn2 = 32'd16; 
32'd104: dataIn2 = 32'd42; 
32'd105: dataIn2 = 32'd52; 
32'd106: dataIn2 = 32'd36; 
32'd107: dataIn2 = 32'd12; 
32'd108: dataIn2 = 32'd42; 
32'd109: dataIn2 = 32'd72; 
32'd110: dataIn2 = 32'd3; 
32'd111: dataIn2 = 32'd78; 
32'd112: dataIn2 = 32'd42; 
32'd113: dataIn2 = 32'd80; 
32'd114: dataIn2 = 32'd71; 
32'd115: dataIn2 = 32'd12; 
32'd116: dataIn2 = 32'd13; 
32'd117: dataIn2 = 32'd38; 
32'd118: dataIn2 = 32'd31; 
32'd119: dataIn2 = 32'd24; 
32'd120: dataIn2 = 32'd12; 
32'd121: dataIn2 = 32'd57; 
32'd122: dataIn2 = 32'd70; 
32'd123: dataIn2 = 32'd100; 
32'd124: dataIn2 = 32'd65; 
32'd125: dataIn2 = 32'd2; 
32'd126: dataIn2 = 32'd51; 
32'd127: dataIn2 = 32'd79; 
32'd128: dataIn2 = 32'd12; 
32'd129: dataIn2 = 32'd50; 
32'd130: dataIn2 = 32'd71; 
32'd131: dataIn2 = 32'd66; 
32'd132: dataIn2 = 32'd8; 
32'd133: dataIn2 = 32'd77; 
32'd134: dataIn2 = 32'd62; 
32'd135: dataIn2 = 32'd82; 
32'd136: dataIn2 = 32'd73; 
32'd137: dataIn2 = 32'd81; 
32'd138: dataIn2 = 32'd65; 
32'd139: dataIn2 = 32'd11; 
32'd140: dataIn2 = 32'd37; 
32'd141: dataIn2 = 32'd95; 
32'd142: dataIn2 = 32'd76; 
32'd143: dataIn2 = 32'd2; 
32'd144: dataIn2 = 32'd75; 
32'd145: dataIn2 = 32'd1; 
32'd146: dataIn2 = 32'd36; 
32'd147: dataIn2 = 32'd76; 
32'd148: dataIn2 = 32'd13; 
32'd149: dataIn2 = 32'd34; 
32'd150: dataIn2 = 32'd42; 
32'd151: dataIn2 = 32'd71; 
32'd152: dataIn2 = 32'd95; 
32'd153: dataIn2 = 32'd15; 
32'd154: dataIn2 = 32'd78; 
32'd155: dataIn2 = 32'd69; 
32'd156: dataIn2 = 32'd51; 
32'd157: dataIn2 = 32'd6; 
32'd158: dataIn2 = 32'd20; 
32'd159: dataIn2 = 32'd68; 
32'd160: dataIn2 = 32'd70; 
32'd161: dataIn2 = 32'd20; 
32'd162: dataIn2 = 32'd69; 
32'd163: dataIn2 = 32'd14; 
32'd164: dataIn2 = 32'd44; 
32'd165: dataIn2 = 32'd46; 
32'd166: dataIn2 = 32'd12; 
32'd167: dataIn2 = 32'd32; 
32'd168: dataIn2 = 32'd58; 
32'd169: dataIn2 = 32'd32; 
32'd170: dataIn2 = 32'd40; 
32'd171: dataIn2 = 32'd39; 
32'd172: dataIn2 = 32'd2; 
32'd173: dataIn2 = 32'd51; 
32'd174: dataIn2 = 32'd54; 
32'd175: dataIn2 = 32'd68; 
32'd176: dataIn2 = 32'd81; 
32'd177: dataIn2 = 32'd18; 
32'd178: dataIn2 = 32'd19; 
32'd179: dataIn2 = 32'd91; 
32'd180: dataIn2 = 32'd0; 
32'd181: dataIn2 = 32'd36; 
32'd182: dataIn2 = 32'd64; 
32'd183: dataIn2 = 32'd64; 
32'd184: dataIn2 = 32'd51; 
32'd185: dataIn2 = 32'd15; 
32'd186: dataIn2 = 32'd55; 
32'd187: dataIn2 = 32'd81; 
32'd188: dataIn2 = 32'd13; 
32'd189: dataIn2 = 32'd25; 
32'd190: dataIn2 = 32'd90; 
32'd191: dataIn2 = 32'd33; 
32'd192: dataIn2 = 32'd45; 
32'd193: dataIn2 = 32'd18; 
32'd194: dataIn2 = 32'd72; 
32'd195: dataIn2 = 32'd76; 
32'd196: dataIn2 = 32'd40; 
32'd197: dataIn2 = 32'd93; 
32'd198: dataIn2 = 32'd85; 
32'd199: dataIn2 = 32'd68; 
32'd200: dataIn2 = 32'd25; 
32'd201: dataIn2 = 32'd23; 
32'd202: dataIn2 = 32'd28; 
32'd203: dataIn2 = 32'd48; 
32'd204: dataIn2 = 32'd11; 
32'd205: dataIn2 = 32'd93; 
32'd206: dataIn2 = 32'd68; 
32'd207: dataIn2 = 32'd27; 
32'd208: dataIn2 = 32'd11; 
32'd209: dataIn2 = 32'd38; 
32'd210: dataIn2 = 32'd36; 
32'd211: dataIn2 = 32'd74; 
32'd212: dataIn2 = 32'd92; 
32'd213: dataIn2 = 32'd17; 
32'd214: dataIn2 = 32'd52; 
32'd215: dataIn2 = 32'd41; 
32'd216: dataIn2 = 32'd47; 
32'd217: dataIn2 = 32'd55; 
32'd218: dataIn2 = 32'd24; 
32'd219: dataIn2 = 32'd46; 
32'd220: dataIn2 = 32'd25; 
32'd221: dataIn2 = 32'd23; 
32'd222: dataIn2 = 32'd65; 
32'd223: dataIn2 = 32'd71; 
32'd224: dataIn2 = 32'd43; 
32'd225: dataIn2 = 32'd7; 
32'd226: dataIn2 = 32'd59; 
32'd227: dataIn2 = 32'd86; 
32'd228: dataIn2 = 32'd35; 
32'd229: dataIn2 = 32'd99; 
32'd230: dataIn2 = 32'd57; 
32'd231: dataIn2 = 32'd27; 
32'd232: dataIn2 = 32'd56; 
32'd233: dataIn2 = 32'd88; 
32'd234: dataIn2 = 32'd0; 
32'd235: dataIn2 = 32'd18; 
32'd236: dataIn2 = 32'd63; 
32'd237: dataIn2 = 32'd35; 
32'd238: dataIn2 = 32'd99; 
32'd239: dataIn2 = 32'd91; 
32'd240: dataIn2 = 32'd15; 
32'd241: dataIn2 = 32'd54; 
32'd242: dataIn2 = 32'd86; 
32'd243: dataIn2 = 32'd50; 
32'd244: dataIn2 = 32'd7; 
32'd245: dataIn2 = 32'd96; 
32'd246: dataIn2 = 32'd51; 
32'd247: dataIn2 = 32'd37; 
32'd248: dataIn2 = 32'd12; 
32'd249: dataIn2 = 32'd39; 
32'd250: dataIn2 = 32'd17; 
32'd251: dataIn2 = 32'd35; 
32'd252: dataIn2 = 32'd28; 
32'd253: dataIn2 = 32'd79; 
32'd254: dataIn2 = 32'd96; 
32'd255: dataIn2 = 32'd94; 
32'd256: dataIn2 = 32'd74; 
32'd257: dataIn2 = 32'd98; 
32'd258: dataIn2 = 32'd16; 
32'd259: dataIn2 = 32'd8; 
32'd260: dataIn2 = 32'd87; 
32'd261: dataIn2 = 32'd19; 
32'd262: dataIn2 = 32'd77; 
32'd263: dataIn2 = 32'd82; 
32'd264: dataIn2 = 32'd98; 
32'd265: dataIn2 = 32'd79; 
32'd266: dataIn2 = 32'd71; 
32'd267: dataIn2 = 32'd13; 
32'd268: dataIn2 = 32'd33; 
32'd269: dataIn2 = 32'd74; 
32'd270: dataIn2 = 32'd56; 
32'd271: dataIn2 = 32'd42; 
32'd272: dataIn2 = 32'd6; 
32'd273: dataIn2 = 32'd23; 
32'd274: dataIn2 = 32'd66; 
32'd275: dataIn2 = 32'd3; 
32'd276: dataIn2 = 32'd88; 
32'd277: dataIn2 = 32'd83; 
32'd278: dataIn2 = 32'd26; 
32'd279: dataIn2 = 32'd29; 
32'd280: dataIn2 = 32'd100; 
32'd281: dataIn2 = 32'd6; 
32'd282: dataIn2 = 32'd70; 
32'd283: dataIn2 = 32'd77; 
32'd284: dataIn2 = 32'd52; 
32'd285: dataIn2 = 32'd54; 
32'd286: dataIn2 = 32'd97; 
32'd287: dataIn2 = 32'd72; 
32'd288: dataIn2 = 32'd32; 
32'd289: dataIn2 = 32'd72; 
32'd290: dataIn2 = 32'd97; 
32'd291: dataIn2 = 32'd33; 
32'd292: dataIn2 = 32'd9; 
32'd293: dataIn2 = 32'd14; 
32'd294: dataIn2 = 32'd30; 
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
	$dumpfile("hht2_new_16_20.vcd");  
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
