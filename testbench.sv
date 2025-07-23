// Code your testbench here
// or browse Examples
module tb_half_adder;
  reg A, B;
  wire sum, carry;
  half_adder ha ( 
    .A(A),
    .B(B),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    $monitor("Time=%0d A=%b B=%b => sum=%b carry=%b", $time, A, B, sum, carry);
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
  end
endmodule
    
      