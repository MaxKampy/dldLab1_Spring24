module fullAdder (input  logic a, b, c, output logic sum, cout);
   
  assign sum = (~a & ~b & c) | (~a & b & ~c) | (a & ~b & ~c) | (a & b & c);
   assign cout = (a & b & ~c) | (a & ~b & c) | (~a & b & c) | (a & b & c);
   
endmodule
