module ternary;
  int a=45;
  int b=52;
  int High;
  
  initial begin
    High=(a>b)?a:b;
    $display("\n------------------------------");
    $display("      Conditional Operator      ");
    $display("--------------------------------");
    $display("a is %0d",a);
    $display("b is %0d",b);
    $display("Highest is %0d",High);
  end
endmodule

/*


------------------------------
      Conditional Operator      
--------------------------------
a is 45
b is 52
Highest is 52


*/
