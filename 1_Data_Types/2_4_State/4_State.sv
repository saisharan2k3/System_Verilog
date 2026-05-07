module four_state;
  reg [3:0]r;
  wire[7:0]w;
  integer i;
  logic [7:0] l;
  time t;
  real r1;
  initial begin
    $display("Size of the reg data type signal = %0d",$size(r));
    $display("Size of the wire data type signal = %0d",$size(w));
    $display("Size of the integer data type signal = %0d",$size(i));
    $display("Size of the logic data type signal = %0d",$size(l));
    $display("Size of the time data type signal = %0d",$size(t));
    t=$time;
    //Default
    $display("Default of the reg data type signal = %0d %b",r,r);
    $display("Default of the wire data type signal = %0d %b",w,w);
    $display("Default of the integer data type signal = %0d %b",i,i);
    $display("Default of the logic data type signal = %0d %b",l,l);
    $display("Default of the time data type signal = %0d %b",t,t);
    
     #10;
           r=4'd10;
           l=44;
           i=-100;
           r1=56;
           t=$time;
    $display("After Initialization of the reg data type signal = %0d %b",r,r);
    $display("After Initialization of the wire data type signal = %0d %b",w,w);
    $display("After Initialization of the integer data type signal = %0d %b",i,i);
    $display("After Initialization of the logic data type signal = %0d %b",l,l);
    $display("After Initialization of the time data type signal = %0d %b",t,t);
    #10
    $finish;
    
  end
  assign #10 w=3'b101;
endmodule



-----------/OUTPIT\------------

Size of the reg data type signal = 4
Size of the wire data type signal = 8
Size of the integer data type signal = 32
Size of the logic data type signal = 8
Size of the time data type signal = 64
Default of the reg data type signal = x xxxx
Default of the wire data type signal = x xxxxxxxx
Default of the integer data type signal = x xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Default of the logic data type signal = x xxxxxxxx
Default of the time data type signal = 0 0000000000000000000000000000000000000000000000000000000000000000
After Initialization of the reg data type signal = 10 1010
After Initialization of the wire data type signal = 5 00000101
After Initialization of the integer data type signal = -100 11111111111111111111111110011100
After Initialization of the logic data type signal = 44 00101100
After Initialization of the time data type signal = 10 0000000000000000000000000000000000000000000000000000000000001010
Simulation complete via $finish(1) at time 20 NS + 0
./testbench.sv:34     $finish;
