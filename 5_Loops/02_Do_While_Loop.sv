module while_loop;
  int num;
  
  
  function void sum(int n);
    int sum;
    int temp;
    sum=0;
    temp=n;
      do begin
      if(n>0)begin
         sum=sum+n;
         n--;
        end
      else begin
        sum=sum+n;
        n++;
       end
    end
      while(n!=0);
    $display("Sum of %0d numbers from 0 : %0d",temp,sum);
    $display("\n----------------------------------\n");
    
  endfunction
  
  initial begin
    $display("----------------------------------");
    $display("           Do While Loop          ");
    $display("----------------------------------\n");
    num=1500;
    $display("NUMBER : %0d",num);
    sum(num);
    
    num=380;
    $display("NUMBER : %0d",num);
    sum(num);
    
    num=-100;
    $display("NUMBER : %0d",num);
    sum(num);
    
    num=-500;
    $display("NUMBER : %0d",num);
    sum(num);
    
  end 
endmodule


/*


----------------------------------
           Do While Loop          
----------------------------------

NUMBER : 1500
Sum of 1500 numbers from 0 : 1125750

----------------------------------

NUMBER : 380
Sum of 380 numbers from 0 : 72390

----------------------------------

NUMBER : -100
Sum of -100 numbers from 0 : -5050

----------------------------------

NUMBER : -500
Sum of -500 numbers from 0 : -125250

----------------------------------

           V C S   S i m u l a t i o n   R e p o r t
