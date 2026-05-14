module arith;
  int a=34;
  int b=56;
  longint out[6];
  
  initial begin
    out[0]=a+b;
    out[1]=a-b;
    out[2]=a*b;
    out[3]=a/b;
    out[4]=a%b;
    out[5]=a**b;
    
    $display("----------------------");
    $display("  Aritmetic_Operator  ");
    $display("----------------------");
    $display("Addition: %0d+%0d=%0d",a,b,out[0]);
    $display("Subtraction: %0d-%0d=%0d",a,b,out[1]);
    $display("Multiplication: %0d*%0d=%0d",a,b,out[2]);
    $display("Division: %0d/%0d=%0d",a,b,out[3]);
    $display("Modulus: %0d MOD %0d=%0d",a,b,out[4]);
    $display("Exponent: %0d^%0d=%0d",a,b,out[5]);
  end
endmodule

/OUTPUT\

----------------------
  Aritmetic_Operator  
----------------------

Addition: 34+56=90
Subtraction: 34-56=-22
Multiplication: 34*56=1904
Division: 34/56=0
Modulus: 34 MOD 56=34
Exponent: 34^56=-9151314442816847872
           V C S   S i m u l a t i o n   R e p o r t 
