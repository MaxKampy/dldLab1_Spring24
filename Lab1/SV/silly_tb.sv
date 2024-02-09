`timescale 1ns / 1ps
module tb ();

   logic        [3:0]a;
   logic 		[3:0]b;
   logic 		[3:0]c;
   logic 		[3:0]y;
   logic        [3:0]clk;   
   logic 		[3:0]sum;
   logic 		[3:0]cout;


  // instantiate device under test
   	//silly dut (a, b, c, y);

	fullAdder fA1(a[0],b[0],cin,sum[0],cout[1]);
	fullAdder fA2(a[1],b[1],c[1],sum[1],cout[2]);
	fullAdder fA3(a[2],b[2],c[2],sum[2],cout[3]);
	fullAdder fA4(a[3],b[3],c[3],sum[3],cout[4]);


 ////////////////////////////////////////////////////////////////////
	

	
   	// 20 ns clock
   	initial 
     	begin	
	clk = 1'b1;
	forever #10 clk = ~clk;
     	end


   initial
     begin
    
	#0   a = $random;	
	#0   b = $random;
	#0   c = $random;

	#20   a = $random;	
	#0   b = $random;
	#0   c = $random;

	#20   a = $random;	
	#0   b = $random;
	#0   c = $random;

	#20   a = $random;	
	#0   b = $random;
	#0   c = $random;

	#20   a = $random;	
	#0   b = $random;
	#0   c = $random;

	#20  a = $random;	
	#0   b = $random;
	#0   c = $random;

	#20   a = $random;	
	#0   b = $random;
	#0   c = $random;

		

	

     end

   
endmodule
