module fork_join_any;
  task automatic display(input string a,b);
    #5;
    $display("\t%s at %0t",a,$time);
    #5;
    $display("\t%s at %0t",b,$time);
  endtask
  initial begin
    // with fork_join_any
    $display("====================================");
    $display("          With Fork-Join_any");
    $display("====================================");
    
    fork
      begin:child_1
        display("Thread 1 started","Thread 1 Ended");
        display("Thread 2 started","Thread 2 Ended");
        #5;
        $display("child_1 finished at %0t",$time);       
      end:child_1
      begin:child_2
        display("Thread 3 started","Thread 3 ended");
        display("Thread 4 started","Thread 4 ended");
        display("Thread 5 started","Thread 5 ended");
        #0;
        $display("child_2 finished at %0t",$time);
      end:child_2
    join_any
    
    $display("------------------------------------");
    $display("     Outside after Fork-Join_any");
    $display("------------------------------------");

    //without fork-join
    display("Thread 6 started","Thread 6 ended");
    display("Thread 7 started","Thread 7 ended");
    display("Thread 8 started","Thread 8 ended");
  end
endmodule

/*

====================================
          With Fork-Join_any
====================================
	Thread 1 started at 5
	Thread 3 started at 5
	Thread 1 Ended at 10
	Thread 3 ended at 10
	Thread 2 started at 15
	Thread 4 started at 15
	Thread 2 Ended at 20
	Thread 4 ended at 20
child_1 finished at 25
------------------------------------
     Outside after Fork-Join_any
------------------------------------
	Thread 5 started at 25
	Thread 6 started at 30
	Thread 5 ended at 30
child_2 finished at 30
	Thread 6 ended at 35
	Thread 7 started at 40
	Thread 7 ended at 45
	Thread 8 started at 50
	Thread 8 ended at 55
           V C S   S i m u l a t i o n   R e p o r t


*/
