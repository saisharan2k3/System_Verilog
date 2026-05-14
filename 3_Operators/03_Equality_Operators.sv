module equality;
  logic[3:0] a=10;
  logic[4:0] b=20;
  initial begin
    $display("---------------------");
    $display("  Equality Operator  ");
    $display("---------------------");
    $display("%0d is CASE equal tp %0d:%s",a,b,a===b?"TRUE":"FALSE");
    $display("%0d is CASE inequal tp %0d:%s",a,b,a!==b?"TRUE":"FALSE");
    $display("%0d is equal tp %0d:%s",a,b,a==b?"TRUE":"FALSE");
    $display("%0d is inequal tp %0d:%s",a,b,a!=b?"TRUE":"FALSE");
    
    a='b0101;
    b='b0100;
    $display("%0d is CASE equal tp %0d:%s",a,b,a===b?"TRUE":"FALSE");
    $display("%0d is CASE inequal tp %0d:%s",a,b,a!==b?"TRUE":"FALSE");
    $display("%0d is equal tp %0d:%s",a,b,a==b?"TRUE":"FALSE");
    $display("%0d is inequal tp %0d:%s",a,b,a!=b?"TRUE":"FALSE");
    
    a='b1010;
    b='b0x01;
    $display("%0d is CASE equal tp %0d:%s",a,b,a===b?"TRUE":"FALSE");
    $display("%0d is CASE inequal tp %0d:%s",a,b,a!==b?"TRUE":"FALSE");
    $display("%0d is equal tp %0d:%s",a,b,a==b?"TRUE":"FALSE");
    $display("%0d is inequal tp %0d:%s",a,b,a!=b?"TRUE":"FALSE");
    
    
    a='b101x;
    b='b101x;
    $display("%0d is CASE equal tp %0d:%s",a,b,a===b?"TRUE":"FALSE");
    $display("%0d is CASE inequal tp %0d:%s",a,b,a!==b?"TRUE":"FALSE");
    $display("%0d is equal tp %0d:%d",a,b,a==b);
    $display("%0d is inequal tp %0d:%d",a,b,a!=b);
    
  end
endmodule



\OUTPUT\

---------------------
  Equality Operator  
---------------------
10 is CASE equal tp 20:FALSE
10 is CASE inequal tp 20: TRUE
10 is equal tp 20:FALSE
10 is inequal tp 20: TRUE
5 is CASE equal tp 4:FALSE
5 is CASE inequal tp 4: TRUE
5 is equal tp 4:FALSE
5 is inequal tp 4: TRUE
10 is CASE equal tp X:FALSE
10 is CASE inequal tp X: TRUE
10 is equal tp X:FALSE
10 is inequal tp X: TRUE
X is CASE equal tp X: TRUE
X is CASE inequal tp X:FALSE
X is equal tp X:x
X is inequal tp X:x
           V C S   S i m u l a t i o n   R e p o r t 
