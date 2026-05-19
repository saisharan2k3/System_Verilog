module case_State;
  int a;
  function void og(int a);
    $display("integer a is %0d",a);
    
    unique case(1)
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

Warning-[RT-MTOCMUCS] More than one condition match in statement
testbench.sv, 6
  More than one condition matches are found in 'unique case' statement inside 
  case_State.og, at time 0ns.
  
  Line number 8 and 11 are overlapping.

-----------------------------
integer a is 3
Input is positive
-----------------------------
integer a is 1000
Input is positive

Warning-[RT-MTOCMUCS] More than one condition match in statement
testbench.sv, 6
  More than one condition matches are found in 'unique case' statement inside 
  case_State.og, at time 0ns.
  
  Line number 9 and 10 are overlapping.

-----------------------------
integer a is -20
Input is negative
-----------------------------
integer a is 0
Input is Zero
-----------------------------
integer a is 0
Input is Zero
-----------------------------
           V C S   S i m u l a t i o n   R e p o r t


  */
