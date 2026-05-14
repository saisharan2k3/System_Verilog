module logical;
  int a=4'b0101;
  int b=4'b0011;
  
  initial begin
    $display("\n--------------------");
    $display("   LOGICAL OPERATOR   ");
    $display("--------------------\n");
    $display("%0d AND %0d: %0d",a,b,a&&b);
    $display("%0d OR %0d: %0d",a,b,a||b);
    $display(" NOT %0d: %0d",a,!a);
  end
endmodule

\OUTPUT\

--------------------
   LOGICAL OPERATOR   
--------------------

5 AND 3: 1
5 OR 3: 1
 NOT 5: 0
           V C S   S i m u l a t i o n   R e p o r t 
