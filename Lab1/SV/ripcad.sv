`timescale 1ns / 1ps
module ripcad(input  logic a, b, cin, output logic sum); //only 4 values, 
	//inputs
   logic        [3:0]a;
   logic 		[3:0]b;
   logic 		cin; // as seen in vid, cin doesnt need more than one value
    //outputs
   logic 		[4:0]sum;
   logic 		[3:0]cout;


// i changed c to the cout of previous instance as explained in lab 1 vid (basically the bible) 
	fullAdder fA1(a[0],b[0],cin,sum[0],cout[0]);
	fullAdder fA2(a[1],b[1],cout[0],sum[1],cout[1]);
	fullAdder fA3(a[2],b[2],cout[1],sum[2],cout[2]);
	fullAdder fA4(a[3],b[3],cout[2],sum[3],cout[3]);
assign sum[4] = sum[3]+cout[3]; // on a limb


endmodule
	/* yapping area p2 >>>
pov i copied it 
pov im trying to comprehend how to tell the computer how to ripcad
comparable to teaching my mom why she should say "gyat" in public or private let alone ever again.
anyway
ripcad needs to gen a 5 bit thingymajig
so-
we carry outputs, which is done
so now it should out put sum [0-3] with cout [3] in the front
i dont see anything wrong yet and im scared
ill just pretend its right
 *////////////////////////////////////////////////////////////////////
	