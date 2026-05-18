module concantenation;
  logic[3:0] a=4'b0110;
  logic[3:0] b=4'b1100;
  logic[15:0] result;
  logic[99:0] result_b;
  
  initial begin
    $display("\n------------------------------");
    $display("     Concatenation Operator     ");
    $display("------------------------------\n");
    result={a,b};
    
    $display("a = %b",a);
    $display("b = %b",b);
    $display("Concatenation of %b and %b = %b",a,b,result);
    $display("------------------------------\n");
    a=4'd15;
    b=4'd13;
    result={a,b};
    $display("a = %b",a);
    $display("b = %b",b);
    $display("Concatenation of %b and %b = %b",a,b,result);
    $display("\n------------------------------");
    $display("      Replication Operator      ");
    $display("------------------------------\n");
    a=4'b0100;
    b=4'b0101;
    result_b={a{b}};
    $display("a = %b",a);
    $display("b = %b",b);
    $display("Replication of %b and %b = %b",a,b,result_b);
    $display("------------------------------\n");
    a=4'd8;
    b=5'd31;
    result_b={a{b}};
    $display("a = %b",a);
    $display("b = %b",b);
    $display("Replication of %b and %b = %b",a,b,result_b);
    $display("------------------------------\n");
  end
endmodule

/*

------------------------------
     Concatenation Operator     
------------------------------

a = 0110
b = 1100
Concatenation of 0110 and 1100 = 0000000001101100
------------------------------

a = 1111
b = 1101
Concatenation of 1111 and 1101 = 0000000011111101

------------------------------
      Replication Operator      
------------------------------

a = 0100
b = 0101
Replication of 0100 and 0101 = 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000101010101010101
------------------------------

a = 1000
b = 1111
Replication of 1000 and 1111 = 0000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111
------------------------------
*/
