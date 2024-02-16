
module fullAdder (input  logic a, b, c, output logic sum, cout);
   
  assign sum = a^b^c;
  assign cout = a&b|b&c|a&c;
   
endmodule
/*module fullAdder (input  logic a, b, c, output logic sum, cout);
   
  assign sum = (~a & ~b & c) | (~a & b & ~c) | (a & ~b & ~c) | (a & b & c);
   assign cout = (a & b & ~c) | (a & ~b & c) | (~a & b & c) | (a & b & c);
   
endmodule
i personally prefer the simpler format so i changed it :P
most snarky comments brought to you by luke pierce :) its my favorite past time
*/