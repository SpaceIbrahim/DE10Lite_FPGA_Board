`timescale 1ns / 1ns
`include "Quiz2/test.v"

module test_rn;
reg A;
wire B;

test uut(A, B);

initial 
begin
    $display("Test Complete");
end

endmodule

