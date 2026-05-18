module if_else;
  integer a;
  function void og(integer a);
    $display("input a = %d",a);
    if (a==0)
      $display("Input is Zero");
    else if(a>0)
      $display("Input is Positive");
    else if(a<0)
      $display("Input is Negative");
    else 
      $display("Input is Unknown");
    
    $display("------------------------");
  endfunction
  initial begin
    $display("-------If_Else--------");
    a=5;
    og(a);
    a=0;
    og(a);
    a=-4;
    og(a);
    a=32'hx;
    og(a);
  end
endmodule

*/

-------If_Else--------
input a =           5
Input is Positive
------------------------
input a =           0
Input is Zero
------------------------
input a =          -4
Input is Negative
------------------------
input a =           x
Input is Unknown
------------------------
           V C S   S i m u l a t i o n   R e p o r t

*/
