module for_loop;
  int num;
  function void sum(int n);	
    int sum;
    int temp;
    sum=0;
    temp=n;
    if(n>0) begin
      for(;n>0;n--);
      sum=sum+n;
    end
    else begin
      for(;n<0;n++);
      sum=sum+n;
    end
    $display("Sum of %0d numbers from 0 : %0d",temp,sum);
    $display("\n----------------------------------\n");
  endfunction
   initial begin
    $display("----------------------------------");
    $display("            FOR Loop");
    $display("----------------------------------\n");
    num=990;
    $display("NUMBER : %0d",num);
    sum(num);
    
    num=820;
    $display("NUMBER : %0d",num);
    sum(num);
    
    num=-20;
    $display("NUMBER : %0d",num);
    sum(num);
    
    num=-400;
    $display("NUMBER : %0d",num);
    sum(num);
    
  end 
endmodule


/*


----------------------------------
            FOR Loop
----------------------------------

NUMBER : 990
Sum of 990 numbers from 0 : 490545

----------------------------------

NUMBER : 820
Sum of 820 numbers from 0 : 336610

----------------------------------

NUMBER : -20
Sum of -20 numbers from 0 : -210

----------------------------------

NUMBER : -400
Sum of -400 numbers from 0 : -80200

----------------------------------

           V C S   S i m u l a t i o n   R e p o r t 



*/
