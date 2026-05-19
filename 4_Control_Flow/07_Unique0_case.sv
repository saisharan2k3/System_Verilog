module case_State;
  integer a;
  function void og(integer a);
    $display("integer a is %0d",a);
    
    unique0 case(1)
      (a==0): $display("Input is Zero");
      (a<0): $display("Input is negative");
      (a>0): $display("Input is positive");
      (a>100): $display("Input is higher than 100");
      (a<-100): $display("Input is lesser than -100");
      default:$display("Input is unknown");
    endcase
    
    $display("-----------------------------");
  endfunction
  
  initial begin
  $display("\n---------------------------");
  $display("          Case             ");
  $display("---------------------------");
  
    a=5;
    og(a);
    
    a=-250;
    og(a);
    
    a=3;
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

---------------------------
          Case             
---------------------------
integer a is 5
Input is positive
-----------------------------
integer a is -250
Input is negative

Warning-[RT-MTOCMU0CS] More than one condition matches in statement
testbench.sv, 6
  Unique0 case statement inside case_State.og matches more than one condition 
  at time 0ns.
  
  Line numbers 8 and 11 match.

-----------------------------
integer a is 3
Input is positive
-----------------------------
integer a is 1000
Input is positive

Warning-[RT-MTOCMU0CS] More than one condition matches in statement
testbench.sv, 6
  Unique0 case statement inside case_State.og matches more than one condition 
  at time 0ns.
  
  Line numbers 9 and 10 match.

-----------------------------
integer a is -20
Input is negative
-----------------------------
integer a is x
Input is unknown
-----------------------------
integer a is z
Input is unknown
-----------------------------
           V C S   S i m u l a t i o n   R e p o r t 


*/
