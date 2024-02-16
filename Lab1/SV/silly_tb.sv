`timescale 1ns / 1ps
module tb;  //name should match and does :) 
	//inputs
   logic        [3:0]a,b;
   logic 		cin; // as seen in vid, cin doesnt need more than one bit
   //logic 		[3:0]y; is this used? answer , no  
    //outputs
   logic 		[4:0]sum;
   logic 		[4:0]Sum_correct;
   logic 		[3:0]cout;

   logic        clk; 

   	integer handle3;
	integer desc3;
	integer i;

  // instantiate device under test
   	//silly dut (a, b, c, y);

	ripcad dut1(a,b,cin,sum);
	assign Sum_correct = a + b + cin;
	//bible has only 4 values. i dont really know how, currently finding out.

	/////////////////////////////////////////////////////////////////

	
   	// 20 ns clock
	// i copied this :) the video (bible) said so >>
   	
initial
	begin
	handle3 = $fopen("ripcad.out");
	desc3 = handle3;
	#1250 $finish;
	end

initial
	begin
	for (i=0; i < 128; i=i+1)
	begin
		// Put vectors before beginning of clk
		@(posedge clk)
		begin
			A = $random;
			B = $random;
			Sum_correct = A+B+cin; 
			//might need to use something thats not cin donno. also prob in wrong place 
		end
		@(negedge clk)
		begin
		$fdisplay(desc3, "%h %h || %h | %h | %b", A, B, Sum, Sum_correct, (Sum == Sum_correct));
		end
	end // @(negedge clk)
end

   
endmodule

/* yapping area >>>
//theoretically this should work but i have and will be wrong :P
// also the rippcad needs to instanciate in its own little file no?
(post run clarity)
// this was probably just a middle stage but i got it to run however i didnt check any specific values.
i believe we need to grab the bible testbench and go off that or replicate what we saw in the video.
full adder needs to instaciate into the ripcad for short and then we test that against goldilocks (golden vectors)
(i like making up words, another one of my past times)
 
 >>TO DO<<
 0.9. im gonna copy this file and start the ripcad.sv becaus ethe instanciation is here already.
 1. consider making the ripcad file (not confident i compleately understand it but ill fid out)
 2. make the test bench test bench but better (bible bench needed)
 3. make sure it runs AKA add ripcad to silly.do and error test.
 4.uhhhh thats all i can think of rn.

 *///