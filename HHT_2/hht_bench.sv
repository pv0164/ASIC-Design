//2 port memory, fetches matrix value as well as vector value and updates processor buffer. Processor buffer is only 2 values with control bits
module mem_buffer1 (DATAOUT, full, empty, clk, reset, wn, rn, DATAIN); //Buffer to backend
  output reg [31:0] DATAOUT;
  output reg full, empty;
  input [31:0] DATAIN;
  input clk, reset, wn, rn; 
  
  reg [2:0] wptr;
  reg [2:0] rptr; 
  reg [31:0] memory [0:7]; // the stack is 32 bit wide and 8 locations in size
  reg [31:0] mem,r_mem;
  
  always @(posedge clk)
  begin
    if (!reset)
      begin
        wptr = 3'b000;
        rptr = 3'b000; 
        full = 1'b0;
        empty = 1'b1;
      end
    else if (wn && !full)
      begin
        mem = DATAIN;
        memory[wptr] = mem;
        wptr = wptr + 1;
      end
    else begin
    wptr = wptr;
    rptr = rptr;
    end
  if (reset && rn)   begin   
        DATAOUT = memory[rptr];  
        rptr = rptr + 1;
    end
    else begin
    wptr = wptr;
    rptr = rptr;
    end
      if(wptr == 3'b111 && rptr == 3'b000)
      	full = 1'b1;
      	else
      	 full = 1'b0;
      if(wptr == rptr)
         empty = 1'b1;
     else
         empty = 1'b0;
  end
endmodule
module mem_buffer2 (DATAOUT, full, empty, clk, reset, wn, rn, DATAIN);//Buffer to frontend
  output reg [31:0] DATAOUT;
  output reg full, empty;
  input [31:0] DATAIN;
  input clk, reset, wn, rn; 
  
  reg [2:0] wptr;
  reg [2:0] rptr; 
  reg [31:0] memory [0:7]; // the stack is 32 bit wide and 8 locations in size
  reg [31:0] mem;
  
  always @(posedge clk)
  begin
    if (!reset)
      begin
        wptr = 3'b000;
        rptr = 3'b000; 
        full = 1'b0;
        empty = 1'b1;
      end
    else if (wn && !full)
      begin
        mem = DATAIN;
        memory[wptr] = mem;
        wptr = wptr + 1;
      end
    else begin
    wptr = wptr;
    rptr = rptr;
    end
  if (reset && rn)   begin    
	DATAOUT = memory[rptr];
        rptr = rptr + 1;
    end
    else begin
    wptr = wptr;
    rptr = rptr;
    end
      if(wptr == 3'b111 && rptr == 3'b000)
      	full = 1'b1;
      	else
      	 full = 1'b0;
      if(wptr == rptr)
         empty = 1'b1;
     else
         empty = 1'b0;
  end
endmodule


/*****Controller that communicates with test bench for required information like starting addresses of CSR row, column and value arrays of the sparse matrix and vector values*****/

