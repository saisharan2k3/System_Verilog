module for_each;
  int q[$];
  function void count(int q[$]);
    int pos_num;
    int neg_num;
    int zero_num;
    int sum;
    pos_num=0;
    neg_num=0;
    zero_num=0;
    sum=0;
    foreach(q[i])begin
      sum+=q[i];
      if(q[i]>0)
      pos_num++;
      else if(q[i]<0)
      neg_num++;
      else
        zero_num++;
    end
    $display("Queue = %p",q);
    $display("Total Sum      = %0d",sum);
    $display("Positive Count = %0d",pos_num);
    $display("Negative Count = %0d",neg_num);
    $display("Zero Count     = %0d",zero_num);
    $display("----------------------------------------------------");
  endfunction
  initial begin
    $display("--------------------------");
    $display("       FOREACH Loop");
    $display("--------------------------\n");

    q={76,45,6,-5,-77,0};
    count(q);
    
    q={6,-5,6,35,27};
    count(q);
    
    q='{0,-25,20,-19,3,30,90,78,4,-2,-9,3,0};
    count(q);
    
    q='{-99,28,17,45,-26,-72,31,0,73,8,1};
    count(q);
  end
endmodule


*/

--------------------------
       FOREACH Loop
--------------------------

Queue = '{76, 45, 6, -5, -77, 0} 
Total Sum      = 45
Positive Count = 3
Negative Count = 2
Zero Count     = 1
----------------------------------------------------
Queue = '{6, -5, 6, 35, 27} 
Total Sum      = 69
Positive Count = 4
Negative Count = 1
Zero Count     = 0
----------------------------------------------------
Queue = '{0, -25, 20, -19, 3, 30, 90, 78, 4, -2, -9, 3, 0} 
Total Sum      = 173
Positive Count = 7
Negative Count = 4
Zero Count     = 2
----------------------------------------------------
Queue = '{-99, 28, 17, 45, -26, -72, 31, 0, 73, 8, 1} 
Total Sum      = 6
Positive Count = 7
Negative Count = 3
Zero Count     = 1
----------------------------------------------------
           V C S   S i m u l a t i o n   R e p o r t

*/
