//32x32 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 205 ; 
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
  matrix_base = 32'd170 ; 
  wdata_col_base = 32'd3750 ; 
  row_base = 32'd39550 ; 
  csize = COL_SIZE; 
 fe_init = 1'b1; 
  RD = 1'b1; 
 #15; 
Rst = 1'b0; 
#15 Rst = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #4280; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd39550: dataIn1 = 32'd0
; 
32'd39551: dataIn1 = 32'd3
; 
32'd39552: dataIn1 = 32'd10
; 
32'd39553: dataIn1 = 32'd13
; 
32'd39554: dataIn1 = 32'd15
; 
32'd39555: dataIn1 = 32'd21
; 
32'd39556: dataIn1 = 32'd27
; 
32'd39557: dataIn1 = 32'd35
; 
32'd39558: dataIn1 = 32'd41
; 
32'd39559: dataIn1 = 32'd46
; 
32'd39560: dataIn1 = 32'd54
; 
32'd39561: dataIn1 = 32'd59
; 
32'd39562: dataIn1 = 32'd66
; 
32'd39563: dataIn1 = 32'd75
; 
32'd39564: dataIn1 = 32'd80
; 
32'd39565: dataIn1 = 32'd85
; 
32'd39566: dataIn1 = 32'd89
; 
32'd39567: dataIn1 = 32'd99
; 
32'd39568: dataIn1 = 32'd105
; 
32'd39569: dataIn1 = 32'd113
; 
32'd39570: dataIn1 = 32'd120
; 
32'd39571: dataIn1 = 32'd125
; 
32'd39572: dataIn1 = 32'd129
; 
32'd39573: dataIn1 = 32'd132
; 
32'd39574: dataIn1 = 32'd141
; 
32'd39575: dataIn1 = 32'd147
; 
32'd39576: dataIn1 = 32'd160
; 
32'd39577: dataIn1 = 32'd164
; 
32'd39578: dataIn1 = 32'd171
; 
32'd39579: dataIn1 = 32'd178
; 
32'd39580: dataIn1 = 32'd189
; 
32'd39581: dataIn1 = 32'd191
; 
32'd39582: dataIn1 = 32'd199
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
32'd3750: dataIn1 = 32'd0
; 
32'd3751: dataIn1 = 32'd3
; 
32'd3752: dataIn1 = 32'd10
; 
32'd3753: dataIn1 = 32'd13
; 
32'd3754: dataIn1 = 32'd15
; 
32'd3755: dataIn1 = 32'd21
; 
32'd3756: dataIn1 = 32'd27
; 
32'd3757: dataIn1 = 32'd35
; 
32'd3758: dataIn1 = 32'd41
; 
32'd3759: dataIn1 = 32'd46
; 
32'd3760: dataIn1 = 32'd54
; 
32'd3761: dataIn1 = 32'd59
; 
32'd3762: dataIn1 = 32'd66
; 
32'd3763: dataIn1 = 32'd75
; 
32'd3764: dataIn1 = 32'd80
; 
32'd3765: dataIn1 = 32'd85
; 
32'd3766: dataIn1 = 32'd89
; 
32'd3767: dataIn1 = 32'd99
; 
32'd3768: dataIn1 = 32'd105
; 
32'd3769: dataIn1 = 32'd113
; 
32'd3770: dataIn1 = 32'd120
; 
32'd3771: dataIn1 = 32'd125
; 
32'd3772: dataIn1 = 32'd129
; 
32'd3773: dataIn1 = 32'd132
; 
32'd3774: dataIn1 = 32'd141
; 
32'd3775: dataIn1 = 32'd147
; 
32'd3776: dataIn1 = 32'd160
; 
32'd3777: dataIn1 = 32'd164
; 
32'd3778: dataIn1 = 32'd171
; 
32'd3779: dataIn1 = 32'd178
; 
32'd3780: dataIn1 = 32'd189
; 
32'd3781: dataIn1 = 32'd191
; 
32'd3782: dataIn1 = 32'd199
; 
32'd3783: dataIn1 = 32'd7
; 
32'd3784: dataIn1 = 32'd9
; 
32'd3785: dataIn1 = 32'd29
; 
32'd3786: dataIn1 = 32'd2
; 
32'd3787: dataIn1 = 32'd6
; 
32'd3788: dataIn1 = 32'd10
; 
32'd3789: dataIn1 = 32'd22
; 
32'd3790: dataIn1 = 32'd28
; 
32'd3791: dataIn1 = 32'd29
; 
32'd3792: dataIn1 = 32'd30
; 
32'd3793: dataIn1 = 32'd6
; 
32'd3794: dataIn1 = 32'd19
; 
32'd3795: dataIn1 = 32'd28
; 
32'd3796: dataIn1 = 32'd6
; 
32'd3797: dataIn1 = 32'd13
; 
32'd3798: dataIn1 = 32'd1
; 
32'd3799: dataIn1 = 32'd11
; 
32'd3800: dataIn1 = 32'd12
; 
32'd3801: dataIn1 = 32'd13
; 
32'd3802: dataIn1 = 32'd20
; 
32'd3803: dataIn1 = 32'd30
; 
32'd3804: dataIn1 = 32'd9
; 
32'd3805: dataIn1 = 32'd13
; 
32'd3806: dataIn1 = 32'd15
; 
32'd3807: dataIn1 = 32'd19
; 
32'd3808: dataIn1 = 32'd23
; 
32'd3809: dataIn1 = 32'd29
; 
32'd3810: dataIn1 = 32'd0
; 
32'd3811: dataIn1 = 32'd5
; 
32'd3812: dataIn1 = 32'd16
; 
32'd3813: dataIn1 = 32'd19
; 
32'd3814: dataIn1 = 32'd20
; 
32'd3815: dataIn1 = 32'd28
; 
32'd3816: dataIn1 = 32'd29
; 
32'd3817: dataIn1 = 32'd31
; 
32'd3818: dataIn1 = 32'd0
; 
32'd3819: dataIn1 = 32'd6
; 
32'd3820: dataIn1 = 32'd7
; 
32'd3821: dataIn1 = 32'd22
; 
32'd3822: dataIn1 = 32'd25
; 
32'd3823: dataIn1 = 32'd30
; 
32'd3824: dataIn1 = 32'd3
; 
32'd3825: dataIn1 = 32'd18
; 
32'd3826: dataIn1 = 32'd19
; 
32'd3827: dataIn1 = 32'd26
; 
32'd3828: dataIn1 = 32'd31
; 
32'd3829: dataIn1 = 32'd1
; 
32'd3830: dataIn1 = 32'd3
; 
32'd3831: dataIn1 = 32'd6
; 
32'd3832: dataIn1 = 32'd10
; 
32'd3833: dataIn1 = 32'd11
; 
32'd3834: dataIn1 = 32'd13
; 
32'd3835: dataIn1 = 32'd19
; 
32'd3836: dataIn1 = 32'd27
; 
32'd3837: dataIn1 = 32'd7
; 
32'd3838: dataIn1 = 32'd8
; 
32'd3839: dataIn1 = 32'd21
; 
32'd3840: dataIn1 = 32'd22
; 
32'd3841: dataIn1 = 32'd31
; 
32'd3842: dataIn1 = 32'd1
; 
32'd3843: dataIn1 = 32'd3
; 
32'd3844: dataIn1 = 32'd10
; 
32'd3845: dataIn1 = 32'd15
; 
32'd3846: dataIn1 = 32'd16
; 
32'd3847: dataIn1 = 32'd20
; 
32'd3848: dataIn1 = 32'd29
; 
32'd3849: dataIn1 = 32'd2
; 
32'd3850: dataIn1 = 32'd7
; 
32'd3851: dataIn1 = 32'd10
; 
32'd3852: dataIn1 = 32'd14
; 
32'd3853: dataIn1 = 32'd17
; 
32'd3854: dataIn1 = 32'd21
; 
32'd3855: dataIn1 = 32'd24
; 
32'd3856: dataIn1 = 32'd26
; 
32'd3857: dataIn1 = 32'd29
; 
32'd3858: dataIn1 = 32'd0
; 
32'd3859: dataIn1 = 32'd11
; 
32'd3860: dataIn1 = 32'd13
; 
32'd3861: dataIn1 = 32'd28
; 
32'd3862: dataIn1 = 32'd31
; 
32'd3863: dataIn1 = 32'd3
; 
32'd3864: dataIn1 = 32'd6
; 
32'd3865: dataIn1 = 32'd7
; 
32'd3866: dataIn1 = 32'd16
; 
32'd3867: dataIn1 = 32'd29
; 
32'd3868: dataIn1 = 32'd3
; 
32'd3869: dataIn1 = 32'd4
; 
32'd3870: dataIn1 = 32'd20
; 
32'd3871: dataIn1 = 32'd24
; 
32'd3872: dataIn1 = 32'd5
; 
32'd3873: dataIn1 = 32'd8
; 
32'd3874: dataIn1 = 32'd14
; 
32'd3875: dataIn1 = 32'd15
; 
32'd3876: dataIn1 = 32'd19
; 
32'd3877: dataIn1 = 32'd22
; 
32'd3878: dataIn1 = 32'd23
; 
32'd3879: dataIn1 = 32'd26
; 
32'd3880: dataIn1 = 32'd28
; 
32'd3881: dataIn1 = 32'd29
; 
32'd3882: dataIn1 = 32'd0
; 
32'd3883: dataIn1 = 32'd6
; 
32'd3884: dataIn1 = 32'd21
; 
32'd3885: dataIn1 = 32'd23
; 
32'd3886: dataIn1 = 32'd24
; 
32'd3887: dataIn1 = 32'd28
; 
32'd3888: dataIn1 = 32'd2
; 
32'd3889: dataIn1 = 32'd6
; 
32'd3890: dataIn1 = 32'd7
; 
32'd3891: dataIn1 = 32'd8
; 
32'd3892: dataIn1 = 32'd9
; 
32'd3893: dataIn1 = 32'd11
; 
32'd3894: dataIn1 = 32'd30
; 
32'd3895: dataIn1 = 32'd31
; 
32'd3896: dataIn1 = 32'd1
; 
32'd3897: dataIn1 = 32'd2
; 
32'd3898: dataIn1 = 32'd9
; 
32'd3899: dataIn1 = 32'd13
; 
32'd3900: dataIn1 = 32'd15
; 
32'd3901: dataIn1 = 32'd22
; 
32'd3902: dataIn1 = 32'd23
; 
32'd3903: dataIn1 = 32'd7
; 
32'd3904: dataIn1 = 32'd15
; 
32'd3905: dataIn1 = 32'd18
; 
32'd3906: dataIn1 = 32'd21
; 
32'd3907: dataIn1 = 32'd28
; 
32'd3908: dataIn1 = 32'd3
; 
32'd3909: dataIn1 = 32'd5
; 
32'd3910: dataIn1 = 32'd12
; 
32'd3911: dataIn1 = 32'd20
; 
32'd3912: dataIn1 = 32'd6
; 
32'd3913: dataIn1 = 32'd21
; 
32'd3914: dataIn1 = 32'd30
; 
32'd3915: dataIn1 = 32'd1
; 
32'd3916: dataIn1 = 32'd9
; 
32'd3917: dataIn1 = 32'd13
; 
32'd3918: dataIn1 = 32'd14
; 
32'd3919: dataIn1 = 32'd18
; 
32'd3920: dataIn1 = 32'd20
; 
32'd3921: dataIn1 = 32'd23
; 
32'd3922: dataIn1 = 32'd24
; 
32'd3923: dataIn1 = 32'd25
; 
32'd3924: dataIn1 = 32'd4
; 
32'd3925: dataIn1 = 32'd6
; 
32'd3926: dataIn1 = 32'd12
; 
32'd3927: dataIn1 = 32'd13
; 
32'd3928: dataIn1 = 32'd26
; 
32'd3929: dataIn1 = 32'd29
; 
32'd3930: dataIn1 = 32'd0
; 
32'd3931: dataIn1 = 32'd3
; 
32'd3932: dataIn1 = 32'd4
; 
32'd3933: dataIn1 = 32'd9
; 
32'd3934: dataIn1 = 32'd12
; 
32'd3935: dataIn1 = 32'd14
; 
32'd3936: dataIn1 = 32'd15
; 
32'd3937: dataIn1 = 32'd16
; 
32'd3938: dataIn1 = 32'd17
; 
32'd3939: dataIn1 = 32'd18
; 
32'd3940: dataIn1 = 32'd22
; 
32'd3941: dataIn1 = 32'd23
; 
32'd3942: dataIn1 = 32'd25
; 
32'd3943: dataIn1 = 32'd3
; 
32'd3944: dataIn1 = 32'd17
; 
32'd3945: dataIn1 = 32'd18
; 
32'd3946: dataIn1 = 32'd25
; 
32'd3947: dataIn1 = 32'd4
; 
32'd3948: dataIn1 = 32'd9
; 
32'd3949: dataIn1 = 32'd19
; 
32'd3950: dataIn1 = 32'd20
; 
32'd3951: dataIn1 = 32'd21
; 
32'd3952: dataIn1 = 32'd22
; 
32'd3953: dataIn1 = 32'd24
; 
32'd3954: dataIn1 = 32'd5
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd14; 
32'd3: dataIn2 = 32'd33; 
32'd4: dataIn2 = 32'd77; 
32'd5: dataIn2 = 32'd74; 
32'd6: dataIn2 = 32'd29; 
32'd7: dataIn2 = 32'd94; 
32'd8: dataIn2 = 32'd62; 
32'd9: dataIn2 = 32'd24; 
32'd10: dataIn2 = 32'd87; 
32'd11: dataIn2 = 32'd73; 
32'd12: dataIn2 = 32'd53; 
32'd13: dataIn2 = 32'd35; 
32'd14: dataIn2 = 32'd91; 
32'd15: dataIn2 = 32'd74; 
32'd16: dataIn2 = 32'd72; 
32'd17: dataIn2 = 32'd74; 
32'd18: dataIn2 = 32'd81; 
32'd19: dataIn2 = 32'd57; 
32'd20: dataIn2 = 32'd42; 
32'd21: dataIn2 = 32'd1; 
32'd22: dataIn2 = 32'd92; 
32'd23: dataIn2 = 32'd64; 
32'd24: dataIn2 = 32'd33; 
32'd25: dataIn2 = 32'd51; 
32'd26: dataIn2 = 32'd44; 
32'd27: dataIn2 = 32'd1; 
32'd28: dataIn2 = 32'd81; 
32'd29: dataIn2 = 32'd17; 
32'd30: dataIn2 = 32'd38; 
32'd31: dataIn2 = 32'd50; 
32'd32: dataIn2 = 32'd65; 
32'd33: dataIn2 = 32'd2; 
default: 
	dataIn2 = 32'd99999; 
