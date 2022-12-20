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
  wdata_col_base = 32'd4770 ; 
  row_base = 32'd50770 ; 
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
32'd50770: dataIn1 = 32'd0
; 
32'd50771: dataIn1 = 32'd10
; 
32'd50772: dataIn1 = 32'd18
; 
32'd50773: dataIn1 = 32'd25
; 
32'd50774: dataIn1 = 32'd38
; 
32'd50775: dataIn1 = 32'd52
; 
32'd50776: dataIn1 = 32'd62
; 
32'd50777: dataIn1 = 32'd71
; 
32'd50778: dataIn1 = 32'd78
; 
32'd50779: dataIn1 = 32'd89
; 
32'd50780: dataIn1 = 32'd100
; 
32'd50781: dataIn1 = 32'd106
; 
32'd50782: dataIn1 = 32'd116
; 
32'd50783: dataIn1 = 32'd126
; 
32'd50784: dataIn1 = 32'd131
; 
32'd50785: dataIn1 = 32'd143
; 
32'd50786: dataIn1 = 32'd151
; 
32'd50787: dataIn1 = 32'd160
; 
32'd50788: dataIn1 = 32'd170
; 
32'd50789: dataIn1 = 32'd180
; 
32'd50790: dataIn1 = 32'd191
; 
32'd50791: dataIn1 = 32'd199
; 
32'd50792: dataIn1 = 32'd208
; 
32'd50793: dataIn1 = 32'd219
; 
32'd50794: dataIn1 = 32'd227
; 
32'd50795: dataIn1 = 32'd237
; 
32'd50796: dataIn1 = 32'd248
; 
32'd50797: dataIn1 = 32'd256
; 
32'd50798: dataIn1 = 32'd267
; 
32'd50799: dataIn1 = 32'd275
; 
32'd50800: dataIn1 = 32'd283
; 
32'd50801: dataIn1 = 32'd295
; 
32'd50802: dataIn1 = 32'd297
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
32'd4770: dataIn1 = 32'd0
; 
32'd4771: dataIn1 = 32'd10
; 
32'd4772: dataIn1 = 32'd18
; 
32'd4773: dataIn1 = 32'd25
; 
32'd4774: dataIn1 = 32'd38
; 
32'd4775: dataIn1 = 32'd52
; 
32'd4776: dataIn1 = 32'd62
; 
32'd4777: dataIn1 = 32'd71
; 
32'd4778: dataIn1 = 32'd78
; 
32'd4779: dataIn1 = 32'd89
; 
32'd4780: dataIn1 = 32'd100
; 
32'd4781: dataIn1 = 32'd106
; 
32'd4782: dataIn1 = 32'd116
; 
32'd4783: dataIn1 = 32'd126
; 
32'd4784: dataIn1 = 32'd131
; 
32'd4785: dataIn1 = 32'd143
; 
32'd4786: dataIn1 = 32'd151
; 
32'd4787: dataIn1 = 32'd160
; 
32'd4788: dataIn1 = 32'd170
; 
32'd4789: dataIn1 = 32'd180
; 
32'd4790: dataIn1 = 32'd191
; 
32'd4791: dataIn1 = 32'd199
; 
32'd4792: dataIn1 = 32'd208
; 
32'd4793: dataIn1 = 32'd219
; 
32'd4794: dataIn1 = 32'd227
; 
32'd4795: dataIn1 = 32'd237
; 
32'd4796: dataIn1 = 32'd248
; 
32'd4797: dataIn1 = 32'd256
; 
32'd4798: dataIn1 = 32'd267
; 
32'd4799: dataIn1 = 32'd275
; 
32'd4800: dataIn1 = 32'd283
; 
32'd4801: dataIn1 = 32'd295
; 
32'd4802: dataIn1 = 32'd297
; 
32'd4803: dataIn1 = 32'd3
; 
32'd4804: dataIn1 = 32'd4
; 
32'd4805: dataIn1 = 32'd8
; 
32'd4806: dataIn1 = 32'd11
; 
32'd4807: dataIn1 = 32'd14
; 
32'd4808: dataIn1 = 32'd16
; 
32'd4809: dataIn1 = 32'd23
; 
32'd4810: dataIn1 = 32'd25
; 
32'd4811: dataIn1 = 32'd29
; 
32'd4812: dataIn1 = 32'd30
; 
32'd4813: dataIn1 = 32'd6
; 
32'd4814: dataIn1 = 32'd7
; 
32'd4815: dataIn1 = 32'd11
; 
32'd4816: dataIn1 = 32'd15
; 
32'd4817: dataIn1 = 32'd16
; 
32'd4818: dataIn1 = 32'd20
; 
32'd4819: dataIn1 = 32'd25
; 
32'd4820: dataIn1 = 32'd26
; 
32'd4821: dataIn1 = 32'd2
; 
32'd4822: dataIn1 = 32'd10
; 
32'd4823: dataIn1 = 32'd11
; 
32'd4824: dataIn1 = 32'd20
; 
32'd4825: dataIn1 = 32'd24
; 
32'd4826: dataIn1 = 32'd25
; 
32'd4827: dataIn1 = 32'd31
; 
32'd4828: dataIn1 = 32'd0
; 
32'd4829: dataIn1 = 32'd1
; 
32'd4830: dataIn1 = 32'd2
; 
32'd4831: dataIn1 = 32'd3
; 
32'd4832: dataIn1 = 32'd6
; 
32'd4833: dataIn1 = 32'd7
; 
32'd4834: dataIn1 = 32'd11
; 
32'd4835: dataIn1 = 32'd13
; 
32'd4836: dataIn1 = 32'd14
; 
32'd4837: dataIn1 = 32'd18
; 
32'd4838: dataIn1 = 32'd22
; 
32'd4839: dataIn1 = 32'd26
; 
32'd4840: dataIn1 = 32'd30
; 
32'd4841: dataIn1 = 32'd1
; 
32'd4842: dataIn1 = 32'd2
; 
32'd4843: dataIn1 = 32'd3
; 
32'd4844: dataIn1 = 32'd5
; 
32'd4845: dataIn1 = 32'd8
; 
32'd4846: dataIn1 = 32'd10
; 
32'd4847: dataIn1 = 32'd14
; 
32'd4848: dataIn1 = 32'd16
; 
32'd4849: dataIn1 = 32'd19
; 
32'd4850: dataIn1 = 32'd20
; 
32'd4851: dataIn1 = 32'd24
; 
32'd4852: dataIn1 = 32'd26
; 
32'd4853: dataIn1 = 32'd29
; 
32'd4854: dataIn1 = 32'd31
; 
32'd4855: dataIn1 = 32'd4
; 
32'd4856: dataIn1 = 32'd7
; 
32'd4857: dataIn1 = 32'd11
; 
32'd4858: dataIn1 = 32'd19
; 
32'd4859: dataIn1 = 32'd20
; 
32'd4860: dataIn1 = 32'd22
; 
32'd4861: dataIn1 = 32'd24
; 
32'd4862: dataIn1 = 32'd25
; 
32'd4863: dataIn1 = 32'd29
; 
32'd4864: dataIn1 = 32'd31
; 
32'd4865: dataIn1 = 32'd0
; 
32'd4866: dataIn1 = 32'd3
; 
32'd4867: dataIn1 = 32'd5
; 
32'd4868: dataIn1 = 32'd7
; 
32'd4869: dataIn1 = 32'd14
; 
32'd4870: dataIn1 = 32'd15
; 
32'd4871: dataIn1 = 32'd23
; 
32'd4872: dataIn1 = 32'd24
; 
32'd4873: dataIn1 = 32'd31
; 
32'd4874: dataIn1 = 32'd0
; 
32'd4875: dataIn1 = 32'd3
; 
32'd4876: dataIn1 = 32'd12
; 
32'd4877: dataIn1 = 32'd14
; 
32'd4878: dataIn1 = 32'd24
; 
32'd4879: dataIn1 = 32'd25
; 
32'd4880: dataIn1 = 32'd30
; 
32'd4881: dataIn1 = 32'd1
; 
32'd4882: dataIn1 = 32'd2
; 
32'd4883: dataIn1 = 32'd13
; 
32'd4884: dataIn1 = 32'd15
; 
32'd4885: dataIn1 = 32'd17
; 
32'd4886: dataIn1 = 32'd18
; 
32'd4887: dataIn1 = 32'd19
; 
32'd4888: dataIn1 = 32'd20
; 
32'd4889: dataIn1 = 32'd23
; 
32'd4890: dataIn1 = 32'd29
; 
32'd4891: dataIn1 = 32'd30
; 
32'd4892: dataIn1 = 32'd5
; 
32'd4893: dataIn1 = 32'd14
; 
32'd4894: dataIn1 = 32'd16
; 
32'd4895: dataIn1 = 32'd17
; 
32'd4896: dataIn1 = 32'd19
; 
32'd4897: dataIn1 = 32'd21
; 
32'd4898: dataIn1 = 32'd23
; 
32'd4899: dataIn1 = 32'd24
; 
32'd4900: dataIn1 = 32'd27
; 
32'd4901: dataIn1 = 32'd28
; 
32'd4902: dataIn1 = 32'd29
; 
32'd4903: dataIn1 = 32'd2
; 
32'd4904: dataIn1 = 32'd16
; 
32'd4905: dataIn1 = 32'd20
; 
32'd4906: dataIn1 = 32'd21
; 
32'd4907: dataIn1 = 32'd23
; 
32'd4908: dataIn1 = 32'd29
; 
32'd4909: dataIn1 = 32'd4
; 
32'd4910: dataIn1 = 32'd5
; 
32'd4911: dataIn1 = 32'd6
; 
32'd4912: dataIn1 = 32'd12
; 
32'd4913: dataIn1 = 32'd18
; 
32'd4914: dataIn1 = 32'd20
; 
32'd4915: dataIn1 = 32'd21
; 
32'd4916: dataIn1 = 32'd24
; 
32'd4917: dataIn1 = 32'd27
; 
32'd4918: dataIn1 = 32'd31
; 
32'd4919: dataIn1 = 32'd0
; 
32'd4920: dataIn1 = 32'd7
; 
32'd4921: dataIn1 = 32'd10
; 
32'd4922: dataIn1 = 32'd14
; 
32'd4923: dataIn1 = 32'd19
; 
32'd4924: dataIn1 = 32'd21
; 
32'd4925: dataIn1 = 32'd23
; 
32'd4926: dataIn1 = 32'd24
; 
32'd4927: dataIn1 = 32'd26
; 
32'd4928: dataIn1 = 32'd28
; 
32'd4929: dataIn1 = 32'd2
; 
32'd4930: dataIn1 = 32'd15
; 
32'd4931: dataIn1 = 32'd19
; 
32'd4932: dataIn1 = 32'd22
; 
32'd4933: dataIn1 = 32'd28
; 
32'd4934: dataIn1 = 32'd1
; 
32'd4935: dataIn1 = 32'd2
; 
32'd4936: dataIn1 = 32'd6
; 
32'd4937: dataIn1 = 32'd7
; 
32'd4938: dataIn1 = 32'd10
; 
32'd4939: dataIn1 = 32'd15
; 
32'd4940: dataIn1 = 32'd21
; 
32'd4941: dataIn1 = 32'd26
; 
32'd4942: dataIn1 = 32'd28
; 
32'd4943: dataIn1 = 32'd29
; 
32'd4944: dataIn1 = 32'd30
; 
32'd4945: dataIn1 = 32'd31
; 
32'd4946: dataIn1 = 32'd0
; 
32'd4947: dataIn1 = 32'd4
; 
32'd4948: dataIn1 = 32'd6
; 
32'd4949: dataIn1 = 32'd7
; 
32'd4950: dataIn1 = 32'd22
; 
32'd4951: dataIn1 = 32'd24
; 
32'd4952: dataIn1 = 32'd26
; 
32'd4953: dataIn1 = 32'd27
; 
32'd4954: dataIn1 = 32'd4
; 
32'd4955: dataIn1 = 32'd5
; 
32'd4956: dataIn1 = 32'd14
; 
32'd4957: dataIn1 = 32'd16
; 
32'd4958: dataIn1 = 32'd18
; 
32'd4959: dataIn1 = 32'd25
; 
32'd4960: dataIn1 = 32'd26
; 
32'd4961: dataIn1 = 32'd27
; 
32'd4962: dataIn1 = 32'd29
; 
32'd4963: dataIn1 = 32'd6
; 
32'd4964: dataIn1 = 32'd7
; 
32'd4965: dataIn1 = 32'd13
; 
32'd4966: dataIn1 = 32'd15
; 
32'd4967: dataIn1 = 32'd17
; 
32'd4968: dataIn1 = 32'd21
; 
32'd4969: dataIn1 = 32'd22
; 
32'd4970: dataIn1 = 32'd23
; 
32'd4971: dataIn1 = 32'd24
; 
32'd4972: dataIn1 = 32'd30
; 
32'd4973: dataIn1 = 32'd0
; 
32'd4974: dataIn1 = 32'd1
; 
32'd4975: dataIn1 = 32'd13
; 
32'd4976: dataIn1 = 32'd17
; 
32'd4977: dataIn1 = 32'd19
; 
32'd4978: dataIn1 = 32'd20
; 
32'd4979: dataIn1 = 32'd24
; 
32'd4980: dataIn1 = 32'd26
; 
32'd4981: dataIn1 = 32'd27
; 
32'd4982: dataIn1 = 32'd28
; 
32'd4983: dataIn1 = 32'd0
; 
32'd4984: dataIn1 = 32'd4
; 
32'd4985: dataIn1 = 32'd5
; 
32'd4986: dataIn1 = 32'd7
; 
32'd4987: dataIn1 = 32'd10
; 
32'd4988: dataIn1 = 32'd11
; 
32'd4989: dataIn1 = 32'd18
; 
32'd4990: dataIn1 = 32'd20
; 
32'd4991: dataIn1 = 32'd21
; 
32'd4992: dataIn1 = 32'd28
; 
32'd4993: dataIn1 = 32'd29
; 
32'd4994: dataIn1 = 32'd0
; 
32'd4995: dataIn1 = 32'd6
; 
32'd4996: dataIn1 = 32'd8
; 
32'd4997: dataIn1 = 32'd9
; 
32'd4998: dataIn1 = 32'd10
; 
32'd4999: dataIn1 = 32'd11
; 
32'd5000: dataIn1 = 32'd21
; 
32'd5001: dataIn1 = 32'd29
; 
32'd5002: dataIn1 = 32'd7
; 
32'd5003: dataIn1 = 32'd9
; 
32'd5004: dataIn1 = 32'd11
; 
32'd5005: dataIn1 = 32'd12
; 
32'd5006: dataIn1 = 32'd17
; 
32'd5007: dataIn1 = 32'd18
; 
32'd5008: dataIn1 = 32'd24
; 
32'd5009: dataIn1 = 32'd25
; 
32'd5010: dataIn1 = 32'd26
; 
32'd5011: dataIn1 = 32'd0
; 
32'd5012: dataIn1 = 32'd1
; 
32'd5013: dataIn1 = 32'd4
; 
32'd5014: dataIn1 = 32'd8
; 
32'd5015: dataIn1 = 32'd9
; 
32'd5016: dataIn1 = 32'd15
; 
32'd5017: dataIn1 = 32'd17
; 
32'd5018: dataIn1 = 32'd18
; 
32'd5019: dataIn1 = 32'd19
; 
32'd5020: dataIn1 = 32'd24
; 
32'd5021: dataIn1 = 32'd29
; 
32'd5022: dataIn1 = 32'd5
; 
32'd5023: dataIn1 = 32'd10
; 
32'd5024: dataIn1 = 32'd11
; 
32'd5025: dataIn1 = 32'd15
; 
32'd5026: dataIn1 = 32'd20
; 
32'd5027: dataIn1 = 32'd21
; 
32'd5028: dataIn1 = 32'd26
; 
32'd5029: dataIn1 = 32'd28
; 
32'd5030: dataIn1 = 32'd3
; 
32'd5031: dataIn1 = 32'd5
; 
32'd5032: dataIn1 = 32'd8
; 
32'd5033: dataIn1 = 32'd10
; 
32'd5034: dataIn1 = 32'd11
; 
32'd5035: dataIn1 = 32'd12
; 
32'd5036: dataIn1 = 32'd16
; 
32'd5037: dataIn1 = 32'd27
; 
32'd5038: dataIn1 = 32'd30
; 
32'd5039: dataIn1 = 32'd31
; 
32'd5040: dataIn1 = 32'd1
; 
32'd5041: dataIn1 = 32'd3
; 
32'd5042: dataIn1 = 32'd4
; 
32'd5043: dataIn1 = 32'd13
; 
32'd5044: dataIn1 = 32'd16
; 
32'd5045: dataIn1 = 32'd19
; 
32'd5046: dataIn1 = 32'd20
; 
32'd5047: dataIn1 = 32'd24
; 
32'd5048: dataIn1 = 32'd25
; 
32'd5049: dataIn1 = 32'd27
; 
32'd5050: dataIn1 = 32'd31
; 
32'd5051: dataIn1 = 32'd1
; 
32'd5052: dataIn1 = 32'd4
; 
32'd5053: dataIn1 = 32'd8
; 
32'd5054: dataIn1 = 32'd9
; 
32'd5055: dataIn1 = 32'd14
; 
32'd5056: dataIn1 = 32'd18
; 
32'd5057: dataIn1 = 32'd24
; 
32'd5058: dataIn1 = 32'd26
; 
32'd5059: dataIn1 = 32'd0
; 
32'd5060: dataIn1 = 32'd2
; 
32'd5061: dataIn1 = 32'd5
; 
32'd5062: dataIn1 = 32'd8
; 
32'd5063: dataIn1 = 32'd9
; 
32'd5064: dataIn1 = 32'd10
; 
32'd5065: dataIn1 = 32'd15
; 
32'd5066: dataIn1 = 32'd18
; 
32'd5067: dataIn1 = 32'd21
; 
32'd5068: dataIn1 = 32'd23
; 
32'd5069: dataIn1 = 32'd30
; 
32'd5070: dataIn1 = 32'd0
; 
32'd5071: dataIn1 = 32'd6
; 
32'd5072: dataIn1 = 32'd7
; 
32'd5073: dataIn1 = 32'd13
; 
32'd5074: dataIn1 = 32'd22
; 
32'd5075: dataIn1 = 32'd24
; 
32'd5076: dataIn1 = 32'd26
; 
default:  
	dataIn1 = 32'd99999; 
