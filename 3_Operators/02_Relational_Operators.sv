module relational;
  int a=92;
  int b=57;
  initial begin
    $display("\n-------------------");
             $display("  Relational Operator  ");
             $display("-------------------\n");
    $display("%0d is greater than %0d = %0s",a,b,a>b?"TURE":"FALSE");
    $display("%0d is lesser than %0d = %0s",a,b,a<b?"TRUE":"FALSE");
    $display("%0d is grater than and equal to %0d = %0s",a,b,a>=b?"TRUE":"FALSE");
    $display("%0d is lesser than and equal to %0d = %0s",a,b,a<=b?"TRUE":"FALSE");
             end
             endmodule

\OUTPUT\

-------------------
  Relational Operator  
-------------------

92 is greater than 57 = TURE
92 is lesser than 57 = FALSE
92 is grater than and equal to 57 = TRUE
92 is lesser than and equal to 57 = FALSE
           V C S   S i m u l a t i o n   R e p o r t 
