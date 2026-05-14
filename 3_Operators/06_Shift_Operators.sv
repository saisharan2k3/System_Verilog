module shifting;
  logic signed[3:0] a=9;
  logic signed[3:0] b=1;
  initial begin
    $display("\n------------------------------");
    $display("     SHIFTING OPERATOR        ");
    $display("------------------------------\n");
    $display("%0b Left Shift it %0b times: %0b",a,b,a<<b);
    $display("%0b Right Shift it %0b times: %0b",a,b,a>>b);
    $display("%0b Arithmetic Left Shift it %0b times: %0b",a,b,a<<<b);
    $display("%0b Arithmetic Right Shift it %0b times: %0b",a,b,a>>>b);
    
    a=13;
    b=2;
    $display("%0b Left Shift it %0d times: %0b",a,b,a<<b);
    $display("%0b Right Shift it %0d times: %0b",a,b,a>>b);
    $display("%0b Arithmetic Left Shift it %0d times: %0b",a,b,a<<<b);
    $display("%0b Arithmetic Right Shift it %0d times: %0b",a,b,a>>>b);
  end
endmodule

/*

------------------------------
     SHIFTING OPERATOR        
------------------------------

1001 Left Shift it 1 times: 10
1001 Right Shift it 1 times: 100
1001 Arithmetic Left Shift it 1 times: 10
1001 Arithmetic Right Shift it 1 times: 1100
1101 Left Shift it 2 times: 100
1101 Right Shift it 2 times: 11
1101 Arithmetic Left Shift it 2 times: 100
1101 Arithmetic Right Shift it 2 times: 1111
           V C S   S i m u l a t i o n   R e p o r t 


*/