endcase 
case(addr2) 
32'd2: dataIn2 = 32'd45; 
32'd3: dataIn2 = 32'd35; 
32'd4: dataIn2 = 32'd7; 
32'd5: dataIn2 = 32'd91; 
32'd6: dataIn2 = 32'd20; 
32'd7: dataIn2 = 32'd10; 
32'd8: dataIn2 = 32'd40; 
32'd9: dataIn2 = 32'd4; 
32'd10: dataIn2 = 32'd38; 
32'd11: dataIn2 = 32'd6; 
32'd12: dataIn2 = 32'd30; 
32'd13: dataIn2 = 32'd40; 
32'd14: dataIn2 = 32'd33; 
32'd15: dataIn2 = 32'd19; 
32'd16: dataIn2 = 32'd37; 
32'd17: dataIn2 = 32'd81; 
32'd18: dataIn2 = 32'd41; 
32'd19: dataIn2 = 32'd81; 
32'd20: dataIn2 = 32'd98; 
32'd21: dataIn2 = 32'd60; 
32'd22: dataIn2 = 32'd95; 
32'd23: dataIn2 = 32'd0; 
32'd24: dataIn2 = 32'd17; 
32'd25: dataIn2 = 32'd60; 
32'd26: dataIn2 = 32'd80; 
32'd27: dataIn2 = 32'd9; 
32'd28: dataIn2 = 32'd4; 
32'd29: dataIn2 = 32'd79; 
32'd30: dataIn2 = 32'd28; 
32'd31: dataIn2 = 32'd8; 
32'd32: dataIn2 = 32'd30; 
32'd33: dataIn2 = 32'd68; 
default: 
	dataIn2 = 32'd99999; 