module control (clk,base_dat_a,base_dat_b,addr1,addr2,dataIn1,dataIn2,Rst,RD,csize,cpu_addr,hht,regaddr1,regaddr2,rdata,adata);
 
  input clk,Rst,RD;   					 // RD is read signal from cpu to processor side buffer; here obtained from test bench
  input [31:0] base_dat_a,base_dat_b;   // base addresses of CSR column index and row index arrays respectively
  input [31:0] dataIn1,dataIn2; 	   //inputs to mem buffers; column index, row index, matrix and vector values are supplied from memory to HHT based on HHT address requests through these buffers (mem_buffers)
  input [31:0] csize;                 //number of non-zero column indices 
  input [31:0] cpu_addr;             //HHT is ON only when it sees this address on mem bus from cpu to memory so taken as an input
  
  /*** 32 bit address for memory requests and 5 bit address for register file requests
  Row index, column index, matrix value and vector values arrays are supposed to be supplied from cpu through specific registers (addresses known and shared between HHT and cpu)
 **/
 
  output [31:0] addr1,addr2;            //
  output reg [4:0] regaddr1,regaddr2;  //
  output reg [31:0] rdata;            //
  output reg [4:0] adata; 			 // 
  output reg hht; 					//HHT start signal indication to test bench

  reg be_init,fe_init;  							 //backend and frontend starts respectively
  reg [31:0]values;									//
  reg reset,cont;								   //
  reg [31:0] v_values_base, wdata_col_base;		  //
  reg [31:0] row_base,matrix_base;				 //
  reg rd_en1,rd_en2,wr_en1,wr_en2,wn1,wn2;      //
  reg wr,core_done,wn,be_done,fe_done;         //
  
  wire [31:0]mdata_col,vdata;
  wire [31:0]val,out_val,value;
  wire full, empty;
  wire mem_empty, mem_full,v_full,v_empty;
  wire [31:0] dataOut1, dataOut2;
  wire [15:0] counter, rpt;
  wire start;
  wire [31:0] data_req,vdata_req;
  
  logic [4:0] v_base,col_base,m_base,r_base;
  logic [1:0] mv;
  logic [1:0] vwn;

