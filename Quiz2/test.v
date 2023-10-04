module lab1(a, b, c);
  input a, b;
  output c;
  assign c = ~(a & b);
endmodule


module jdoodle;
    reg a, b;
    wire c;

    // call function
    lab1 mine(a, b, c);
    initial begin
        a=1; b = 0;
        #1
        $display ("Welcome to JDoodle!!!");
        $display("PASS: a=%b b=%b c=%b", a, b, c);
        $finish;
    end
endmodule