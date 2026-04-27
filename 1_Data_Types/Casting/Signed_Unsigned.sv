module s_u;
  logic signed[7:0] s_val;
  logic [7:0] u_val;
  logic signed[7:0] s2;
  logic [7:0] u2;
  initial begin
    s_val=-10;
    u_val=200;
    $display("Signed value s_val = %0d %b",s_val,s_val);
    $display("Unsigned Value u_val = %0d %b",u_val,u_val);
    s2=signed'(u_val);
    u2=unsigned'(s_val);
    #5
    $display("===============\n After Casting \n===============");
    $display("unsigned to signed s2 = %0d %b",s2,s2);
    $display("signed to unsigned u2 = %0d %b",u2,u2);
    #5
    $finish;
  end 
endmodule



--------------/OUTPUT\-------------



Signed value s_val = -10 11110110
Unsigned Value u_val = 200 11001000
===============
 After Casting 
===============
unsigned to signed s2 = -56 11001000
signed to unsigned u2 = 246 11110110
Simulation complete via $finish(1) at time 10 NS + 0
./testbench.sv:18     $finish;
xcelium> exit
