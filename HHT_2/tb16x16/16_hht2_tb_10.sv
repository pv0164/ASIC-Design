//16x16 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 230 ; 
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
  wdata_col_base = 32'd3200 ; 
  row_base = 32'd34300 ; 
  csize = COL_SIZE; 
 fe_init = 1'b1; 
  RD = 1'b1; 
 #15; 
Rst = 1'b0; 
#15 Rst = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #4780; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd34300: dataIn1 = 32'd0
; 
32'd34301: dataIn1 = 32'd14
; 
32'd34302: dataIn1 = 32'd29
; 
32'd34303: dataIn1 = 32'd43
; 
32'd34304: dataIn1 = 32'd55
; 
32'd34305: dataIn1 = 32'd69
; 
32'd34306: dataIn1 = 32'd83
; 
32'd34307: dataIn1 = 32'd95
; 
32'd34308: dataIn1 = 32'd109
; 
32'd34309: dataIn1 = 32'd121
; 
32'd34310: dataIn1 = 32'd135
; 
32'd34311: dataIn1 = 32'd148
; 
32'd34312: dataIn1 = 32'd162
; 
32'd34313: dataIn1 = 32'd175
; 
32'd34314: dataIn1 = 32'd189
; 
32'd34315: dataIn1 = 32'd201
; 
32'd34316: dataIn1 = 32'd216
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
32'd3200: dataIn1 = 32'd0
; 
32'd3201: dataIn1 = 32'd14
; 
32'd3202: dataIn1 = 32'd29
; 
32'd3203: dataIn1 = 32'd43
; 
32'd3204: dataIn1 = 32'd55
; 
32'd3205: dataIn1 = 32'd69
; 
32'd3206: dataIn1 = 32'd83
; 
32'd3207: dataIn1 = 32'd95
; 
32'd3208: dataIn1 = 32'd109
; 
32'd3209: dataIn1 = 32'd121
; 
32'd3210: dataIn1 = 32'd135
; 
32'd3211: dataIn1 = 32'd148
; 
32'd3212: dataIn1 = 32'd162
; 
32'd3213: dataIn1 = 32'd175
; 
32'd3214: dataIn1 = 32'd189
; 
32'd3215: dataIn1 = 32'd201
; 
32'd3216: dataIn1 = 32'd216
; 
32'd3217: dataIn1 = 32'd0
; 
32'd3218: dataIn1 = 32'd1
; 
32'd3219: dataIn1 = 32'd2
; 
32'd3220: dataIn1 = 32'd3
; 
32'd3221: dataIn1 = 32'd5
; 
32'd3222: dataIn1 = 32'd6
; 
32'd3223: dataIn1 = 32'd7
; 
32'd3224: dataIn1 = 32'd8
; 
32'd3225: dataIn1 = 32'd9
; 
32'd3226: dataIn1 = 32'd10
; 
32'd3227: dataIn1 = 32'd11
; 
32'd3228: dataIn1 = 32'd13
; 
32'd3229: dataIn1 = 32'd14
; 
32'd3230: dataIn1 = 32'd15
; 
32'd3231: dataIn1 = 32'd0
; 
32'd3232: dataIn1 = 32'd1
; 
32'd3233: dataIn1 = 32'd2
; 
32'd3234: dataIn1 = 32'd3
; 
32'd3235: dataIn1 = 32'd4
; 
32'd3236: dataIn1 = 32'd5
; 
32'd3237: dataIn1 = 32'd6
; 
32'd3238: dataIn1 = 32'd7
; 
32'd3239: dataIn1 = 32'd8
; 
32'd3240: dataIn1 = 32'd9
; 
32'd3241: dataIn1 = 32'd10
; 
32'd3242: dataIn1 = 32'd12
; 
32'd3243: dataIn1 = 32'd13
; 
32'd3244: dataIn1 = 32'd14
; 
32'd3245: dataIn1 = 32'd15
; 
32'd3246: dataIn1 = 32'd0
; 
32'd3247: dataIn1 = 32'd1
; 
32'd3248: dataIn1 = 32'd2
; 
32'd3249: dataIn1 = 32'd3
; 
32'd3250: dataIn1 = 32'd4
; 
32'd3251: dataIn1 = 32'd5
; 
32'd3252: dataIn1 = 32'd6
; 
32'd3253: dataIn1 = 32'd7
; 
32'd3254: dataIn1 = 32'd8
; 
32'd3255: dataIn1 = 32'd11
; 
32'd3256: dataIn1 = 32'd12
; 
32'd3257: dataIn1 = 32'd13
; 
32'd3258: dataIn1 = 32'd14
; 
32'd3259: dataIn1 = 32'd15
; 
32'd3260: dataIn1 = 32'd0
; 
32'd3261: dataIn1 = 32'd1
; 
32'd3262: dataIn1 = 32'd2
; 
32'd3263: dataIn1 = 32'd4
; 
32'd3264: dataIn1 = 32'd6
; 
32'd3265: dataIn1 = 32'd7
; 
32'd3266: dataIn1 = 32'd8
; 
32'd3267: dataIn1 = 32'd9
; 
32'd3268: dataIn1 = 32'd11
; 
32'd3269: dataIn1 = 32'd12
; 
32'd3270: dataIn1 = 32'd13
; 
32'd3271: dataIn1 = 32'd15
; 
32'd3272: dataIn1 = 32'd1
; 
32'd3273: dataIn1 = 32'd2
; 
32'd3274: dataIn1 = 32'd3
; 
32'd3275: dataIn1 = 32'd4
; 
32'd3276: dataIn1 = 32'd5
; 
32'd3277: dataIn1 = 32'd6
; 
32'd3278: dataIn1 = 32'd7
; 
32'd3279: dataIn1 = 32'd8
; 
32'd3280: dataIn1 = 32'd9
; 
32'd3281: dataIn1 = 32'd10
; 
32'd3282: dataIn1 = 32'd11
; 
32'd3283: dataIn1 = 32'd13
; 
32'd3284: dataIn1 = 32'd14
; 
32'd3285: dataIn1 = 32'd15
; 
32'd3286: dataIn1 = 32'd0
; 
32'd3287: dataIn1 = 32'd1
; 
32'd3288: dataIn1 = 32'd2
; 
32'd3289: dataIn1 = 32'd3
; 
32'd3290: dataIn1 = 32'd5
; 
32'd3291: dataIn1 = 32'd6
; 
32'd3292: dataIn1 = 32'd7
; 
32'd3293: dataIn1 = 32'd8
; 
32'd3294: dataIn1 = 32'd9
; 
32'd3295: dataIn1 = 32'd10
; 
32'd3296: dataIn1 = 32'd11
; 
32'd3297: dataIn1 = 32'd12
; 
32'd3298: dataIn1 = 32'd14
; 
32'd3299: dataIn1 = 32'd15
; 
32'd3300: dataIn1 = 32'd0
; 
32'd3301: dataIn1 = 32'd1
; 
32'd3302: dataIn1 = 32'd3
; 
32'd3303: dataIn1 = 32'd4
; 
32'd3304: dataIn1 = 32'd5
; 
32'd3305: dataIn1 = 32'd6
; 
32'd3306: dataIn1 = 32'd8
; 
32'd3307: dataIn1 = 32'd11
; 
32'd3308: dataIn1 = 32'd12
; 
32'd3309: dataIn1 = 32'd13
; 
32'd3310: dataIn1 = 32'd14
; 
32'd3311: dataIn1 = 32'd15
; 
32'd3312: dataIn1 = 32'd0
; 
32'd3313: dataIn1 = 32'd2
; 
32'd3314: dataIn1 = 32'd3
; 
32'd3315: dataIn1 = 32'd5
; 
32'd3316: dataIn1 = 32'd6
; 
32'd3317: dataIn1 = 32'd7
; 
32'd3318: dataIn1 = 32'd8
; 
32'd3319: dataIn1 = 32'd9
; 
32'd3320: dataIn1 = 32'd10
; 
32'd3321: dataIn1 = 32'd11
; 
32'd3322: dataIn1 = 32'd12
; 
32'd3323: dataIn1 = 32'd13
; 
32'd3324: dataIn1 = 32'd14
; 
32'd3325: dataIn1 = 32'd15
; 
32'd3326: dataIn1 = 32'd0
; 
32'd3327: dataIn1 = 32'd2
; 
32'd3328: dataIn1 = 32'd3
; 
32'd3329: dataIn1 = 32'd4
; 
32'd3330: dataIn1 = 32'd6
; 
32'd3331: dataIn1 = 32'd8
; 
32'd3332: dataIn1 = 32'd9
; 
32'd3333: dataIn1 = 32'd10
; 
32'd3334: dataIn1 = 32'd11
; 
32'd3335: dataIn1 = 32'd12
; 
32'd3336: dataIn1 = 32'd13
; 
32'd3337: dataIn1 = 32'd14
; 
32'd3338: dataIn1 = 32'd0
; 
32'd3339: dataIn1 = 32'd1
; 
32'd3340: dataIn1 = 32'd2
; 
32'd3341: dataIn1 = 32'd3
; 
32'd3342: dataIn1 = 32'd4
; 
32'd3343: dataIn1 = 32'd5
; 
32'd3344: dataIn1 = 32'd6
; 
32'd3345: dataIn1 = 32'd7
; 
32'd3346: dataIn1 = 32'd9
; 
32'd3347: dataIn1 = 32'd10
; 
32'd3348: dataIn1 = 32'd11
; 
32'd3349: dataIn1 = 32'd12
; 
32'd3350: dataIn1 = 32'd14
; 
32'd3351: dataIn1 = 32'd15
; 
32'd3352: dataIn1 = 32'd1
; 
32'd3353: dataIn1 = 32'd2
; 
32'd3354: dataIn1 = 32'd3
; 
32'd3355: dataIn1 = 32'd4
; 
32'd3356: dataIn1 = 32'd5
; 
32'd3357: dataIn1 = 32'd7
; 
32'd3358: dataIn1 = 32'd8
; 
32'd3359: dataIn1 = 32'd10
; 
32'd3360: dataIn1 = 32'd11
; 
32'd3361: dataIn1 = 32'd12
; 
32'd3362: dataIn1 = 32'd13
; 
32'd3363: dataIn1 = 32'd14
; 
32'd3364: dataIn1 = 32'd15
; 
32'd3365: dataIn1 = 32'd0
; 
32'd3366: dataIn1 = 32'd2
; 
32'd3367: dataIn1 = 32'd3
; 
32'd3368: dataIn1 = 32'd4
; 
32'd3369: dataIn1 = 32'd5
; 
32'd3370: dataIn1 = 32'd6
; 
32'd3371: dataIn1 = 32'd7
; 
32'd3372: dataIn1 = 32'd8
; 
32'd3373: dataIn1 = 32'd9
; 
32'd3374: dataIn1 = 32'd11
; 
32'd3375: dataIn1 = 32'd12
; 
32'd3376: dataIn1 = 32'd13
; 
32'd3377: dataIn1 = 32'd14
; 
32'd3378: dataIn1 = 32'd15
; 
32'd3379: dataIn1 = 32'd0
; 
32'd3380: dataIn1 = 32'd1
; 
32'd3381: dataIn1 = 32'd2
; 
32'd3382: dataIn1 = 32'd3
; 
32'd3383: dataIn1 = 32'd4
; 
32'd3384: dataIn1 = 32'd5
; 
32'd3385: dataIn1 = 32'd7
; 
32'd3386: dataIn1 = 32'd8
; 
32'd3387: dataIn1 = 32'd9
; 
32'd3388: dataIn1 = 32'd10
; 
32'd3389: dataIn1 = 32'd12
; 
32'd3390: dataIn1 = 32'd13
; 
32'd3391: dataIn1 = 32'd14
; 
32'd3392: dataIn1 = 32'd0
; 
32'd3393: dataIn1 = 32'd1
; 
32'd3394: dataIn1 = 32'd2
; 
32'd3395: dataIn1 = 32'd3
; 
32'd3396: dataIn1 = 32'd4
; 
32'd3397: dataIn1 = 32'd6
; 
32'd3398: dataIn1 = 32'd7
; 
32'd3399: dataIn1 = 32'd8
; 
32'd3400: dataIn1 = 32'd9
; 
32'd3401: dataIn1 = 32'd10
; 
32'd3402: dataIn1 = 32'd11
; 
32'd3403: dataIn1 = 32'd12
; 
32'd3404: dataIn1 = 32'd13
; 
32'd3405: dataIn1 = 32'd15
; 
32'd3406: dataIn1 = 32'd0
; 
32'd3407: dataIn1 = 32'd1
; 
32'd3408: dataIn1 = 32'd2
; 
32'd3409: dataIn1 = 32'd3
; 
32'd3410: dataIn1 = 32'd4
; 
32'd3411: dataIn1 = 32'd5
; 
32'd3412: dataIn1 = 32'd6
; 
32'd3413: dataIn1 = 32'd7
; 
32'd3414: dataIn1 = 32'd10
; 
32'd3415: dataIn1 = 32'd11
; 
32'd3416: dataIn1 = 32'd14
; 
32'd3417: dataIn1 = 32'd15
; 
32'd3418: dataIn1 = 32'd0
; 
32'd3419: dataIn1 = 32'd1
; 
32'd3420: dataIn1 = 32'd2
; 
32'd3421: dataIn1 = 32'd3
; 
32'd3422: dataIn1 = 32'd4
; 
32'd3423: dataIn1 = 32'd6
; 
32'd3424: dataIn1 = 32'd7
; 
32'd3425: dataIn1 = 32'd8
; 
32'd3426: dataIn1 = 32'd9
; 
32'd3427: dataIn1 = 32'd10
; 
32'd3428: dataIn1 = 32'd11
; 
32'd3429: dataIn1 = 32'd12
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd61; 
32'd3: dataIn2 = 32'd44; 
32'd4: dataIn2 = 32'd48; 
32'd5: dataIn2 = 32'd91; 
32'd6: dataIn2 = 32'd82; 
32'd7: dataIn2 = 32'd74; 
32'd8: dataIn2 = 32'd67; 
32'd9: dataIn2 = 32'd45; 
32'd10: dataIn2 = 32'd82; 
32'd11: dataIn2 = 32'd53; 
32'd12: dataIn2 = 32'd7; 
32'd13: dataIn2 = 32'd38; 
32'd14: dataIn2 = 32'd19; 
32'd15: dataIn2 = 32'd67; 
32'd16: dataIn2 = 32'd69; 
32'd17: dataIn2 = 32'd83; 
default: 
	dataIn2 = 32'd99999; 
