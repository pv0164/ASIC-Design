import random
sparsity = ['64_hht1_tb_10.sv', '64_hht1_tb_20.sv',
			'64_hht1_tb_30.sv', '64_hht1_tb_40.sv',
			'64_hht1_tb_50.sv', '64_hht1_tb_60.sv',
			'64_hht1_tb_70.sv', '64_hht1_tb_80.sv',
			'64_hht1_tb_90.sv']
size = 64
val = size*size
sparse = [num/10 for num in range(1,10,1)]

for x in range(0,9):
	file1 = open(sparsity[x], 'w')
	file1.write ("//")
	file1.write (str(size))
	file1.write ("x")
	file1.write (str(size))
	file1.write (" \n")
	file1.write  ("// Code your testbench here \n")
	file1.write  ("// or browse Examples \n")
	file1.write  ("// Verilog test bench for HHT with buffer \n")
	file1.write  ("`timescale 1ns/1ps \n")
	file1.write  ("module testbench; \n")
	file1.write  ("  parameter V_SIZE = 9; \n")
	file1.write  ("  parameter COL_SIZE = ")
	col_ind = val-round(val*sparse[x])
	sp = int(sparse[x]*100)
	file1.write  (str(col_ind))
	file1.write  (" ; \n")
	file1.write  ("reg Clk,Rst,WR,mem_init; \n")
	file1.write  ("reg [31:0] dataIn1,dataIn2,csize; \n")
	file1.write  ("reg [31:0]v_values_base; \n")
	file1.write  ("  wire [31:0]addr1,addr2; \n")
	file1.write  ("  wire [31:0]val[0:8]; \n")
	file1.write  ("reg [31:0]wdata_col_base; \n")  
	file1.write  ("wire [31:0] dataOut; \n")
	file1.write  ("reg fe_init; \n")
	file1.write  ("reg wn,rn,RD; \n")


	file1.write (" // Instantiate memory module \n")
	file1.write ("//  memmodel m1 (addr,dataIn,dataOut,WR,Clk,Rst); \n")
	file1.write ("//  mem_buffer m1 (dataOut, full, empty, Clk, Rst, wn, rn, dataIn); \n")
	file1.write ("control t1 (Clk,v_values_base,wdata_col_base,addr1,addr2,dataIn1,dataIn2,Rst,csize,RD);  \n") 

	file1.write ("//frontend t1 (Clk,Rst,fe_init,wdata_col_base,data_req,dataIn,init, \n")
	file1.write ("//{m_cols[0],m_cols[1],m_cols[2],m_cols[3],m_cols[4]}, \n")
	file1.write ("//done,wn); \n")

	file1.write ("initial begin \n")
	file1.write ("Clk = 1'b0; \n")
	file1.write ("  v_values_base = 32'd2; \n")
	file1.write ("  wdata_col_base = 32'd")
	file1.write  (str(10*(2+size)))
	file1.write  (" ; \n")
	file1.write ("  csize = COL_SIZE; \n")
 
	file1.write (" fe_init = 1'b1; \n")
	file1.write ("  RD = 1'b1; \n")
	file1.write (" #15; \n")
	file1.write ("Rst = 1'b0; \n")
	file1.write ("#15 Rst = 1'b1; \n")
	file1.write ("// RD = 1'b0; \n")

	file1.write ("// RD = 1'b1; \n")
	file1.write (" #")
	file1.write (str(180+ col_ind*20))
	file1.write ("; \n")
	file1.write ("$finish; \n")
	file1.write ("end \n")
	file1.write ("always @(*) begin \n")
	file1.write ("//$display(\"%b,%b\",t1.fe1.count,t1.fe1.vdata_req); \n") 
	file1.write ("case(addr1)  \n")
	
	for y in range(10*(2+size),(10*(2+size)+col_ind)):
		file1.write("32'd")
		file1.write(str(y))
		file1.write(": dataIn1 = 32'd")
		file1.write(str(random.randint(0,size-1)))
		file1.write("; \n")
		
	file1.write ("default:  \n")
	file1.write ("	dataIn1 = 32'd99999; \n")
	file1.write ("endcase \n")
	file1.write ("case(addr2) \n")

	for y in range(2,2+size):
		file1.write("32'd")
		file1.write(str(y))
		file1.write(": dataIn2 = 32'd")
		file1.write(str(random.randint(0,100)))
		file1.write("; \n")
    	
	file1.write ("default: \n") 
	file1.write ("	dataIn2 = 32'd99999; \n")

	file1.write ("endcase \n")
	file1.write ("end \n") 

	file1.write ("always begin \n")
	file1.write ("#10 Clk = ~Clk; \n")
	file1.write ("end \n")

	file1.write ("//========== VCD ============ \n")
	file1.write ("`ifdef VCD \n")
	file1.write ("initial \n")
	file1.write ("begin \n")
	#file1.write ("	$dumpfile(\"hht_synth.vcd\"); \n")

	file1.write ("	$dumpfile(\"hht1_64_")
	file1.write (str(sp))
	file1.write (".vcd\");  \n")

	file1.write ("	$dumpvars; \n")
	file1.write ("end \n")
	file1.write ("`endif \n")



	file1.write ("//===========RTLVCD ========== \n")
	file1.write ("`ifdef RTLVCD \n")
	file1.write ("initial \n")
	file1.write ("begin \n")
	file1.write ("	$dumpfile(\"hht_rtl.vcd\"); \n")
	file1.write ("	$dumpvars; \n")
	file1.write ("end \n")
	file1.write ("`endif \n")
	file1.write ("endmodule \n")

	file1.close()
