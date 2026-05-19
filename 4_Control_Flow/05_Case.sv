module case_State;
  int a;
  function void og(int a);
    $display("integer a is %0d",a);
    case(1)
      (a==0): $display("Input is Zero");
      (a<0): $display("Input is negative");
      (a>0): $display("Input is positive");
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
    
    a=-2;
    og(a);
    
    a=3;
    og(a);
    
    a=0;
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
integer a is -2
Input is negative
-----------------------------
integer a is 3
Input is positive
-----------------------------
integer a is 0
Input is Zero
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