endcase 
32'd90: dataIn2 = 32'd40; 
32'd91: dataIn2 = 32'd79; 
32'd92: dataIn2 = 32'd83; 
32'd93: dataIn2 = 32'd59; 
32'd94: dataIn2 = 32'd9; 
32'd95: dataIn2 = 32'd14; 
32'd96: dataIn2 = 32'd62; 
32'd97: dataIn2 = 32'd44; 
32'd98: dataIn2 = 32'd54; 
32'd99: dataIn2 = 32'd39; 
32'd100: dataIn2 = 32'd28; 
32'd101: dataIn2 = 32'd29; 
32'd102: dataIn2 = 32'd13; 
32'd103: dataIn2 = 32'd62; 
32'd104: dataIn2 = 32'd56; 
32'd105: dataIn2 = 32'd91; 
32'd106: dataIn2 = 32'd55; 
32'd107: dataIn2 = 32'd25; 
32'd108: dataIn2 = 32'd86; 
32'd109: dataIn2 = 32'd78; 
32'd110: dataIn2 = 32'd38; 
32'd111: dataIn2 = 32'd93; 
32'd112: dataIn2 = 32'd5; 
32'd113: dataIn2 = 32'd18; 
32'd114: dataIn2 = 32'd37; 
32'd115: dataIn2 = 32'd45; 
32'd116: dataIn2 = 32'd9; 
32'd117: dataIn2 = 32'd43; 
32'd118: dataIn2 = 32'd84; 
32'd119: dataIn2 = 32'd18; 
32'd120: dataIn2 = 32'd67; 
32'd121: dataIn2 = 32'd17; 
32'd122: dataIn2 = 32'd20; 
32'd123: dataIn2 = 32'd71; 
32'd124: dataIn2 = 32'd39; 
32'd125: dataIn2 = 32'd71; 
32'd126: dataIn2 = 32'd31; 
32'd127: dataIn2 = 32'd79; 
32'd128: dataIn2 = 32'd79; 
32'd129: dataIn2 = 32'd95; 
32'd130: dataIn2 = 32'd19; 
32'd131: dataIn2 = 32'd88; 
32'd132: dataIn2 = 32'd19; 
32'd133: dataIn2 = 32'd57; 
32'd134: dataIn2 = 32'd43; 
32'd135: dataIn2 = 32'd70; 
32'd136: dataIn2 = 32'd92; 
32'd137: dataIn2 = 32'd81; 
32'd138: dataIn2 = 32'd86; 
32'd139: dataIn2 = 32'd21; 
32'd140: dataIn2 = 32'd46; 
32'd141: dataIn2 = 32'd43; 
32'd142: dataIn2 = 32'd78; 
32'd143: dataIn2 = 32'd53; 
32'd144: dataIn2 = 32'd54; 
32'd145: dataIn2 = 32'd28; 
32'd146: dataIn2 = 32'd70; 
32'd147: dataIn2 = 32'd80; 
32'd148: dataIn2 = 32'd2; 
32'd149: dataIn2 = 32'd97; 
32'd150: dataIn2 = 32'd5; 
32'd151: dataIn2 = 32'd88; 
32'd152: dataIn2 = 32'd6; 
32'd153: dataIn2 = 32'd21; 
32'd154: dataIn2 = 32'd50; 
32'd155: dataIn2 = 32'd83; 
32'd156: dataIn2 = 32'd45; 
32'd157: dataIn2 = 32'd84; 
32'd158: dataIn2 = 32'd84; 
32'd159: dataIn2 = 32'd2; 
32'd160: dataIn2 = 32'd63; 
32'd161: dataIn2 = 32'd73; 
32'd162: dataIn2 = 32'd73; 
32'd163: dataIn2 = 32'd24; 
32'd164: dataIn2 = 32'd16; 
32'd165: dataIn2 = 32'd41; 
32'd166: dataIn2 = 32'd58; 
32'd167: dataIn2 = 32'd22; 
32'd168: dataIn2 = 32'd73; 
32'd169: dataIn2 = 32'd41; 
32'd170: dataIn2 = 32'd83; 
32'd171: dataIn2 = 32'd65; 
32'd172: dataIn2 = 32'd100; 
32'd173: dataIn2 = 32'd1; 
32'd174: dataIn2 = 32'd16; 
32'd175: dataIn2 = 32'd87; 
32'd176: dataIn2 = 32'd100; 
32'd177: dataIn2 = 32'd42; 
32'd178: dataIn2 = 32'd30; 
32'd179: dataIn2 = 32'd24; 
32'd180: dataIn2 = 32'd49; 
32'd181: dataIn2 = 32'd64; 
32'd182: dataIn2 = 32'd87; 
32'd183: dataIn2 = 32'd78; 
32'd184: dataIn2 = 32'd25; 
32'd185: dataIn2 = 32'd14; 
32'd186: dataIn2 = 32'd76; 
32'd187: dataIn2 = 32'd96; 
32'd188: dataIn2 = 32'd28; 
32'd189: dataIn2 = 32'd36; 
32'd190: dataIn2 = 32'd87; 
32'd191: dataIn2 = 32'd46; 
32'd192: dataIn2 = 32'd16; 
32'd193: dataIn2 = 32'd37; 
32'd194: dataIn2 = 32'd51; 
32'd195: dataIn2 = 32'd91; 
32'd196: dataIn2 = 32'd36; 
32'd197: dataIn2 = 32'd33; 
32'd198: dataIn2 = 32'd96; 
32'd199: dataIn2 = 32'd37; 
32'd200: dataIn2 = 32'd90; 
32'd201: dataIn2 = 32'd82; 
32'd202: dataIn2 = 32'd64; 
32'd203: dataIn2 = 32'd9; 
32'd204: dataIn2 = 32'd2; 
32'd205: dataIn2 = 32'd62; 
32'd206: dataIn2 = 32'd77; 
32'd207: dataIn2 = 32'd46; 
32'd208: dataIn2 = 32'd29; 
32'd209: dataIn2 = 32'd94; 
32'd210: dataIn2 = 32'd74; 
32'd211: dataIn2 = 32'd43; 
32'd212: dataIn2 = 32'd84; 
32'd213: dataIn2 = 32'd35; 
32'd214: dataIn2 = 32'd86; 
32'd215: dataIn2 = 32'd73; 
32'd216: dataIn2 = 32'd76; 
32'd217: dataIn2 = 32'd62; 
32'd218: dataIn2 = 32'd0; 
32'd219: dataIn2 = 32'd21; 
32'd220: dataIn2 = 32'd24; 
32'd221: dataIn2 = 32'd32; 
32'd222: dataIn2 = 32'd70; 
32'd223: dataIn2 = 32'd77; 
32'd224: dataIn2 = 32'd61; 
32'd225: dataIn2 = 32'd96; 
32'd226: dataIn2 = 32'd69; 
32'd227: dataIn2 = 32'd40; 
32'd228: dataIn2 = 32'd37; 
32'd229: dataIn2 = 32'd77; 
32'd230: dataIn2 = 32'd40; 
32'd231: dataIn2 = 32'd23; 
32'd232: dataIn2 = 32'd42; 
32'd233: dataIn2 = 32'd74; 
32'd234: dataIn2 = 32'd62; 
32'd235: dataIn2 = 32'd68; 
32'd236: dataIn2 = 32'd36; 
32'd237: dataIn2 = 32'd51; 
32'd238: dataIn2 = 32'd87; 
32'd239: dataIn2 = 32'd47; 
32'd240: dataIn2 = 32'd30; 
32'd241: dataIn2 = 32'd47; 
32'd242: dataIn2 = 32'd51; 
32'd243: dataIn2 = 32'd32; 
32'd244: dataIn2 = 32'd37; 
32'd245: dataIn2 = 32'd42; 
32'd246: dataIn2 = 32'd0; 
32'd247: dataIn2 = 32'd42; 
32'd248: dataIn2 = 32'd37; 
32'd249: dataIn2 = 32'd75; 
32'd250: dataIn2 = 32'd51; 
32'd251: dataIn2 = 32'd9; 
32'd252: dataIn2 = 32'd3; 
32'd253: dataIn2 = 32'd63; 
32'd254: dataIn2 = 32'd30; 
32'd255: dataIn2 = 32'd40; 
32'd256: dataIn2 = 32'd82; 
32'd257: dataIn2 = 32'd4; 
32'd258: dataIn2 = 32'd14; 
32'd259: dataIn2 = 32'd25; 
32'd260: dataIn2 = 32'd89; 
32'd261: dataIn2 = 32'd4; 
32'd262: dataIn2 = 32'd36; 
32'd263: dataIn2 = 32'd19; 
32'd264: dataIn2 = 32'd91; 
32'd265: dataIn2 = 32'd64; 
32'd266: dataIn2 = 32'd80; 
32'd267: dataIn2 = 32'd56; 
32'd268: dataIn2 = 32'd41; 
32'd269: dataIn2 = 32'd40; 
32'd270: dataIn2 = 32'd16; 
32'd271: dataIn2 = 32'd8; 
32'd272: dataIn2 = 32'd90; 
32'd273: dataIn2 = 32'd68; 
32'd274: dataIn2 = 32'd62; 
32'd275: dataIn2 = 32'd89; 
32'd276: dataIn2 = 32'd68; 
32'd277: dataIn2 = 32'd54; 
32'd278: dataIn2 = 32'd39; 
32'd279: dataIn2 = 32'd39; 
32'd280: dataIn2 = 32'd87; 
32'd281: dataIn2 = 32'd70; 
32'd282: dataIn2 = 32'd10; 
32'd283: dataIn2 = 32'd79; 
32'd284: dataIn2 = 32'd85; 
32'd285: dataIn2 = 32'd19; 
32'd286: dataIn2 = 32'd55; 
32'd287: dataIn2 = 32'd8; 
32'd288: dataIn2 = 32'd49; 
32'd289: dataIn2 = 32'd11; 
32'd290: dataIn2 = 32'd21; 
32'd291: dataIn2 = 32'd11; 
32'd292: dataIn2 = 32'd62; 
32'd293: dataIn2 = 32'd50; 
32'd294: dataIn2 = 32'd72; 
32'd295: dataIn2 = 32'd86; 
32'd296: dataIn2 = 32'd59; 
32'd297: dataIn2 = 32'd52; 
32'd298: dataIn2 = 32'd39; 
32'd299: dataIn2 = 32'd44; 
32'd300: dataIn2 = 32'd98; 
32'd301: dataIn2 = 32'd26; 
32'd302: dataIn2 = 32'd48; 
32'd303: dataIn2 = 32'd93; 
32'd304: dataIn2 = 32'd27; 
32'd305: dataIn2 = 32'd10; 
32'd306: dataIn2 = 32'd28; 
32'd307: dataIn2 = 32'd56; 
32'd308: dataIn2 = 32'd85; 
32'd309: dataIn2 = 32'd24; 
32'd310: dataIn2 = 32'd45; 
32'd311: dataIn2 = 32'd31; 
32'd312: dataIn2 = 32'd6; 
32'd313: dataIn2 = 32'd96; 
32'd314: dataIn2 = 32'd94; 
32'd315: dataIn2 = 32'd33; 
32'd316: dataIn2 = 32'd65; 
32'd317: dataIn2 = 32'd46; 
32'd318: dataIn2 = 32'd30; 
32'd319: dataIn2 = 32'd48; 
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
	$dumpfile("hht2_16_10.vcd");  
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
