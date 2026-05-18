module unique_if;
integer a;
  function void og(integer a);
    $display("\ninput a = %0d",a);
    unique if(a==0)
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
    $display("        Unique_if         ");
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
        Unique_if         
--------------------------

input a = 5
input is positive
---------------------

input a = -200
input is negative

Warning-[RT-MTOCMUIF] More than one condition match in statement
testbench.sv, 5
  More than one condition matches are found in 'unique if' statement inside 
  unique_if.og, at time 0ns.
  
  Line number 11 and 13 are overlapping.

---------------------

input a = 0
input is zero
---------------------

input a = 100
input is positive
---------------------

input a = 1000
input is positive

Warning-[RT-MTOCMUIF] More than one condition match in statement
testbench.sv, 5
  More than one condition matches are found in 'unique if' statement inside 
  unique_if.og, at time 0ns.
  
  Line number 7 and 9 are overlapping.

---------------------

input a = -20
input is negative
---------------------

input a = x

Warning-[RT-NCMUIF] No condition matches in statement
testbench.sv, 5
  No condition matches in 'unique if' statement. 'else' statement is missing 
  for the last 'else if' block, inside unique_if.og, at time 0ns.

---------------------

input a = z

Warning-[RT-NCMUIF] No condition matches in statement
testbench.sv, 5
  No condition matches in 'unique if' statement. 'else' statement is missing 
  for the last 'else if' block, inside unique_if.og, at time 0ns.

---------------------
           V C S   S i m u l a t i o n   R e p o r t

/*
