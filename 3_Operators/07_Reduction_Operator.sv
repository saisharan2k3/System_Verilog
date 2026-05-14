module Reduction;
  logic[2:0] a=5;
  initial begin
    $display("\n------------------------------");
    $display("      Reduction OPERATOR        ");
    $display("------------------------------\n");
    $display(" Reduction AND of %0b  :  %0b",a,&a);
    $display(" Reduction NAND of %0b  :  %0b",a,~&a);
    $display(" Reduction OR of %0b  :  %0b",a,|a);
    $display(" Reduction NOR of %0b  :  %0b",a,~|a);
    $display(" Reduction XOR of %0b  :  %0b",a,^a);
    $display(" Reduction XNOR of %0b  :  %0b",a,~^a);
  
a=7;
    $display("------------------------------\n");
$display(" Reduction AND of %0b  :  %0b",a,&a);
    $display(" Reduction NAND of %0b  :  %0b",a,~&a);
    $display(" Reduction OR of %0b  :  %0b",a,|a);
    $display(" Reduction NOR of %0b  :  %0b",a,~|a);
    $display(" Reduction XOR of %0b  :  %0b",a,^a);
    $display(" Reduction XNOR of %0b  :  %0b",a,~^a);
    end
endmodule
/*
------------------------------
      Reduction OPERATOR        
------------------------------

 Reduction AND of 101  :  0
 Reduction NAND of 101  :  1
 Reduction OR of 101  :  1
 Reduction NOR of 101  :  0
 Reduction XOR of 101  :  0
 Reduction XNOR of 101  :  1
------------------------------

 Reduction AND of 111  :  1
 Reduction NAND of 111  :  0
 Reduction OR of 111  :  1
 Reduction NOR of 111  :  0
 Reduction XOR of 111  :  1
 Reduction XNOR of 111  :  0
           V C S   S i m u l a t i o n   R e p o r t
/*
