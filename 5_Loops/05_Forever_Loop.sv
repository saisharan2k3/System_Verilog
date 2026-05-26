module test;

  function int mul_7(int n);
    int i ;
    i = n;
    forever begin
      if (i % 7 == 0)
        return i;  
      i++;
    end
      $display("-------------------------------");
  endfunction


  initial begin
    $display("%0d", mul_7(10));  
    $display("%0d", mul_7(21));  
    $display("%0d", mul_7(25));  
  end

endmodule

*/

14
21
28
           V C S   S i m u l a t i o n   R e p o r t

*/
