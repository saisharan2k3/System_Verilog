module two_state;
  bit[3:0]a;
  byte b;
  int c[7:0];
  shortint d;
  longint e;
  initial begin
    $display("-----\n SIZE OF THE SIGNALS \n-----");
    $display("Size of the bit data type signal = %0d",$size(a));
    $display("Size of the bit data type signal = %0d",$size(b));
    $display("Size of the bit data type signal = %0d",$size(d));
    $display("Size of the bit data type signal = %0d",$size(c));
    $display("Size of the bit data type signal = %0d",$size(e));
    #10
    a=4;
    b=50;
    c='{100,57,3839,57484,7869,3,4,566};
    d=16'habc;
    e=61'habcdefabc;
    $display("-----\n AFTER INITIALIZATION \n-----");
    $display("After initialization =%0d",a);
    $display("After initialization =%0d",b);
    $display("After initialization =%0p",c);
    $display("After initialization =%0d",d);
    $display("After initialization =%0d",e);
    #10
    $finish;
  end
  endmodule


--------------/OUTPUT\-----------------
-----
 SIZE OF THE SIGNALS 
-----
Size of the bit data type signal = 4
Size of the bit data type signal = 8
Size of the bit data type signal = 16
Size of the bit data type signal = 8
Size of the bit data type signal = 64
-----
 AFTER INITIALIZATION 
-----
After initialization =4
After initialization =50
After initialization ='{566, 4, 3, 7869, 57484, 3839, 57, 100}
After initialization =2748
After initialization =46118402748
Simulation complete via $finish(1) at time 20 NS + 0
./testbench.sv:27     $finish;
xcelium> exit
