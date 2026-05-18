module Other_Operators;
  //for inside
  int a=36;
  int data[4];
  //for wildcard
  logic[3:0] x=4'b1010;
  logic[3:0] y=4'b0x1x;
  logic[3:0] result_w;
  //for implication
  bit A,B;
  
  initial begin
    //for inside Operation
    $display("\n-----------------------");
    $display("    Set_Membership     ");
    $display("-----------------------");
    data='{3,10,36,46};
    if (a inside {3,10,36,46})
      $display("a is in data");
    
    //for wildcard equality
    $display("\n------------------------");
    $display("   Wildcard Equality    ");
    $display("------------------------");
    $display("x = %b & y = %b",x,y);
    result_w = x==?y;
    $display("Wildcard Equality of x & y = %d",result_w);
    $display("\n------------------------");
    $display("   Wildcard Inquality    ");
    $display("------------------------");
    $display("x = %b & y = %b",x,y);
    result_w = x!=?y;
    $display("Wildcard Equality of x & y = %d",result_w);
    //for Implication
    $display("\n---------------------------");
    $display("    Logical Implication    ");
    $display("---------------------------");
    $display("--------Logical Implication---------");
    A=0;B=1;
    $display("\n!A =%b B = %b",A,B);
    $display("\n!A || B : %b",A->B);
    $display("(!A || B)&&(A ||!B) : %b\n",(A<->B));
        A=1;B=0;
    $display("\n!A =%b B = %b",A,B);
    $display("\n!A || B : %b",A->B);
    $display("(!A || B)&&(A ||!B) : %b\n",(A<->B));
        A=1;B=1;
    $display("\n!A =%b B = %b",A,B);
    $display("\n!A || B : %b",A->B);
    $display("(!A || B)&&(A ||!B) : %b\n",(A<->B));
        A=0;B=0;
    $display("\n!A =%b B = %b",A,B);
    $display("\n!A || B : %b",A->B);
    $display("(!A || B)&&(A ||!B) : %b\n",(A<->B));
  end
endmodule


/*


-----------------------
    Set_Membership     
-----------------------
a is in data

------------------------
   Wildcard Equality    
------------------------
x = 1010 & y = 0x1x
Wildcard Equality of x & y =  0

------------------------
   Wildcard Inquality    
------------------------
x = 1010 & y = 0x1x
Wildcard Equality of x & y =  1

---------------------------
    Logical Implication    
---------------------------
--------Logical Implication---------

!A =0 B = 1

!A || B : 1
(!A || B)&&(A ||!B) : 0


!A =1 B = 0

!A || B : 0
(!A || B)&&(A ||!B) : 0


!A =1 B = 1

!A || B : 1
(!A || B)&&(A ||!B) : 1


!A =0 B = 0

!A || B : 1
(!A || B)&&(A ||!B) : 1

           V C S   S i m u l a t i o n   R e p o r t


*/
