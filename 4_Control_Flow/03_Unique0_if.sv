module unique0_if;
integer a;
  function void og(integer a);
    $display("\ninput a = %0d",a);
    unique0 if(a==0)
      $display("input is zero");
    else  if(a>0)
      $display("input is positive");
    else  if(a>100)
      $display("input is greater than 100");
    else  if(a<0)
      $display("input is negative");
    else  if(a<-100)
      $display("input is lesser than -100");
    $display("---------------------");
  endfunction
  initial begin
    $display("\n--------------------------");
    $display("        Unique0_if         ");
    $display("--------------------------");
    a=5;
    og(a);
    
    a=-200;
    og(a);
    
    a=0;
    og(a);
    
    a=100;
    og(a);
    
    a=1000;
    og(a);
    
    a=-20;
    og(a);
    
    a=32'hx;
    og(a);
    
    a=32'hz;
    og(a);
  end
endmodule

/*

--------------------------
        Unique0_if         
--------------------------

input a = 5
input is positive
---------------------

input a = -200
input is negative

Warning-[RT-MTOCMU0IF] More than one condition match in statement
testbench.sv, 5
  Unique0 if statement inside unique_if.og matches more than one condition at 
  time 0ns.
  
  Line number 11 and 13 match.

---------------------

input a = 0
input is zero
---------------------

input a = 100
input is positive
---------------------

input a = 1000
input is positive

Warning-[RT-MTOCMU0IF] More than one condition match in statement
testbench.sv, 5
  Unique0 if statement inside unique_if.og matches more than one condition at 
  time 0ns.
  
  Line number 7 and 9 match.

---------------------

input a = -20
input is negative
---------------------

input a = x
---------------------

input a = z
---------------------
           V C S   S i m u l a t i o n   R e p o r t 


/*
