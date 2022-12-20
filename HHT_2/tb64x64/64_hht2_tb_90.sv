//64x64 
// Code your testbench here 
// or browse Examples 
// Verilog test bench for HHT with buffer 
`timescale 1ns/1ps 
module testbench; 
  parameter V_SIZE = 9; 
  parameter COL_SIZE = 410 ; 
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
  matrix_base = 32'd330 ; 
  wdata_col_base = 32'd7400 ; 
  row_base = 32'd78100 ; 
  csize = COL_SIZE; 
 fe_init = 1'b1; 
  RD = 1'b1; 
 #15; 
Rst = 1'b0; 
#15 Rst = 1'b1; 
// RD = 1'b0; 
// RD = 1'b1; 
 #56000; 
$finish; 
end 
always @(*) begin 
//$display("%b,%b",t1.fe1.count,t1.fe1.vdata_req); 
case(addr1)  
32'd78100: dataIn1 = 32'd0
; 
32'd78101: dataIn1 = 32'd7
; 
32'd78102: dataIn1 = 32'd13
; 
32'd78103: dataIn1 = 32'd18
; 
32'd78104: dataIn1 = 32'd25
; 
32'd78105: dataIn1 = 32'd34
; 
32'd78106: dataIn1 = 32'd40
; 
32'd78107: dataIn1 = 32'd49
; 
32'd78108: dataIn1 = 32'd60
; 
32'd78109: dataIn1 = 32'd66
; 
32'd78110: dataIn1 = 32'd72
; 
32'd78111: dataIn1 = 32'd76
; 
32'd78112: dataIn1 = 32'd79
; 
32'd78113: dataIn1 = 32'd83
; 
32'd78114: dataIn1 = 32'd94
; 
32'd78115: dataIn1 = 32'd101
; 
32'd78116: dataIn1 = 32'd110
; 
32'd78117: dataIn1 = 32'd117
; 
32'd78118: dataIn1 = 32'd125
; 
32'd78119: dataIn1 = 32'd138
; 
32'd78120: dataIn1 = 32'd144
; 
32'd78121: dataIn1 = 32'd150
; 
32'd78122: dataIn1 = 32'd154
; 
32'd78123: dataIn1 = 32'd162
; 
32'd78124: dataIn1 = 32'd167
; 
32'd78125: dataIn1 = 32'd176
; 
32'd78126: dataIn1 = 32'd183
; 
32'd78127: dataIn1 = 32'd188
; 
32'd78128: dataIn1 = 32'd194
; 
32'd78129: dataIn1 = 32'd198
; 
32'd78130: dataIn1 = 32'd202
; 
32'd78131: dataIn1 = 32'd207
; 
32'd78132: dataIn1 = 32'd211
; 
32'd78133: dataIn1 = 32'd213
; 
32'd78134: dataIn1 = 32'd219
; 
32'd78135: dataIn1 = 32'd226
; 
32'd78136: dataIn1 = 32'd231
; 
32'd78137: dataIn1 = 32'd238
; 
32'd78138: dataIn1 = 32'd246
; 
32'd78139: dataIn1 = 32'd249
; 
32'd78140: dataIn1 = 32'd260
; 
32'd78141: dataIn1 = 32'd264
; 
32'd78142: dataIn1 = 32'd272
; 
32'd78143: dataIn1 = 32'd278
; 
32'd78144: dataIn1 = 32'd284
; 
32'd78145: dataIn1 = 32'd288
; 
32'd78146: dataIn1 = 32'd293
; 
32'd78147: dataIn1 = 32'd298
; 
32'd78148: dataIn1 = 32'd303
; 
32'd78149: dataIn1 = 32'd311
; 
32'd78150: dataIn1 = 32'd318
; 
32'd78151: dataIn1 = 32'd325
; 
32'd78152: dataIn1 = 32'd329
; 
32'd78153: dataIn1 = 32'd337
; 
32'd78154: dataIn1 = 32'd341
; 
32'd78155: dataIn1 = 32'd348
; 
32'd78156: dataIn1 = 32'd357
; 
32'd78157: dataIn1 = 32'd362
; 
32'd78158: dataIn1 = 32'd369
; 
32'd78159: dataIn1 = 32'd373
; 
32'd78160: dataIn1 = 32'd383
; 
32'd78161: dataIn1 = 32'd391
; 
32'd78162: dataIn1 = 32'd397
; 
32'd78163: dataIn1 = 32'd402
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
32'd7400: dataIn1 = 32'd0
; 
32'd7401: dataIn1 = 32'd7
; 
32'd7402: dataIn1 = 32'd13
; 
32'd7403: dataIn1 = 32'd18
; 
32'd7404: dataIn1 = 32'd25
; 
32'd7405: dataIn1 = 32'd34
; 
32'd7406: dataIn1 = 32'd40
; 
32'd7407: dataIn1 = 32'd49
; 
32'd7408: dataIn1 = 32'd60
; 
32'd7409: dataIn1 = 32'd66
; 
32'd7410: dataIn1 = 32'd72
; 
32'd7411: dataIn1 = 32'd76
; 
32'd7412: dataIn1 = 32'd79
; 
32'd7413: dataIn1 = 32'd83
; 
32'd7414: dataIn1 = 32'd94
; 
32'd7415: dataIn1 = 32'd101
; 
32'd7416: dataIn1 = 32'd110
; 
32'd7417: dataIn1 = 32'd117
; 
32'd7418: dataIn1 = 32'd125
; 
32'd7419: dataIn1 = 32'd138
; 
32'd7420: dataIn1 = 32'd144
; 
32'd7421: dataIn1 = 32'd150
; 
32'd7422: dataIn1 = 32'd154
; 
32'd7423: dataIn1 = 32'd162
; 
32'd7424: dataIn1 = 32'd167
; 
32'd7425: dataIn1 = 32'd176
; 
32'd7426: dataIn1 = 32'd183
; 
32'd7427: dataIn1 = 32'd188
; 
32'd7428: dataIn1 = 32'd194
; 
32'd7429: dataIn1 = 32'd198
; 
32'd7430: dataIn1 = 32'd202
; 
32'd7431: dataIn1 = 32'd207
; 
32'd7432: dataIn1 = 32'd211
; 
32'd7433: dataIn1 = 32'd213
; 
32'd7434: dataIn1 = 32'd219
; 
32'd7435: dataIn1 = 32'd226
; 
32'd7436: dataIn1 = 32'd231
; 
32'd7437: dataIn1 = 32'd238
; 
32'd7438: dataIn1 = 32'd246
; 
32'd7439: dataIn1 = 32'd249
; 
32'd7440: dataIn1 = 32'd260
; 
32'd7441: dataIn1 = 32'd264
; 
32'd7442: dataIn1 = 32'd272
; 
32'd7443: dataIn1 = 32'd278
; 
32'd7444: dataIn1 = 32'd284
; 
32'd7445: dataIn1 = 32'd288
; 
32'd7446: dataIn1 = 32'd293
; 
32'd7447: dataIn1 = 32'd298
; 
32'd7448: dataIn1 = 32'd303
; 
32'd7449: dataIn1 = 32'd311
; 
32'd7450: dataIn1 = 32'd318
; 
32'd7451: dataIn1 = 32'd325
; 
32'd7452: dataIn1 = 32'd329
; 
32'd7453: dataIn1 = 32'd337
; 
32'd7454: dataIn1 = 32'd341
; 
32'd7455: dataIn1 = 32'd348
; 
32'd7456: dataIn1 = 32'd357
; 
32'd7457: dataIn1 = 32'd362
; 
32'd7458: dataIn1 = 32'd369
; 
32'd7459: dataIn1 = 32'd373
; 
32'd7460: dataIn1 = 32'd383
; 
32'd7461: dataIn1 = 32'd391
; 
32'd7462: dataIn1 = 32'd397
; 
32'd7463: dataIn1 = 32'd402
; 
32'd7464: dataIn1 = 32'd408
; 
32'd7465: dataIn1 = 32'd18
; 
32'd7466: dataIn1 = 32'd21
; 
32'd7467: dataIn1 = 32'd27
; 
32'd7468: dataIn1 = 32'd29
; 
32'd7469: dataIn1 = 32'd42
; 
32'd7470: dataIn1 = 32'd50
; 
32'd7471: dataIn1 = 32'd63
; 
32'd7472: dataIn1 = 32'd13
; 
32'd7473: dataIn1 = 32'd17
; 
32'd7474: dataIn1 = 32'd19
; 
32'd7475: dataIn1 = 32'd31
; 
32'd7476: dataIn1 = 32'd51
; 
32'd7477: dataIn1 = 32'd59
; 
32'd7478: dataIn1 = 32'd8
; 
32'd7479: dataIn1 = 32'd14
; 
32'd7480: dataIn1 = 32'd39
; 
32'd7481: dataIn1 = 32'd45
; 
32'd7482: dataIn1 = 32'd51
; 
32'd7483: dataIn1 = 32'd3
; 
32'd7484: dataIn1 = 32'd20
; 
32'd7485: dataIn1 = 32'd32
; 
32'd7486: dataIn1 = 32'd35
; 
32'd7487: dataIn1 = 32'd50
; 
32'd7488: dataIn1 = 32'd52
; 
32'd7489: dataIn1 = 32'd57
; 
32'd7490: dataIn1 = 32'd1
; 
32'd7491: dataIn1 = 32'd6
; 
32'd7492: dataIn1 = 32'd15
; 
32'd7493: dataIn1 = 32'd27
; 
32'd7494: dataIn1 = 32'd32
; 
32'd7495: dataIn1 = 32'd48
; 
32'd7496: dataIn1 = 32'd50
; 
32'd7497: dataIn1 = 32'd54
; 
32'd7498: dataIn1 = 32'd59
; 
32'd7499: dataIn1 = 32'd6
; 
32'd7500: dataIn1 = 32'd34
; 
32'd7501: dataIn1 = 32'd37
; 
32'd7502: dataIn1 = 32'd38
; 
32'd7503: dataIn1 = 32'd46
; 
32'd7504: dataIn1 = 32'd59
; 
32'd7505: dataIn1 = 32'd1
; 
32'd7506: dataIn1 = 32'd7
; 
32'd7507: dataIn1 = 32'd35
; 
32'd7508: dataIn1 = 32'd36
; 
32'd7509: dataIn1 = 32'd37
; 
32'd7510: dataIn1 = 32'd40
; 
32'd7511: dataIn1 = 32'd44
; 
32'd7512: dataIn1 = 32'd46
; 
32'd7513: dataIn1 = 32'd56
; 
32'd7514: dataIn1 = 32'd6
; 
32'd7515: dataIn1 = 32'd7
; 
32'd7516: dataIn1 = 32'd16
; 
32'd7517: dataIn1 = 32'd19
; 
32'd7518: dataIn1 = 32'd24
; 
32'd7519: dataIn1 = 32'd26
; 
32'd7520: dataIn1 = 32'd27
; 
32'd7521: dataIn1 = 32'd29
; 
32'd7522: dataIn1 = 32'd42
; 
32'd7523: dataIn1 = 32'd46
; 
32'd7524: dataIn1 = 32'd57
; 
32'd7525: dataIn1 = 32'd0
; 
32'd7526: dataIn1 = 32'd4
; 
32'd7527: dataIn1 = 32'd5
; 
32'd7528: dataIn1 = 32'd9
; 
32'd7529: dataIn1 = 32'd29
; 
32'd7530: dataIn1 = 32'd58
; 
32'd7531: dataIn1 = 32'd12
; 
32'd7532: dataIn1 = 32'd16
; 
32'd7533: dataIn1 = 32'd33
; 
32'd7534: dataIn1 = 32'd43
; 
32'd7535: dataIn1 = 32'd45
; 
32'd7536: dataIn1 = 32'd51
; 
32'd7537: dataIn1 = 32'd6
; 
32'd7538: dataIn1 = 32'd13
; 
32'd7539: dataIn1 = 32'd43
; 
32'd7540: dataIn1 = 32'd47
; 
32'd7541: dataIn1 = 32'd24
; 
32'd7542: dataIn1 = 32'd39
; 
32'd7543: dataIn1 = 32'd45
; 
32'd7544: dataIn1 = 32'd18
; 
32'd7545: dataIn1 = 32'd34
; 
32'd7546: dataIn1 = 32'd51
; 
32'd7547: dataIn1 = 32'd62
; 
32'd7548: dataIn1 = 32'd8
; 
32'd7549: dataIn1 = 32'd13
; 
32'd7550: dataIn1 = 32'd20
; 
32'd7551: dataIn1 = 32'd31
; 
32'd7552: dataIn1 = 32'd34
; 
32'd7553: dataIn1 = 32'd38
; 
32'd7554: dataIn1 = 32'd40
; 
32'd7555: dataIn1 = 32'd49
; 
32'd7556: dataIn1 = 32'd50
; 
32'd7557: dataIn1 = 32'd59
; 
32'd7558: dataIn1 = 32'd60
; 
32'd7559: dataIn1 = 32'd10
; 
32'd7560: dataIn1 = 32'd12
; 
32'd7561: dataIn1 = 32'd22
; 
32'd7562: dataIn1 = 32'd26
; 
32'd7563: dataIn1 = 32'd30
; 
32'd7564: dataIn1 = 32'd43
; 
32'd7565: dataIn1 = 32'd60
; 
32'd7566: dataIn1 = 32'd2
; 
32'd7567: dataIn1 = 32'd6
; 
32'd7568: dataIn1 = 32'd35
; 
32'd7569: dataIn1 = 32'd37
; 
32'd7570: dataIn1 = 32'd40
; 
32'd7571: dataIn1 = 32'd44
; 
32'd7572: dataIn1 = 32'd45
; 
32'd7573: dataIn1 = 32'd61
; 
32'd7574: dataIn1 = 32'd63
; 
32'd7575: dataIn1 = 32'd26
; 
32'd7576: dataIn1 = 32'd27
; 
32'd7577: dataIn1 = 32'd31
; 
32'd7578: dataIn1 = 32'd37
; 
32'd7579: dataIn1 = 32'd43
; 
32'd7580: dataIn1 = 32'd56
; 
32'd7581: dataIn1 = 32'd57
; 
32'd7582: dataIn1 = 32'd0
; 
32'd7583: dataIn1 = 32'd7
; 
32'd7584: dataIn1 = 32'd11
; 
32'd7585: dataIn1 = 32'd12
; 
32'd7586: dataIn1 = 32'd20
; 
32'd7587: dataIn1 = 32'd25
; 
32'd7588: dataIn1 = 32'd49
; 
32'd7589: dataIn1 = 32'd54
; 
32'd7590: dataIn1 = 32'd2
; 
32'd7591: dataIn1 = 32'd10
; 
32'd7592: dataIn1 = 32'd15
; 
32'd7593: dataIn1 = 32'd17
; 
32'd7594: dataIn1 = 32'd21
; 
32'd7595: dataIn1 = 32'd22
; 
32'd7596: dataIn1 = 32'd24
; 
32'd7597: dataIn1 = 32'd25
; 
32'd7598: dataIn1 = 32'd34
; 
32'd7599: dataIn1 = 32'd39
; 
32'd7600: dataIn1 = 32'd45
; 
32'd7601: dataIn1 = 32'd46
; 
32'd7602: dataIn1 = 32'd48
; 
32'd7603: dataIn1 = 32'd2
; 
32'd7604: dataIn1 = 32'd8
; 
32'd7605: dataIn1 = 32'd31
; 
32'd7606: dataIn1 = 32'd45
; 
32'd7607: dataIn1 = 32'd46
; 
32'd7608: dataIn1 = 32'd63
; 
32'd7609: dataIn1 = 32'd0
; 
32'd7610: dataIn1 = 32'd12
; 
32'd7611: dataIn1 = 32'd37
; 
32'd7612: dataIn1 = 32'd38
; 
32'd7613: dataIn1 = 32'd40
; 
32'd7614: dataIn1 = 32'd50
; 
32'd7615: dataIn1 = 32'd5
; 
32'd7616: dataIn1 = 32'd17
; 
32'd7617: dataIn1 = 32'd37
; 
32'd7618: dataIn1 = 32'd46
; 
32'd7619: dataIn1 = 32'd0
; 
32'd7620: dataIn1 = 32'd2
; 
32'd7621: dataIn1 = 32'd19
; 
32'd7622: dataIn1 = 32'd20
; 
32'd7623: dataIn1 = 32'd25
; 
32'd7624: dataIn1 = 32'd30
; 
32'd7625: dataIn1 = 32'd33
; 
32'd7626: dataIn1 = 32'd62
; 
32'd7627: dataIn1 = 32'd0
; 
32'd7628: dataIn1 = 32'd10
; 
32'd7629: dataIn1 = 32'd11
; 
32'd7630: dataIn1 = 32'd30
; 
32'd7631: dataIn1 = 32'd47
; 
32'd7632: dataIn1 = 32'd8
; 
32'd7633: dataIn1 = 32'd14
; 
32'd7634: dataIn1 = 32'd15
; 
32'd7635: dataIn1 = 32'd19
; 
32'd7636: dataIn1 = 32'd29
; 
32'd7637: dataIn1 = 32'd38
; 
32'd7638: dataIn1 = 32'd40
; 
32'd7639: dataIn1 = 32'd44
; 
32'd7640: dataIn1 = 32'd59
; 
32'd7641: dataIn1 = 32'd1
; 
32'd7642: dataIn1 = 32'd2
; 
32'd7643: dataIn1 = 32'd24
; 
32'd7644: dataIn1 = 32'd29
; 
32'd7645: dataIn1 = 32'd35
; 
32'd7646: dataIn1 = 32'd43
; 
32'd7647: dataIn1 = 32'd53
; 
32'd7648: dataIn1 = 32'd15
; 
32'd7649: dataIn1 = 32'd19
; 
32'd7650: dataIn1 = 32'd24
; 
32'd7651: dataIn1 = 32'd39
; 
32'd7652: dataIn1 = 32'd54
; 
32'd7653: dataIn1 = 32'd3
; 
32'd7654: dataIn1 = 32'd16
; 
32'd7655: dataIn1 = 32'd17
; 
32'd7656: dataIn1 = 32'd20
; 
32'd7657: dataIn1 = 32'd27
; 
32'd7658: dataIn1 = 32'd47
; 
32'd7659: dataIn1 = 32'd25
; 
32'd7660: dataIn1 = 32'd36
; 
32'd7661: dataIn1 = 32'd48
; 
32'd7662: dataIn1 = 32'd63
; 
32'd7663: dataIn1 = 32'd1
; 
32'd7664: dataIn1 = 32'd28
; 
32'd7665: dataIn1 = 32'd29
; 
32'd7666: dataIn1 = 32'd54
; 
32'd7667: dataIn1 = 32'd3
; 
32'd7668: dataIn1 = 32'd21
; 
32'd7669: dataIn1 = 32'd40
; 
32'd7670: dataIn1 = 32'd51
; 
32'd7671: dataIn1 = 32'd62
; 
32'd7672: dataIn1 = 32'd13
; 
32'd7673: dataIn1 = 32'd34
; 
32'd7674: dataIn1 = 32'd57
; 
32'd7675: dataIn1 = 32'd61
; 
32'd7676: dataIn1 = 32'd56
; 
32'd7677: dataIn1 = 32'd61
; 
32'd7678: dataIn1 = 32'd21
; 
32'd7679: dataIn1 = 32'd29
; 
32'd7680: dataIn1 = 32'd39
; 
32'd7681: dataIn1 = 32'd47
; 
32'd7682: dataIn1 = 32'd57
; 
32'd7683: dataIn1 = 32'd60
; 
32'd7684: dataIn1 = 32'd14
; 
32'd7685: dataIn1 = 32'd17
; 
32'd7686: dataIn1 = 32'd19
; 
32'd7687: dataIn1 = 32'd38
; 
32'd7688: dataIn1 = 32'd39
; 
32'd7689: dataIn1 = 32'd46
; 
32'd7690: dataIn1 = 32'd62
; 
32'd7691: dataIn1 = 32'd11
; 
32'd7692: dataIn1 = 32'd19
; 
32'd7693: dataIn1 = 32'd33
; 
32'd7694: dataIn1 = 32'd35
; 
32'd7695: dataIn1 = 32'd59
; 
32'd7696: dataIn1 = 32'd1
; 
32'd7697: dataIn1 = 32'd22
; 
32'd7698: dataIn1 = 32'd28
; 
32'd7699: dataIn1 = 32'd29
; 
32'd7700: dataIn1 = 32'd38
; 
32'd7701: dataIn1 = 32'd59
; 
32'd7702: dataIn1 = 32'd63
; 
32'd7703: dataIn1 = 32'd5
; 
32'd7704: dataIn1 = 32'd6
; 
32'd7705: dataIn1 = 32'd8
; 
32'd7706: dataIn1 = 32'd25
; 
32'd7707: dataIn1 = 32'd39
; 
32'd7708: dataIn1 = 32'd40
; 
32'd7709: dataIn1 = 32'd56
; 
32'd7710: dataIn1 = 32'd61
; 
32'd7711: dataIn1 = 32'd10
; 
32'd7712: dataIn1 = 32'd38
; 
32'd7713: dataIn1 = 32'd54
; 
32'd7714: dataIn1 = 32'd2
; 
32'd7715: dataIn1 = 32'd10
; 
32'd7716: dataIn1 = 32'd12
; 
32'd7717: dataIn1 = 32'd21
; 
32'd7718: dataIn1 = 32'd22
; 
32'd7719: dataIn1 = 32'd34
; 
32'd7720: dataIn1 = 32'd40
; 
32'd7721: dataIn1 = 32'd41
; 
32'd7722: dataIn1 = 32'd45
; 
32'd7723: dataIn1 = 32'd52
; 
32'd7724: dataIn1 = 32'd53
; 
32'd7725: dataIn1 = 32'd0
; 
32'd7726: dataIn1 = 32'd26
; 
32'd7727: dataIn1 = 32'd33
; 
32'd7728: dataIn1 = 32'd46
; 
32'd7729: dataIn1 = 32'd2
; 
32'd7730: dataIn1 = 32'd6
; 
32'd7731: dataIn1 = 32'd13
; 
32'd7732: dataIn1 = 32'd17
; 
32'd7733: dataIn1 = 32'd29
; 
32'd7734: dataIn1 = 32'd52
; 
32'd7735: dataIn1 = 32'd54
; 
32'd7736: dataIn1 = 32'd56
; 
32'd7737: dataIn1 = 32'd21
; 
32'd7738: dataIn1 = 32'd26
; 
32'd7739: dataIn1 = 32'd41
; 
32'd7740: dataIn1 = 32'd43
; 
32'd7741: dataIn1 = 32'd44
; 
32'd7742: dataIn1 = 32'd58
; 
32'd7743: dataIn1 = 32'd8
; 
32'd7744: dataIn1 = 32'd14
; 
32'd7745: dataIn1 = 32'd30
; 
32'd7746: dataIn1 = 32'd47
; 
32'd7747: dataIn1 = 32'd59
; 
32'd7748: dataIn1 = 32'd62
; 
32'd7749: dataIn1 = 32'd4
; 
32'd7750: dataIn1 = 32'd11
; 
32'd7751: dataIn1 = 32'd17
; 
32'd7752: dataIn1 = 32'd50
; 
32'd7753: dataIn1 = 32'd16
; 
32'd7754: dataIn1 = 32'd17
; 
32'd7755: dataIn1 = 32'd20
; 
32'd7756: dataIn1 = 32'd35
; 
32'd7757: dataIn1 = 32'd61
; 
32'd7758: dataIn1 = 32'd23
; 
32'd7759: dataIn1 = 32'd35
; 
32'd7760: dataIn1 = 32'd36
; 
32'd7761: dataIn1 = 32'd50
; 
32'd7762: dataIn1 = 32'd61
; 
32'd7763: dataIn1 = 32'd11
; 
32'd7764: dataIn1 = 32'd31
; 
32'd7765: dataIn1 = 32'd37
; 
32'd7766: dataIn1 = 32'd49
; 
32'd7767: dataIn1 = 32'd56
; 
32'd7768: dataIn1 = 32'd3
; 
32'd7769: dataIn1 = 32'd6
; 
32'd7770: dataIn1 = 32'd19
; 
32'd7771: dataIn1 = 32'd24
; 
32'd7772: dataIn1 = 32'd30
; 
32'd7773: dataIn1 = 32'd36
; 
32'd7774: dataIn1 = 32'd46
; 
32'd7775: dataIn1 = 32'd50
; 
32'd7776: dataIn1 = 32'd4
; 
32'd7777: dataIn1 = 32'd6
; 
32'd7778: dataIn1 = 32'd7
; 
32'd7779: dataIn1 = 32'd11
; 
32'd7780: dataIn1 = 32'd16
; 
32'd7781: dataIn1 = 32'd17
; 
32'd7782: dataIn1 = 32'd55
; 
32'd7783: dataIn1 = 32'd2
; 
32'd7784: dataIn1 = 32'd17
; 
32'd7785: dataIn1 = 32'd26
; 
32'd7786: dataIn1 = 32'd34
; 
32'd7787: dataIn1 = 32'd35
; 
32'd7788: dataIn1 = 32'd48
; 
32'd7789: dataIn1 = 32'd56
; 
32'd7790: dataIn1 = 32'd16
; 
32'd7791: dataIn1 = 32'd21
; 
32'd7792: dataIn1 = 32'd23
; 
32'd7793: dataIn1 = 32'd50
; 
32'd7794: dataIn1 = 32'd7
; 
32'd7795: dataIn1 = 32'd25
; 
32'd7796: dataIn1 = 32'd26
; 
32'd7797: dataIn1 = 32'd28
; 
32'd7798: dataIn1 = 32'd36
; 
32'd7799: dataIn1 = 32'd42
; 
32'd7800: dataIn1 = 32'd48
; 
32'd7801: dataIn1 = 32'd57
; 
32'd7802: dataIn1 = 32'd25
; 
32'd7803: dataIn1 = 32'd53
; 
32'd7804: dataIn1 = 32'd54
; 
32'd7805: dataIn1 = 32'd61
; 
32'd7806: dataIn1 = 32'd11
; 
32'd7807: dataIn1 = 32'd13
; 
32'd7808: dataIn1 = 32'd25
; 
32'd7809: dataIn1 = 32'd37
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd81; 
32'd3: dataIn2 = 32'd98; 
32'd4: dataIn2 = 32'd72; 
32'd5: dataIn2 = 32'd47; 
32'd6: dataIn2 = 32'd19; 
32'd7: dataIn2 = 32'd46; 
32'd8: dataIn2 = 32'd60; 
32'd9: dataIn2 = 32'd61; 
32'd10: dataIn2 = 32'd83; 
32'd11: dataIn2 = 32'd16; 
32'd12: dataIn2 = 32'd33; 
32'd13: dataIn2 = 32'd60; 
32'd14: dataIn2 = 32'd30; 
32'd15: dataIn2 = 32'd7; 
32'd16: dataIn2 = 32'd54; 
32'd17: dataIn2 = 32'd99; 
32'd18: dataIn2 = 32'd9; 
32'd19: dataIn2 = 32'd46; 
32'd20: dataIn2 = 32'd26; 
32'd21: dataIn2 = 32'd63; 
32'd22: dataIn2 = 32'd39; 
32'd23: dataIn2 = 32'd17; 
32'd24: dataIn2 = 32'd8; 
32'd25: dataIn2 = 32'd70; 
32'd26: dataIn2 = 32'd33; 
32'd27: dataIn2 = 32'd100; 
32'd28: dataIn2 = 32'd12; 
32'd29: dataIn2 = 32'd60; 
32'd30: dataIn2 = 32'd55; 
32'd31: dataIn2 = 32'd83; 
32'd32: dataIn2 = 32'd10; 
32'd33: dataIn2 = 32'd57; 
32'd34: dataIn2 = 32'd69; 
32'd35: dataIn2 = 32'd41; 
32'd36: dataIn2 = 32'd92; 
32'd37: dataIn2 = 32'd97; 
32'd38: dataIn2 = 32'd71; 
32'd39: dataIn2 = 32'd31; 
32'd40: dataIn2 = 32'd3; 
32'd41: dataIn2 = 32'd79; 
32'd42: dataIn2 = 32'd19; 
32'd43: dataIn2 = 32'd28; 
32'd44: dataIn2 = 32'd34; 
32'd45: dataIn2 = 32'd39; 
32'd46: dataIn2 = 32'd37; 
32'd47: dataIn2 = 32'd20; 
32'd48: dataIn2 = 32'd15; 
32'd49: dataIn2 = 32'd82; 
32'd50: dataIn2 = 32'd99; 
32'd51: dataIn2 = 32'd90; 
32'd52: dataIn2 = 32'd23; 
32'd53: dataIn2 = 32'd72; 
32'd54: dataIn2 = 32'd99; 
32'd55: dataIn2 = 32'd84; 
32'd56: dataIn2 = 32'd12; 
32'd57: dataIn2 = 32'd35; 
32'd58: dataIn2 = 32'd62; 
32'd59: dataIn2 = 32'd86; 
32'd60: dataIn2 = 32'd91; 
32'd61: dataIn2 = 32'd79; 
32'd62: dataIn2 = 32'd10; 
32'd63: dataIn2 = 32'd27; 
32'd64: dataIn2 = 32'd18; 
32'd65: dataIn2 = 32'd13; 
default: 
	dataIn2 = 32'd99999; 
endcase 
32'd330: dataIn2 = 32'd48; 
32'd331: dataIn2 = 32'd0; 
32'd332: dataIn2 = 32'd69; 
32'd333: dataIn2 = 32'd50; 
32'd334: dataIn2 = 32'd70; 
32'd335: dataIn2 = 32'd30; 
32'd336: dataIn2 = 32'd79; 
32'd337: dataIn2 = 32'd67; 
32'd338: dataIn2 = 32'd89; 
32'd339: dataIn2 = 32'd43; 
32'd340: dataIn2 = 32'd8; 
32'd341: dataIn2 = 32'd71; 
32'd342: dataIn2 = 32'd2; 
32'd343: dataIn2 = 32'd81; 
32'd344: dataIn2 = 32'd41; 
32'd345: dataIn2 = 32'd22; 
32'd346: dataIn2 = 32'd59; 
32'd347: dataIn2 = 32'd46; 
32'd348: dataIn2 = 32'd56; 
32'd349: dataIn2 = 32'd90; 
32'd350: dataIn2 = 32'd50; 
32'd351: dataIn2 = 32'd1; 
32'd352: dataIn2 = 32'd10; 
32'd353: dataIn2 = 32'd29; 
32'd354: dataIn2 = 32'd57; 
32'd355: dataIn2 = 32'd89; 
32'd356: dataIn2 = 32'd37; 
32'd357: dataIn2 = 32'd89; 
32'd358: dataIn2 = 32'd87; 
32'd359: dataIn2 = 32'd30; 
32'd360: dataIn2 = 32'd49; 
32'd361: dataIn2 = 32'd22; 
32'd362: dataIn2 = 32'd8; 
32'd363: dataIn2 = 32'd53; 
32'd364: dataIn2 = 32'd82; 
32'd365: dataIn2 = 32'd19; 
32'd366: dataIn2 = 32'd7; 
32'd367: dataIn2 = 32'd72; 
32'd368: dataIn2 = 32'd12; 
32'd369: dataIn2 = 32'd47; 
32'd370: dataIn2 = 32'd36; 
32'd371: dataIn2 = 32'd77; 
32'd372: dataIn2 = 32'd74; 
32'd373: dataIn2 = 32'd78; 
32'd374: dataIn2 = 32'd55; 
32'd375: dataIn2 = 32'd45; 
32'd376: dataIn2 = 32'd8; 
32'd377: dataIn2 = 32'd50; 
32'd378: dataIn2 = 32'd87; 
32'd379: dataIn2 = 32'd7; 
32'd380: dataIn2 = 32'd77; 
32'd381: dataIn2 = 32'd92; 
32'd382: dataIn2 = 32'd15; 
32'd383: dataIn2 = 32'd9; 
32'd384: dataIn2 = 32'd74; 
32'd385: dataIn2 = 32'd51; 
32'd386: dataIn2 = 32'd49; 
32'd387: dataIn2 = 32'd28; 
32'd388: dataIn2 = 32'd93; 
32'd389: dataIn2 = 32'd35; 
32'd390: dataIn2 = 32'd80; 
32'd391: dataIn2 = 32'd93; 
32'd392: dataIn2 = 32'd36; 
32'd393: dataIn2 = 32'd92; 
32'd394: dataIn2 = 32'd3; 
32'd395: dataIn2 = 32'd71; 
32'd396: dataIn2 = 32'd3; 
32'd397: dataIn2 = 32'd90; 
32'd398: dataIn2 = 32'd50; 
32'd399: dataIn2 = 32'd22; 
32'd400: dataIn2 = 32'd85; 
32'd401: dataIn2 = 32'd46; 
32'd402: dataIn2 = 32'd9; 
32'd403: dataIn2 = 32'd49; 
32'd404: dataIn2 = 32'd32; 
32'd405: dataIn2 = 32'd95; 
32'd406: dataIn2 = 32'd3; 
32'd407: dataIn2 = 32'd89; 
32'd408: dataIn2 = 32'd61; 
32'd409: dataIn2 = 32'd22; 
32'd410: dataIn2 = 32'd6; 
32'd411: dataIn2 = 32'd99; 
32'd412: dataIn2 = 32'd73; 
32'd413: dataIn2 = 32'd58; 
32'd414: dataIn2 = 32'd91; 
32'd415: dataIn2 = 32'd38; 
32'd416: dataIn2 = 32'd95; 
32'd417: dataIn2 = 32'd81; 
32'd418: dataIn2 = 32'd60; 
32'd419: dataIn2 = 32'd74; 
32'd420: dataIn2 = 32'd86; 
32'd421: dataIn2 = 32'd94; 
32'd422: dataIn2 = 32'd31; 
32'd423: dataIn2 = 32'd24; 
32'd424: dataIn2 = 32'd2; 
32'd425: dataIn2 = 32'd50; 
32'd426: dataIn2 = 32'd18; 
32'd427: dataIn2 = 32'd40; 
32'd428: dataIn2 = 32'd36; 
32'd429: dataIn2 = 32'd45; 
32'd430: dataIn2 = 32'd80; 
32'd431: dataIn2 = 32'd78; 
32'd432: dataIn2 = 32'd45; 
32'd433: dataIn2 = 32'd39; 
32'd434: dataIn2 = 32'd94; 
32'd435: dataIn2 = 32'd8; 
32'd436: dataIn2 = 32'd95; 
32'd437: dataIn2 = 32'd34; 
32'd438: dataIn2 = 32'd17; 
32'd439: dataIn2 = 32'd33; 
32'd440: dataIn2 = 32'd65; 
32'd441: dataIn2 = 32'd0; 
32'd442: dataIn2 = 32'd11; 
32'd443: dataIn2 = 32'd97; 
32'd444: dataIn2 = 32'd46; 
32'd445: dataIn2 = 32'd22; 
32'd446: dataIn2 = 32'd14; 
32'd447: dataIn2 = 32'd11; 
32'd448: dataIn2 = 32'd22; 
32'd449: dataIn2 = 32'd70; 
32'd450: dataIn2 = 32'd44; 
32'd451: dataIn2 = 32'd64; 
32'd452: dataIn2 = 32'd22; 
32'd453: dataIn2 = 32'd35; 
32'd454: dataIn2 = 32'd3; 
32'd455: dataIn2 = 32'd66; 
32'd456: dataIn2 = 32'd52; 
32'd457: dataIn2 = 32'd92; 
32'd458: dataIn2 = 32'd56; 
32'd459: dataIn2 = 32'd82; 
32'd460: dataIn2 = 32'd34; 
32'd461: dataIn2 = 32'd92; 
32'd462: dataIn2 = 32'd77; 
32'd463: dataIn2 = 32'd44; 
32'd464: dataIn2 = 32'd10; 
32'd465: dataIn2 = 32'd57; 
32'd466: dataIn2 = 32'd67; 
32'd467: dataIn2 = 32'd38; 
32'd468: dataIn2 = 32'd26; 
32'd469: dataIn2 = 32'd74; 
32'd470: dataIn2 = 32'd72; 
32'd471: dataIn2 = 32'd83; 
32'd472: dataIn2 = 32'd3; 
32'd473: dataIn2 = 32'd91; 
32'd474: dataIn2 = 32'd98; 
32'd475: dataIn2 = 32'd60; 
32'd476: dataIn2 = 32'd5; 
32'd477: dataIn2 = 32'd10; 
32'd478: dataIn2 = 32'd91; 
32'd479: dataIn2 = 32'd68; 
32'd480: dataIn2 = 32'd16; 
32'd481: dataIn2 = 32'd24; 
32'd482: dataIn2 = 32'd62; 
32'd483: dataIn2 = 32'd63; 
32'd484: dataIn2 = 32'd53; 
32'd485: dataIn2 = 32'd10; 
32'd486: dataIn2 = 32'd45; 
32'd487: dataIn2 = 32'd70; 
32'd488: dataIn2 = 32'd82; 
32'd489: dataIn2 = 32'd51; 
32'd490: dataIn2 = 32'd48; 
32'd491: dataIn2 = 32'd18; 
32'd492: dataIn2 = 32'd26; 
32'd493: dataIn2 = 32'd13; 
32'd494: dataIn2 = 32'd14; 
32'd495: dataIn2 = 32'd45; 
32'd496: dataIn2 = 32'd70; 
32'd497: dataIn2 = 32'd57; 
32'd498: dataIn2 = 32'd17; 
32'd499: dataIn2 = 32'd28; 
32'd500: dataIn2 = 32'd78; 
32'd501: dataIn2 = 32'd81; 
32'd502: dataIn2 = 32'd77; 
32'd503: dataIn2 = 32'd7; 
32'd504: dataIn2 = 32'd97; 
32'd505: dataIn2 = 32'd61; 
32'd506: dataIn2 = 32'd74; 
32'd507: dataIn2 = 32'd59; 
32'd508: dataIn2 = 32'd65; 
32'd509: dataIn2 = 32'd27; 
32'd510: dataIn2 = 32'd83; 
32'd511: dataIn2 = 32'd46; 
32'd512: dataIn2 = 32'd36; 
32'd513: dataIn2 = 32'd10; 
32'd514: dataIn2 = 32'd56; 
32'd515: dataIn2 = 32'd74; 
32'd516: dataIn2 = 32'd95; 
32'd517: dataIn2 = 32'd46; 
32'd518: dataIn2 = 32'd35; 
32'd519: dataIn2 = 32'd54; 
32'd520: dataIn2 = 32'd77; 
32'd521: dataIn2 = 32'd28; 
32'd522: dataIn2 = 32'd30; 
32'd523: dataIn2 = 32'd50; 
32'd524: dataIn2 = 32'd55; 
32'd525: dataIn2 = 32'd63; 
32'd526: dataIn2 = 32'd21; 
32'd527: dataIn2 = 32'd2; 
32'd528: dataIn2 = 32'd78; 
32'd529: dataIn2 = 32'd51; 
32'd530: dataIn2 = 32'd41; 
32'd531: dataIn2 = 32'd91; 
32'd532: dataIn2 = 32'd98; 
32'd533: dataIn2 = 32'd1; 
32'd534: dataIn2 = 32'd22; 
32'd535: dataIn2 = 32'd96; 
32'd536: dataIn2 = 32'd51; 
32'd537: dataIn2 = 32'd72; 
32'd538: dataIn2 = 32'd69; 
32'd539: dataIn2 = 32'd9; 
32'd540: dataIn2 = 32'd72; 
32'd541: dataIn2 = 32'd16; 
32'd542: dataIn2 = 32'd90; 
32'd543: dataIn2 = 32'd49; 
32'd544: dataIn2 = 32'd67; 
32'd545: dataIn2 = 32'd92; 
32'd546: dataIn2 = 32'd32; 
32'd547: dataIn2 = 32'd58; 
32'd548: dataIn2 = 32'd80; 
32'd549: dataIn2 = 32'd64; 
32'd550: dataIn2 = 32'd65; 
32'd551: dataIn2 = 32'd31; 
32'd552: dataIn2 = 32'd100; 
32'd553: dataIn2 = 32'd7; 
32'd554: dataIn2 = 32'd97; 
32'd555: dataIn2 = 32'd39; 
32'd556: dataIn2 = 32'd84; 
32'd557: dataIn2 = 32'd24; 
32'd558: dataIn2 = 32'd40; 
32'd559: dataIn2 = 32'd1; 
32'd560: dataIn2 = 32'd59; 
32'd561: dataIn2 = 32'd55; 
32'd562: dataIn2 = 32'd32; 
32'd563: dataIn2 = 32'd68; 
32'd564: dataIn2 = 32'd69; 
32'd565: dataIn2 = 32'd46; 
32'd566: dataIn2 = 32'd81; 
32'd567: dataIn2 = 32'd16; 
32'd568: dataIn2 = 32'd80; 
32'd569: dataIn2 = 32'd30; 
32'd570: dataIn2 = 32'd93; 
32'd571: dataIn2 = 32'd100; 
32'd572: dataIn2 = 32'd24; 
32'd573: dataIn2 = 32'd95; 
32'd574: dataIn2 = 32'd100; 
32'd575: dataIn2 = 32'd18; 
32'd576: dataIn2 = 32'd14; 
32'd577: dataIn2 = 32'd12; 
32'd578: dataIn2 = 32'd28; 
32'd579: dataIn2 = 32'd29; 
32'd580: dataIn2 = 32'd10; 
32'd581: dataIn2 = 32'd30; 
32'd582: dataIn2 = 32'd78; 
32'd583: dataIn2 = 32'd55; 
32'd584: dataIn2 = 32'd41; 
32'd585: dataIn2 = 32'd98; 
32'd586: dataIn2 = 32'd82; 
32'd587: dataIn2 = 32'd96; 
32'd588: dataIn2 = 32'd73; 
32'd589: dataIn2 = 32'd70; 
32'd590: dataIn2 = 32'd30; 
32'd591: dataIn2 = 32'd81; 
32'd592: dataIn2 = 32'd27; 
32'd593: dataIn2 = 32'd41; 
32'd594: dataIn2 = 32'd26; 
32'd595: dataIn2 = 32'd57; 
32'd596: dataIn2 = 32'd88; 
32'd597: dataIn2 = 32'd16; 
32'd598: dataIn2 = 32'd4; 
32'd599: dataIn2 = 32'd84; 
32'd600: dataIn2 = 32'd70; 
32'd601: dataIn2 = 32'd8; 
32'd602: dataIn2 = 32'd75; 
32'd603: dataIn2 = 32'd29; 
32'd604: dataIn2 = 32'd14; 
32'd605: dataIn2 = 32'd22; 
32'd606: dataIn2 = 32'd73; 
32'd607: dataIn2 = 32'd80; 
32'd608: dataIn2 = 32'd20; 
32'd609: dataIn2 = 32'd21; 
32'd610: dataIn2 = 32'd22; 
32'd611: dataIn2 = 32'd49; 
32'd612: dataIn2 = 32'd18; 
32'd613: dataIn2 = 32'd28; 
32'd614: dataIn2 = 32'd20; 
32'd615: dataIn2 = 32'd91; 
32'd616: dataIn2 = 32'd55; 
32'd617: dataIn2 = 32'd95; 
32'd618: dataIn2 = 32'd60; 
32'd619: dataIn2 = 32'd33; 
32'd620: dataIn2 = 32'd55; 
32'd621: dataIn2 = 32'd29; 
32'd622: dataIn2 = 32'd13; 
32'd623: dataIn2 = 32'd43; 
32'd624: dataIn2 = 32'd39; 
32'd625: dataIn2 = 32'd0; 
32'd626: dataIn2 = 32'd39; 
32'd627: dataIn2 = 32'd20; 
32'd628: dataIn2 = 32'd15; 
32'd629: dataIn2 = 32'd21; 
32'd630: dataIn2 = 32'd67; 
32'd631: dataIn2 = 32'd49; 
32'd632: dataIn2 = 32'd28; 
32'd633: dataIn2 = 32'd92; 
32'd634: dataIn2 = 32'd44; 
32'd635: dataIn2 = 32'd97; 
32'd636: dataIn2 = 32'd89; 
32'd637: dataIn2 = 32'd71; 
32'd638: dataIn2 = 32'd38; 
32'd639: dataIn2 = 32'd82; 
32'd640: dataIn2 = 32'd24; 
32'd641: dataIn2 = 32'd87; 
32'd642: dataIn2 = 32'd3; 
32'd643: dataIn2 = 32'd94; 
32'd644: dataIn2 = 32'd35; 
32'd645: dataIn2 = 32'd64; 
32'd646: dataIn2 = 32'd38; 
32'd647: dataIn2 = 32'd8; 
32'd648: dataIn2 = 32'd100; 
32'd649: dataIn2 = 32'd27; 
32'd650: dataIn2 = 32'd91; 
32'd651: dataIn2 = 32'd98; 
32'd652: dataIn2 = 32'd63; 
32'd653: dataIn2 = 32'd26; 
32'd654: dataIn2 = 32'd18; 
32'd655: dataIn2 = 32'd22; 
32'd656: dataIn2 = 32'd2; 
32'd657: dataIn2 = 32'd74; 
32'd658: dataIn2 = 32'd89; 
32'd659: dataIn2 = 32'd72; 
32'd660: dataIn2 = 32'd23; 
32'd661: dataIn2 = 32'd61; 
32'd662: dataIn2 = 32'd48; 
32'd663: dataIn2 = 32'd24; 
32'd664: dataIn2 = 32'd82; 
32'd665: dataIn2 = 32'd17; 
32'd666: dataIn2 = 32'd60; 
32'd667: dataIn2 = 32'd14; 
32'd668: dataIn2 = 32'd32; 
32'd669: dataIn2 = 32'd63; 
32'd670: dataIn2 = 32'd53; 
32'd671: dataIn2 = 32'd21; 
32'd672: dataIn2 = 32'd24; 
32'd673: dataIn2 = 32'd90; 
32'd674: dataIn2 = 32'd9; 
32'd675: dataIn2 = 32'd62; 
32'd676: dataIn2 = 32'd92; 
32'd677: dataIn2 = 32'd47; 
32'd678: dataIn2 = 32'd75; 
32'd679: dataIn2 = 32'd26; 
32'd680: dataIn2 = 32'd36; 
32'd681: dataIn2 = 32'd2; 
32'd682: dataIn2 = 32'd44; 
32'd683: dataIn2 = 32'd42; 
32'd684: dataIn2 = 32'd92; 
32'd685: dataIn2 = 32'd31; 
32'd686: dataIn2 = 32'd89; 
32'd687: dataIn2 = 32'd97; 
32'd688: dataIn2 = 32'd71; 
32'd689: dataIn2 = 32'd49; 
32'd690: dataIn2 = 32'd94; 
32'd691: dataIn2 = 32'd78; 
32'd692: dataIn2 = 32'd4; 
32'd693: dataIn2 = 32'd24; 
32'd694: dataIn2 = 32'd30; 
32'd695: dataIn2 = 32'd85; 
32'd696: dataIn2 = 32'd2; 
32'd697: dataIn2 = 32'd48; 
32'd698: dataIn2 = 32'd91; 
32'd699: dataIn2 = 32'd63; 
32'd700: dataIn2 = 32'd36; 
32'd701: dataIn2 = 32'd67; 
32'd702: dataIn2 = 32'd38; 
32'd703: dataIn2 = 32'd8; 
32'd704: dataIn2 = 32'd45; 
32'd705: dataIn2 = 32'd23; 
32'd706: dataIn2 = 32'd70; 
32'd707: dataIn2 = 32'd68; 
32'd708: dataIn2 = 32'd58; 
32'd709: dataIn2 = 32'd93; 
32'd710: dataIn2 = 32'd45; 
32'd711: dataIn2 = 32'd20; 
32'd712: dataIn2 = 32'd88; 
32'd713: dataIn2 = 32'd37; 
32'd714: dataIn2 = 32'd19; 
32'd715: dataIn2 = 32'd99; 
32'd716: dataIn2 = 32'd73; 
32'd717: dataIn2 = 32'd19; 
32'd718: dataIn2 = 32'd53; 
32'd719: dataIn2 = 32'd87; 
32'd720: dataIn2 = 32'd36; 
32'd721: dataIn2 = 32'd99; 
32'd722: dataIn2 = 32'd75; 
32'd723: dataIn2 = 32'd97; 
32'd724: dataIn2 = 32'd78; 
32'd725: dataIn2 = 32'd31; 
32'd726: dataIn2 = 32'd9; 
32'd727: dataIn2 = 32'd1; 
32'd728: dataIn2 = 32'd55; 
32'd729: dataIn2 = 32'd8; 
32'd730: dataIn2 = 32'd33; 
32'd731: dataIn2 = 32'd79; 
32'd732: dataIn2 = 32'd62; 
32'd733: dataIn2 = 32'd94; 
32'd734: dataIn2 = 32'd92; 
32'd735: dataIn2 = 32'd16; 
32'd736: dataIn2 = 32'd36; 
32'd737: dataIn2 = 32'd96; 
32'd738: dataIn2 = 32'd19; 
32'd739: dataIn2 = 32'd59; 
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
	$dumpfile("hht2_64_90.vcd");  
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
