module packed_array;
    bit [3:0][7:0] p1, p3, p5;
  bit [31:0] a = 32'h11223344;
  bit [7:0][3:0] p4;
  bit [7:0] u[4];
  initial begin
  //1
  $display("\n--- Q1 ---");
  p1 = 32'hAABBCCDD;
  $display("Q1 Output p1[1] = %h", p1[1]);
  //2
  $display("\n--- Q2 ---");
    u[0] = 8'hAA;
    u[1] = 8'hBB;
    u[2] = 8'hCC;
    u[3] = 8'hDD;
    $display("Q2 Output u = %h %h %h %h", u[0], u[1], u[2], u[3]);
  //3
   $display("\n--- Q3 ---");
    p3 = a;
    $display("Q3 Output p3 = %d %d %d %d",
              p3[0], p3[1], p3[2], p3[3]);
  //4
   $display("\n--- Q4 ---");
    p4 = 32'h12345678;
    $display("Q4 Output p4[6] = %h", p4[6]);
  //5
  $display("\n--- Q5 ---");
    p5 = 32'hAABBCCDD;
    $display("Q5 Output p5[2][3:0] = %h", p5[2][3:0]);

  end





// OUTPUT
--- Q1 ---
Q1 Output p1[1] = cc

--- Q2 ---
Q2 Output u = aa bb cc dd

--- Q3 ---
Q3 Output p3 =  68  51  34  17

--- Q4 ---
Q4 Output p4[6] = 2

--- Q5 ---
Q5 Output p5[2][3:0] = b
  

endmodule