endcase 
32'd170: dataIn2 = 32'd25; 
32'd171: dataIn2 = 32'd94; 
32'd172: dataIn2 = 32'd78; 
32'd173: dataIn2 = 32'd56; 
32'd174: dataIn2 = 32'd42; 
32'd175: dataIn2 = 32'd47; 
32'd176: dataIn2 = 32'd57; 
32'd177: dataIn2 = 32'd31; 
32'd178: dataIn2 = 32'd60; 
32'd179: dataIn2 = 32'd11; 
32'd180: dataIn2 = 32'd2; 
32'd181: dataIn2 = 32'd6; 
32'd182: dataIn2 = 32'd19; 
32'd183: dataIn2 = 32'd17; 
32'd184: dataIn2 = 32'd89; 
32'd185: dataIn2 = 32'd60; 
32'd186: dataIn2 = 32'd88; 
32'd187: dataIn2 = 32'd97; 
32'd188: dataIn2 = 32'd48; 
32'd189: dataIn2 = 32'd2; 
32'd190: dataIn2 = 32'd30; 
32'd191: dataIn2 = 32'd41; 
32'd192: dataIn2 = 32'd35; 
32'd193: dataIn2 = 32'd50; 
32'd194: dataIn2 = 32'd99; 
32'd195: dataIn2 = 32'd72; 
32'd196: dataIn2 = 32'd97; 
32'd197: dataIn2 = 32'd65; 
32'd198: dataIn2 = 32'd29; 
32'd199: dataIn2 = 32'd81; 
32'd200: dataIn2 = 32'd79; 
32'd201: dataIn2 = 32'd43; 
32'd202: dataIn2 = 32'd29; 
32'd203: dataIn2 = 32'd5; 
32'd204: dataIn2 = 32'd69; 
32'd205: dataIn2 = 32'd75; 
32'd206: dataIn2 = 32'd40; 
32'd207: dataIn2 = 32'd30; 
32'd208: dataIn2 = 32'd54; 
32'd209: dataIn2 = 32'd99; 
32'd210: dataIn2 = 32'd11; 
32'd211: dataIn2 = 32'd48; 
32'd212: dataIn2 = 32'd74; 
32'd213: dataIn2 = 32'd23; 
32'd214: dataIn2 = 32'd20; 
32'd215: dataIn2 = 32'd41; 
32'd216: dataIn2 = 32'd48; 
32'd217: dataIn2 = 32'd94; 
32'd218: dataIn2 = 32'd44; 
32'd219: dataIn2 = 32'd98; 
32'd220: dataIn2 = 32'd91; 
32'd221: dataIn2 = 32'd45; 
32'd222: dataIn2 = 32'd11; 
32'd223: dataIn2 = 32'd14; 
32'd224: dataIn2 = 32'd19; 
32'd225: dataIn2 = 32'd61; 
32'd226: dataIn2 = 32'd90; 
32'd227: dataIn2 = 32'd14; 
32'd228: dataIn2 = 32'd100; 
32'd229: dataIn2 = 32'd56; 
32'd230: dataIn2 = 32'd6; 
32'd231: dataIn2 = 32'd33; 
32'd232: dataIn2 = 32'd79; 
32'd233: dataIn2 = 32'd24; 
32'd234: dataIn2 = 32'd76; 
32'd235: dataIn2 = 32'd58; 
32'd236: dataIn2 = 32'd86; 
32'd237: dataIn2 = 32'd60; 
32'd238: dataIn2 = 32'd91; 
32'd239: dataIn2 = 32'd35; 
32'd240: dataIn2 = 32'd51; 
32'd241: dataIn2 = 32'd51; 
32'd242: dataIn2 = 32'd91; 
32'd243: dataIn2 = 32'd55; 
32'd244: dataIn2 = 32'd45; 
32'd245: dataIn2 = 32'd4; 
32'd246: dataIn2 = 32'd79; 
32'd247: dataIn2 = 32'd79; 
32'd248: dataIn2 = 32'd81; 
32'd249: dataIn2 = 32'd96; 
32'd250: dataIn2 = 32'd39; 
32'd251: dataIn2 = 32'd97; 
32'd252: dataIn2 = 32'd28; 
32'd253: dataIn2 = 32'd93; 
32'd254: dataIn2 = 32'd32; 
32'd255: dataIn2 = 32'd48; 
32'd256: dataIn2 = 32'd10; 
32'd257: dataIn2 = 32'd53; 
32'd258: dataIn2 = 32'd41; 
32'd259: dataIn2 = 32'd92; 
32'd260: dataIn2 = 32'd21; 
32'd261: dataIn2 = 32'd33; 
32'd262: dataIn2 = 32'd91; 
32'd263: dataIn2 = 32'd88; 
32'd264: dataIn2 = 32'd18; 
32'd265: dataIn2 = 32'd66; 
32'd266: dataIn2 = 32'd70; 
32'd267: dataIn2 = 32'd32; 
32'd268: dataIn2 = 32'd42; 
32'd269: dataIn2 = 32'd11; 
32'd270: dataIn2 = 32'd26; 
32'd271: dataIn2 = 32'd17; 
32'd272: dataIn2 = 32'd82; 
32'd273: dataIn2 = 32'd45; 
32'd274: dataIn2 = 32'd80; 
32'd275: dataIn2 = 32'd57; 
32'd276: dataIn2 = 32'd27; 
32'd277: dataIn2 = 32'd86; 
32'd278: dataIn2 = 32'd52; 
32'd279: dataIn2 = 32'd6; 
32'd280: dataIn2 = 32'd100; 
32'd281: dataIn2 = 32'd39; 
32'd282: dataIn2 = 32'd1; 
32'd283: dataIn2 = 32'd46; 
32'd284: dataIn2 = 32'd73; 
32'd285: dataIn2 = 32'd83; 
32'd286: dataIn2 = 32'd98; 
32'd287: dataIn2 = 32'd32; 
32'd288: dataIn2 = 32'd89; 
32'd289: dataIn2 = 32'd93; 
32'd290: dataIn2 = 32'd84; 
32'd291: dataIn2 = 32'd95; 
32'd292: dataIn2 = 32'd18; 
32'd293: dataIn2 = 32'd71; 
32'd294: dataIn2 = 32'd44; 
32'd295: dataIn2 = 32'd53; 
32'd296: dataIn2 = 32'd54; 
32'd297: dataIn2 = 32'd45; 
32'd298: dataIn2 = 32'd92; 
32'd299: dataIn2 = 32'd57; 
32'd300: dataIn2 = 32'd95; 
32'd301: dataIn2 = 32'd12; 
32'd302: dataIn2 = 32'd46; 
32'd303: dataIn2 = 32'd35; 
32'd304: dataIn2 = 32'd73; 
32'd305: dataIn2 = 32'd57; 
32'd306: dataIn2 = 32'd18; 
32'd307: dataIn2 = 32'd23; 
32'd308: dataIn2 = 32'd19; 
32'd309: dataIn2 = 32'd99; 
32'd310: dataIn2 = 32'd67; 
32'd311: dataIn2 = 32'd26; 
32'd312: dataIn2 = 32'd4; 
32'd313: dataIn2 = 32'd73; 
32'd314: dataIn2 = 32'd91; 
32'd315: dataIn2 = 32'd97; 
32'd316: dataIn2 = 32'd68; 
32'd317: dataIn2 = 32'd38; 
32'd318: dataIn2 = 32'd58; 
32'd319: dataIn2 = 32'd74; 
32'd320: dataIn2 = 32'd0; 
32'd321: dataIn2 = 32'd25; 
32'd322: dataIn2 = 32'd14; 
32'd323: dataIn2 = 32'd66; 
32'd324: dataIn2 = 32'd34; 
32'd325: dataIn2 = 32'd21; 
32'd326: dataIn2 = 32'd75; 
32'd327: dataIn2 = 32'd33; 
32'd328: dataIn2 = 32'd30; 
32'd329: dataIn2 = 32'd56; 
32'd330: dataIn2 = 32'd92; 
32'd331: dataIn2 = 32'd68; 
32'd332: dataIn2 = 32'd48; 
32'd333: dataIn2 = 32'd11; 
32'd334: dataIn2 = 32'd84; 
32'd335: dataIn2 = 32'd2; 
32'd336: dataIn2 = 32'd88; 
32'd337: dataIn2 = 32'd80; 
32'd338: dataIn2 = 32'd89; 
32'd339: dataIn2 = 32'd60; 
32'd340: dataIn2 = 32'd22; 
32'd341: dataIn2 = 32'd45; 
32'd342: dataIn2 = 32'd8; 
32'd343: dataIn2 = 32'd58; 
32'd344: dataIn2 = 32'd76; 
32'd345: dataIn2 = 32'd5; 
32'd346: dataIn2 = 32'd1; 
32'd347: dataIn2 = 32'd40; 
32'd348: dataIn2 = 32'd29; 
32'd349: dataIn2 = 32'd32; 
32'd350: dataIn2 = 32'd59; 
32'd351: dataIn2 = 32'd0; 
32'd352: dataIn2 = 32'd12; 
32'd353: dataIn2 = 32'd7; 
32'd354: dataIn2 = 32'd32; 
32'd355: dataIn2 = 32'd35; 
32'd356: dataIn2 = 32'd68; 
32'd357: dataIn2 = 32'd23; 
32'd358: dataIn2 = 32'd25; 
32'd359: dataIn2 = 32'd78; 
32'd360: dataIn2 = 32'd23; 
32'd361: dataIn2 = 32'd73; 
32'd362: dataIn2 = 32'd86; 
32'd363: dataIn2 = 32'd59; 
32'd364: dataIn2 = 32'd87; 
32'd365: dataIn2 = 32'd65; 
32'd366: dataIn2 = 32'd67; 
32'd367: dataIn2 = 32'd2; 
32'd368: dataIn2 = 32'd69; 
32'd369: dataIn2 = 32'd2; 
32'd370: dataIn2 = 32'd30; 
32'd371: dataIn2 = 32'd84; 
32'd372: dataIn2 = 32'd97; 
32'd373: dataIn2 = 32'd78; 
32'd374: dataIn2 = 32'd65; 
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
	$dumpfile("hht2_32_80.vcd");  
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