/***** Assigning controls *****/

  assign rd_en1 = be_init && wn1;           //Read enable to mem_buffer1 is ON only until BE is ON and is requesting using wn1
  assign rd_en2 = fe_init && wn2;          //Read enable to mem_buffer2 is ON only until FE is ON and is requesting using wn2
  assign wr_en1 = wn1 && !full;           //Write enable to mem_buffer1 is ON only when BE is requesting using wn1 and the processor side buffer is not full
  assign wr_en2 = wn2 && !full;          //Write enable to mem_buffer2 is ON only when FE is requesting using wn2 and the processor side buffer is not full
  assign fe_init = cont && !fe_done;    //Frontend is ON only when there are more values to be supplied by BE or supplied values are still being processed in FE
  
  assign start = reset;
  assign be_init = (be_done == 1'b0 && !full)?1'b1:1'b0;       //Backend is ON until it has values to be processed and processor side buffer is not full
  assign start = reset;
  assign reset = !Rst?(1'b0):(1'b1);
  
  assign addr1 = (be_init && !full)?data_req:31'd0;         //
  assign addr2 = (fe_init && !full)?vdata_req:31'd0;
  assign dataOut1 = (wr_en1 && rd_en1)?dataIn1: dataOut1;
  assign dataOut2 = (wr_en2 && rd_en2)?dataIn2: dataOut2;

/*****Logic to snoop on mem bus until cpu is requesting for certain range of addresses that 
requires assistance of HHT and then to obtain required register values from cpu to start HHT *****/
  
  always @ (posedge clk)begin
     if(!reset) begin       /** ON RESET**/
    	v_base = 5'd8;     /** vector value base address is stored in this register**/
    	col_base = 5'd6;  /** column index base address is stored in this register**/
    	r_base = 5'd15;  /** row index base address is stored in this register**/
    	m_base = 5'd9;  /** matrix value base address is stored in this register**/
    	mv = 2'b00;    /** to monitor initializing of values into registers step by step**/
    	hht =  1'b0;  /** initially HHT is OFF**/
  	
  	end else if (hht && be_init && !fe_init && mv == 2'b00) begin /** Initial state after HHT is ON **/
  		regaddr1 = col_base; 				    //Requesting register file for base column index address stored in this register through test bench
  		regaddr2 = r_base;  				   //Requesting register file for base row index address stored in this register through test bench
  		mv = 2'b01;				 			  //Next state
  	end else if (hht && be_init && !fe_init && mv == 2'b01) begin /** Second state after HHT is ON **/
  		wdata_col_base = base_dat_a;        //Requested column index address is obtained through test bench and stored in register
  		row_base = base_dat_b;             //Requested row index address is obtained through test bench and stored in register
  		regaddr1 = v_base; 				  //Requesting register file for base vector value address stored in this register through test bench
  		regaddr2 = m_base; 				 //Requesting register file for base matrix value address stored in this register through test bench
  		mv = 2'b10;						//Next state
  	end else if (hht && be_init && mv == 2'b10) begin /** Third state after HHT is ON **/
  		v_values_base = base_dat_a;   //
  		matrix_base = base_dat_b;    //
  		mv = 2'b10;                 //Stay in this state until reset
  	end else if (cpu_addr >= 32'd3 && cpu_addr <= 32'd126) /** if cpu is requesting in this address range then HHT is ON **/
  		hht = 1'b1;
  	else 
		mv = 2'b00; // Stay in initial state
  		
  end
  
  
/***** Instantiating BE, FE, memory buffers and processor buffer modules *****/
 
  backend be1 (clk,reset,be_init,wdata_col_base,row_base,data_req,wn1,be_done,mdata_col,rpt,counter,value,cont,mv);
  mem_buffer1 mbuff1(mdata_col, mem_full, mem_empty, clk, reset, wr_en1, rd_en1, dataOut1);
  mem_buffer2 vbuff1(vdata, v_full, v_empty, clk, reset, wr_en2, rd_en2, dataOut2);
  frontend fe1 (clk,reset,fe_init,v_values_base,matrix_base,counter,value,val,dataOut2,fe_done,wn2,vdata_req,vwn); 				
  fifo_buffer f2(adata,rdata,full, empty, clk, reset, start, RD, val); //Processor side buffer

endmodule


/*****BACKEND Design *****/
module backend(clk,reset,be_init,wdata_col_base,row_base,data_req,wn,be_done,rdata_col,rpt,c,value,cont,mv);
 
  input clk,be_init,reset;
  input [1:0] mv;
  input [31:0] wdata_col_base, row_base;
  input [31:0] rdata_col;
  output reg [31:0] data_req;
  reg [31:0] m_base,r_base;
  reg [31:0] count;
  output reg wn;
  output reg be_done,cont;
  output reg [31:0] value;
  reg [31:0] rvalue;
  output reg [15:0] rpt;
  reg [31:0] cols,vcols,prev;
  reg [31:0] ng;
  output reg [15:0] c;
  reg [15:0] v;



 always @(posedge clk) begin
     if(!reset) begin
        count = 1'b0;
        m_base = wdata_col_base;
	r_base = 32'd0;
	be_done = 1'b0;
	cont = 1'b0;
	rvalue = 32'd0;
	value = 32'd0;
    	wn = 1'b0;
	vcols = 32'd0;
	rpt = 16'd0;
	c = 16'd0;
	ng = 16'hFFFF;
     end    
     else if(mv==2'b10 && be_init && count == 16'b1111111111111110) begin
	count = 32'd7;
	wn = 1'b1;
     end
     else if (mv==2'b10 && be_init && rpt == 16'd0 && count <= 32'd1) begin
        m_base = wdata_col_base;
	data_req = row_base+r_base;  
	r_base = r_base + 32'd1;
	wn = 1'b1;
	count = count + 32'd1;
     end
     else if (mv==2'b10 && be_init && (count == 32'd2 || count == 32'd3)) begin
	wn = 1'b1;
    cols = rdata_col;
    rvalue = cols;
    count = count + 32'd1;
     end 
     else if (mv==2'b10 && be_init && (count == 32'd4 || count == 32'd5)) begin
	wn = 1'b1;
    cols = rdata_col;
    rvalue = cols;
    count = count + 32'd1;
     c = rvalue;
     v = c<<2;
     rpt = v;
     end

     else if(mv==2'b10 && be_init && v == 16'd0 && rpt == 16'd0) begin
     wn = 1'b1;
     data_req = row_base+r_base;  
	 r_base = r_base + 32'd1;
	 rpt = rpt+ng;
     end
     else if (mv==2'b10 && be_init && ((v>16'd2 && (v==rpt || rpt==(v+16'hFFFF))))) begin
	if(rpt %4 ==0) begin
	data_req = m_base;
	m_base = m_base + 32'd1;
	end
	wn = 1'b1;
    rpt = rpt+ng;
    rvalue = rdata_col;
     cont = 1'b1;
     end
    else if (mv==2'b10 && be_init && (rpt == 16'd0 || rpt == ng)) begin
     cont = 1'b1;
	wn = 1'b1;
    cols = rdata_col;
	count = count + 32'd1;
    rpt = rpt+ng;
     end
  else if (mv==2'b10 && be_init && rpt == 16'hFFFE && v == 16'd0) begin
     wn = 1'b1;
	count = count + 32'd1;
	cols = rdata_col;
	prev = rvalue;
	rpt = rpt+ng;
     cont = 1'b1;
     end
     else if (mv==2'b10 && be_init && rpt == 16'hFFFE) begin
     wn = 1'b1;
	count = count + 32'd1;
	cols = rdata_col;
	prev = rvalue;
	rpt = rpt+ng;
     cont = 1'b1;
value = cols;
     end
     else if (mv==2'b10 && be_init && count >= 32'd6 && rpt == 16'hFFFD) begin
if (v != 16'd0)
 value = cols;
     cont = 1'b1;
	wn = 1'b1;
	cols = rdata_col;
	rvalue = cols;
    count = count + 32'd1;
     rpt = rvalue;
     if(rvalue == prev)
     c= 16'd0;
     else begin
     prev = ~prev;
     c = rvalue+prev+16'd1;
     end
     v = c<<2;
     rpt = v;
     cont = 1'b1;
     end
    else if (mv==2'b10 && be_init && v==16'd2 && rpt>16'd0) begin
     	if (v == rpt) begin
     		data_req = m_base;
			m_base = m_base + 32'd1;
		end else if(rpt == 16'd1)begin
     		data_req = row_base+r_base;  
			r_base = r_base + 32'd1;
		end
		wn = 1'b1;
    	rpt = rpt+ng;
    	rvalue = rdata_col;
     	cont = 1'b1;
     end
     else if (mv==2'b10 && be_init && rpt == 16'd1 ) begin
     cont = 1'b1;
     data_req = row_base+r_base;  
	r_base = r_base + 32'd1;
	wn = 1'b1;
    cols = rdata_col;
	count = count + 32'd1;
    rpt = rpt+ng;
	//value = cols;
     cont = 1'b1;
     end
     else if (mv==2'b10 && be_init && rpt <= v+16'hFFFE && rpt > 16'd1) begin
     cont = 1'b1;
     if (rpt %4 == 0) begin
    	cols = rdata_col;
     	value = cols;
		data_req = m_base;
		m_base = m_base + 32'd1;
	end
	wn = 1'b1;
	count = count + 32'd1;
    rpt = rpt+ng;
     cont = 1'b1;
     end
     else begin
    	cols = rdata_col;
    	cont = 1'b0;
     end
end 
endmodule

/*****FRONTEND design *****/

module frontend(clk,reset,fe_init,v_values_base,matrix_base,counter,value,val,v_val,fe_done,wn,vdata_req,v_wn);
 // parameter V_SIZE = 3;
 // parameter COL_SIZE =5;
 // parameter BW = 32;

  input clk,fe_init,reset;
  input [31:0]value;
  input [31:0] v_values_base,matrix_base,v_val;
  output reg [31:0]val,vdata_req;
  output reg wn;
  output reg fe_done;
  reg [31:0] count;
  reg [31:0] mv_val,m_base, pval;
  reg [31:0] cval;
  input reg [15:0] counter;
  reg [15:0] c;
  output reg [1:0] v_wn;

  always @ (posedge clk) begin
 	if (!reset) begin
		val = 31'd0;
		//core_done = 1'b0;
		count = 32'd0;
		fe_done = 1'b0;
		wn = 1'b0;
		c = 16'd0;
		count = 32'd0;
		v_wn = 2'b0;
		m_base = 32'd0;
	end
	else if(fe_init && c == 16'd0 && v_wn == 2'b00) begin
		wn = 1'b1;
		cval = value;
		//pval = value;
		mv_val = v_val;
		val = mv_val;
		count = count + 32'd1;
		//c = counter+5'd1;
		v_wn = 2'b11;
    end
	else if(fe_init && c == 16'd0 && v_wn == 2'b11) begin
		wn = 1'b1;
		cval = pval;
		pval = value;
		mv_val = v_val;
		val = mv_val;
		c = counter+16'd1;
		v_wn = 2'b00;
    	end
    	else if (fe_init && c == 16'd1) begin
		mv_val = v_val;
		val = mv_val;
    		c = c+16'b1111111111111111;
		v_wn = 2'b00;
    	end
     else if(fe_init && c > 16'd0 && v_wn == 2'b00) begin
		wn = 1'b1;
		cval = pval;
		vdata_req = v_values_base + value;
		pval = value;
		mv_val = v_val;
		val = mv_val;
		count = count + 32'd1;
		v_wn = 2'b01;
    	end
 else if(fe_init && c > 16'd0 && v_wn == 2'b01) begin
		wn = 1'b1;	
		cval = pval;
		pval = value;
		mv_val = v_val;
		val = mv_val; 
		v_wn = 2'b10;
    	end
    	 else if(fe_init && c > 16'd0 && v_wn == 2'b10) begin
		wn = 1'b1;
		vdata_req = matrix_base +  m_base;
		cval = value;
		pval = value;
		mv_val = v_val;
		val = mv_val;									
		c = c+16'b1111111111111111;
		v_wn = 2'b11;
    	end
    	else if(fe_init && c > 16'd0 && v_wn == 2'b11) begin
		wn = 1'b1;	
		m_base = m_base + 32'd1;
		cval = value;
		pval = value;
		mv_val = v_val;
		val = mv_val;								
		v_wn = 2'b00;
    	end
	else if (fe_init && counter == 16'd0) begin
	wn=1'b1;
	v_wn = 2'b10;

	end

    	/*if(count == csize*5) begin
		fe_done = 1'b1;
		wn = 1'b0;
    	end*/
    else if(!fe_init) begin
    	wn = 1'b0;
    end
  end
endmodule


/***** PROCESSOR-SIDE BUFFER design *****/

module fifo_buffer (ADDR,DATAOUT, full, empty, clk, reset, wn, rn, DATAIN);
  output reg [31:0] DATAOUT;
  output reg [4:0] ADDR;
  output reg full, empty;
  input [31:0] DATAIN;
  input clk, reset, wn, rn; 
  
  reg wptr;
  reg rptr; 
  reg [31:0] memory[0:1]; // the stack is 32 bit wide and 2 locations in size
  reg [31:0] mem,r_mem;
  
  always @(posedge clk)
  begin
    if (!reset)
      begin
        wptr = 1'b0;
        rptr = 1'b0; 
        full = 1'b0;
        empty = 1'b1;
      end
    else if (wn && !full)
      begin
        mem = DATAIN;
        memory[wptr] = mem;
        wptr = wptr + 1;
      end
    else begin
    wptr = wptr;
    rptr = rptr;
    end
  if (reset && rn)   begin   
        DATAOUT = memory[rptr]; 
    if(rptr)
    	ADDR = 5'd26;
    else
    	ADDR = 5'd25;
    
        rptr = rptr + 1;
    end
    else begin
    wptr = wptr;
    rptr = rptr;
    end
      if(wptr == 1'b1 && rptr == 1'b0)
      	full = 1'b1;
      	else
      	 full = 1'b0;
      if(wptr == rptr)
         empty = 1'b1;
     else
         empty = 1'b0;
   // $display("Processor buffer: %d",DATAOUT);
  end
endmodule