endcase 
32'd170: dataIn2 = 32'd86; 
32'd171: dataIn2 = 32'd97; 
32'd172: dataIn2 = 32'd27; 
32'd173: dataIn2 = 32'd40; 
32'd174: dataIn2 = 32'd3; 
32'd175: dataIn2 = 32'd69; 
32'd176: dataIn2 = 32'd32; 
32'd177: dataIn2 = 32'd62; 
32'd178: dataIn2 = 32'd67; 
32'd179: dataIn2 = 32'd78; 
32'd180: dataIn2 = 32'd28; 
32'd181: dataIn2 = 32'd8; 
32'd182: dataIn2 = 32'd64; 
32'd183: dataIn2 = 32'd3; 
32'd184: dataIn2 = 32'd32; 
32'd185: dataIn2 = 32'd98; 
32'd186: dataIn2 = 32'd55; 
32'd187: dataIn2 = 32'd66; 
32'd188: dataIn2 = 32'd73; 
32'd189: dataIn2 = 32'd13; 
32'd190: dataIn2 = 32'd6; 
32'd191: dataIn2 = 32'd74; 
32'd192: dataIn2 = 32'd81; 
32'd193: dataIn2 = 32'd8; 
32'd194: dataIn2 = 32'd14; 
32'd195: dataIn2 = 32'd38; 
32'd196: dataIn2 = 32'd87; 
32'd197: dataIn2 = 32'd44; 
32'd198: dataIn2 = 32'd43; 
32'd199: dataIn2 = 32'd8; 
32'd200: dataIn2 = 32'd38; 
32'd201: dataIn2 = 32'd7; 
32'd202: dataIn2 = 32'd64; 
32'd203: dataIn2 = 32'd36; 
32'd204: dataIn2 = 32'd7; 
32'd205: dataIn2 = 32'd4; 
32'd206: dataIn2 = 32'd97; 
32'd207: dataIn2 = 32'd89; 
32'd208: dataIn2 = 32'd47; 
32'd209: dataIn2 = 32'd66; 
32'd210: dataIn2 = 32'd80; 
32'd211: dataIn2 = 32'd24; 
32'd212: dataIn2 = 32'd53; 
32'd213: dataIn2 = 32'd88; 
32'd214: dataIn2 = 32'd25; 
32'd215: dataIn2 = 32'd48; 
32'd216: dataIn2 = 32'd62; 
32'd217: dataIn2 = 32'd31; 
32'd218: dataIn2 = 32'd72; 
32'd219: dataIn2 = 32'd30; 
32'd220: dataIn2 = 32'd19; 
32'd221: dataIn2 = 32'd100; 
32'd222: dataIn2 = 32'd73; 
32'd223: dataIn2 = 32'd18; 
32'd224: dataIn2 = 32'd54; 
32'd225: dataIn2 = 32'd70; 
32'd226: dataIn2 = 32'd44; 
32'd227: dataIn2 = 32'd40; 
32'd228: dataIn2 = 32'd15; 
32'd229: dataIn2 = 32'd52; 
32'd230: dataIn2 = 32'd88; 
32'd231: dataIn2 = 32'd91; 
32'd232: dataIn2 = 32'd78; 
32'd233: dataIn2 = 32'd21; 
32'd234: dataIn2 = 32'd67; 
32'd235: dataIn2 = 32'd14; 
32'd236: dataIn2 = 32'd36; 
32'd237: dataIn2 = 32'd25; 
32'd238: dataIn2 = 32'd78; 
32'd239: dataIn2 = 32'd15; 
32'd240: dataIn2 = 32'd22; 
32'd241: dataIn2 = 32'd53; 
32'd242: dataIn2 = 32'd83; 
32'd243: dataIn2 = 32'd13; 
32'd244: dataIn2 = 32'd37; 
32'd245: dataIn2 = 32'd65; 
32'd246: dataIn2 = 32'd70; 
32'd247: dataIn2 = 32'd35; 
32'd248: dataIn2 = 32'd31; 
32'd249: dataIn2 = 32'd62; 
32'd250: dataIn2 = 32'd75; 
32'd251: dataIn2 = 32'd36; 
32'd252: dataIn2 = 32'd59; 
32'd253: dataIn2 = 32'd19; 
32'd254: dataIn2 = 32'd8; 
32'd255: dataIn2 = 32'd3; 
32'd256: dataIn2 = 32'd21; 
32'd257: dataIn2 = 32'd51; 
32'd258: dataIn2 = 32'd80; 
32'd259: dataIn2 = 32'd60; 
32'd260: dataIn2 = 32'd44; 
32'd261: dataIn2 = 32'd73; 
32'd262: dataIn2 = 32'd30; 
32'd263: dataIn2 = 32'd13; 
32'd264: dataIn2 = 32'd14; 
32'd265: dataIn2 = 32'd62; 
32'd266: dataIn2 = 32'd18; 
32'd267: dataIn2 = 32'd6; 
32'd268: dataIn2 = 32'd19; 
32'd269: dataIn2 = 32'd99; 
32'd270: dataIn2 = 32'd39; 
32'd271: dataIn2 = 32'd37; 
32'd272: dataIn2 = 32'd80; 
32'd273: dataIn2 = 32'd18; 
32'd274: dataIn2 = 32'd32; 
32'd275: dataIn2 = 32'd30; 
32'd276: dataIn2 = 32'd55; 
32'd277: dataIn2 = 32'd56; 
32'd278: dataIn2 = 32'd92; 
32'd279: dataIn2 = 32'd3; 
32'd280: dataIn2 = 32'd50; 
32'd281: dataIn2 = 32'd50; 
32'd282: dataIn2 = 32'd95; 
32'd283: dataIn2 = 32'd29; 
32'd284: dataIn2 = 32'd65; 
32'd285: dataIn2 = 32'd43; 
32'd286: dataIn2 = 32'd16; 
32'd287: dataIn2 = 32'd43; 
32'd288: dataIn2 = 32'd17; 
32'd289: dataIn2 = 32'd43; 
32'd290: dataIn2 = 32'd94; 
32'd291: dataIn2 = 32'd68; 
32'd292: dataIn2 = 32'd11; 
32'd293: dataIn2 = 32'd84; 
32'd294: dataIn2 = 32'd31; 
32'd295: dataIn2 = 32'd0; 
32'd296: dataIn2 = 32'd57; 
32'd297: dataIn2 = 32'd31; 
32'd298: dataIn2 = 32'd61; 
32'd299: dataIn2 = 32'd40; 
32'd300: dataIn2 = 32'd60; 
32'd301: dataIn2 = 32'd87; 
32'd302: dataIn2 = 32'd50; 
32'd303: dataIn2 = 32'd6; 
32'd304: dataIn2 = 32'd37; 
32'd305: dataIn2 = 32'd26; 
32'd306: dataIn2 = 32'd81; 
32'd307: dataIn2 = 32'd76; 
32'd308: dataIn2 = 32'd5; 
32'd309: dataIn2 = 32'd0; 
32'd310: dataIn2 = 32'd12; 
32'd311: dataIn2 = 32'd43; 
32'd312: dataIn2 = 32'd62; 
32'd313: dataIn2 = 32'd69; 
32'd314: dataIn2 = 32'd19; 
32'd315: dataIn2 = 32'd18; 
32'd316: dataIn2 = 32'd7; 
32'd317: dataIn2 = 32'd52; 
32'd318: dataIn2 = 32'd26; 
32'd319: dataIn2 = 32'd21; 
32'd320: dataIn2 = 32'd48; 
32'd321: dataIn2 = 32'd77; 
32'd322: dataIn2 = 32'd55; 
32'd323: dataIn2 = 32'd77; 
32'd324: dataIn2 = 32'd94; 
32'd325: dataIn2 = 32'd51; 
32'd326: dataIn2 = 32'd58; 
32'd327: dataIn2 = 32'd71; 
32'd328: dataIn2 = 32'd75; 
32'd329: dataIn2 = 32'd100; 
32'd330: dataIn2 = 32'd9; 
32'd331: dataIn2 = 32'd15; 
32'd332: dataIn2 = 32'd68; 
32'd333: dataIn2 = 32'd29; 
32'd334: dataIn2 = 32'd27; 
32'd335: dataIn2 = 32'd34; 
32'd336: dataIn2 = 32'd82; 
32'd337: dataIn2 = 32'd55; 
32'd338: dataIn2 = 32'd36; 
32'd339: dataIn2 = 32'd57; 
32'd340: dataIn2 = 32'd9; 
32'd341: dataIn2 = 32'd27; 
32'd342: dataIn2 = 32'd19; 
32'd343: dataIn2 = 32'd30; 
32'd344: dataIn2 = 32'd47; 
32'd345: dataIn2 = 32'd96; 
32'd346: dataIn2 = 32'd0; 
32'd347: dataIn2 = 32'd16; 
32'd348: dataIn2 = 32'd15; 
32'd349: dataIn2 = 32'd30; 
32'd350: dataIn2 = 32'd94; 
32'd351: dataIn2 = 32'd31; 
32'd352: dataIn2 = 32'd51; 
32'd353: dataIn2 = 32'd0; 
32'd354: dataIn2 = 32'd62; 
32'd355: dataIn2 = 32'd58; 
32'd356: dataIn2 = 32'd16; 
32'd357: dataIn2 = 32'd55; 
32'd358: dataIn2 = 32'd69; 
32'd359: dataIn2 = 32'd6; 
32'd360: dataIn2 = 32'd40; 
32'd361: dataIn2 = 32'd17; 
32'd362: dataIn2 = 32'd39; 
32'd363: dataIn2 = 32'd51; 
32'd364: dataIn2 = 32'd17; 
32'd365: dataIn2 = 32'd39; 
32'd366: dataIn2 = 32'd61; 
32'd367: dataIn2 = 32'd21; 
32'd368: dataIn2 = 32'd80; 
32'd369: dataIn2 = 32'd6; 
32'd370: dataIn2 = 32'd1; 
32'd371: dataIn2 = 32'd47; 
32'd372: dataIn2 = 32'd10; 
32'd373: dataIn2 = 32'd39; 
32'd374: dataIn2 = 32'd99; 
32'd375: dataIn2 = 32'd75; 
32'd376: dataIn2 = 32'd57; 
32'd377: dataIn2 = 32'd96; 
32'd378: dataIn2 = 32'd35; 
32'd379: dataIn2 = 32'd10; 
32'd380: dataIn2 = 32'd15; 
32'd381: dataIn2 = 32'd24; 
32'd382: dataIn2 = 32'd94; 
32'd383: dataIn2 = 32'd43; 
32'd384: dataIn2 = 32'd21; 
32'd385: dataIn2 = 32'd39; 
32'd386: dataIn2 = 32'd40; 
32'd387: dataIn2 = 32'd49; 
32'd388: dataIn2 = 32'd38; 
32'd389: dataIn2 = 32'd63; 
32'd390: dataIn2 = 32'd35; 
32'd391: dataIn2 = 32'd84; 
32'd392: dataIn2 = 32'd28; 
32'd393: dataIn2 = 32'd92; 
32'd394: dataIn2 = 32'd75; 
32'd395: dataIn2 = 32'd27; 
32'd396: dataIn2 = 32'd54; 
32'd397: dataIn2 = 32'd76; 
32'd398: dataIn2 = 32'd55; 
32'd399: dataIn2 = 32'd13; 
32'd400: dataIn2 = 32'd78; 
32'd401: dataIn2 = 32'd51; 
32'd402: dataIn2 = 32'd66; 
32'd403: dataIn2 = 32'd27; 
32'd404: dataIn2 = 32'd67; 
32'd405: dataIn2 = 32'd56; 
32'd406: dataIn2 = 32'd88; 
32'd407: dataIn2 = 32'd65; 
32'd408: dataIn2 = 32'd8; 
32'd409: dataIn2 = 32'd37; 
32'd410: dataIn2 = 32'd2; 
32'd411: dataIn2 = 32'd12; 
32'd412: dataIn2 = 32'd60; 
32'd413: dataIn2 = 32'd49; 
32'd414: dataIn2 = 32'd64; 
32'd415: dataIn2 = 32'd73; 
32'd416: dataIn2 = 32'd61; 
32'd417: dataIn2 = 32'd68; 
32'd418: dataIn2 = 32'd17; 
32'd419: dataIn2 = 32'd45; 
32'd420: dataIn2 = 32'd12; 
32'd421: dataIn2 = 32'd87; 
32'd422: dataIn2 = 32'd3; 
32'd423: dataIn2 = 32'd22; 
32'd424: dataIn2 = 32'd26; 
32'd425: dataIn2 = 32'd96; 
32'd426: dataIn2 = 32'd24; 
32'd427: dataIn2 = 32'd1; 
32'd428: dataIn2 = 32'd72; 
32'd429: dataIn2 = 32'd41; 
32'd430: dataIn2 = 32'd54; 
32'd431: dataIn2 = 32'd49; 
32'd432: dataIn2 = 32'd18; 
32'd433: dataIn2 = 32'd97; 
32'd434: dataIn2 = 32'd11; 
32'd435: dataIn2 = 32'd81; 
32'd436: dataIn2 = 32'd99; 
32'd437: dataIn2 = 32'd25; 
32'd438: dataIn2 = 32'd16; 
32'd439: dataIn2 = 32'd72; 
32'd440: dataIn2 = 32'd17; 
32'd441: dataIn2 = 32'd15; 
32'd442: dataIn2 = 32'd49; 
32'd443: dataIn2 = 32'd75; 
32'd444: dataIn2 = 32'd86; 
32'd445: dataIn2 = 32'd99; 
32'd446: dataIn2 = 32'd32; 
32'd447: dataIn2 = 32'd16; 
32'd448: dataIn2 = 32'd5; 
32'd449: dataIn2 = 32'd34; 
32'd450: dataIn2 = 32'd14; 
32'd451: dataIn2 = 32'd42; 
32'd452: dataIn2 = 32'd46; 
32'd453: dataIn2 = 32'd42; 
32'd454: dataIn2 = 32'd4; 
32'd455: dataIn2 = 32'd61; 
32'd456: dataIn2 = 32'd93; 
32'd457: dataIn2 = 32'd33; 
32'd458: dataIn2 = 32'd97; 
32'd459: dataIn2 = 32'd25; 
32'd460: dataIn2 = 32'd56; 
32'd461: dataIn2 = 32'd60; 
32'd462: dataIn2 = 32'd8; 
32'd463: dataIn2 = 32'd61; 
32'd464: dataIn2 = 32'd84; 
32'd465: dataIn2 = 32'd26; 
32'd466: dataIn2 = 32'd32; 
32'd467: dataIn2 = 32'd48; 
32'd468: dataIn2 = 32'd65; 
32'd469: dataIn2 = 32'd5; 
32'd470: dataIn2 = 32'd74; 
32'd471: dataIn2 = 32'd13; 
32'd472: dataIn2 = 32'd19; 
32'd473: dataIn2 = 32'd30; 
32'd474: dataIn2 = 32'd42; 
32'd475: dataIn2 = 32'd67; 
32'd476: dataIn2 = 32'd14; 
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
	$dumpfile("hht2_32_70.vcd");  
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
