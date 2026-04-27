module type_casting;
  bit[3:0]a1;
  byte b1;
  int c1;
  shortint d1;
  longint e1;
  string f1;
  wire[3:0]g1;
  reg[3:0]h1;
  logic[3:0]i1;
  real j1;
  
  bit[3:0]a2;
  byte b2;
  int c2;
  shortint d2;
  longint e2;
  string f2;
  wire[3:0]g2;
  reg[3:0]h2;
  logic[3:0]i2;
  real j2;
  
  assign g1=4'b0011;
  
  initial begin
    a1=3;b1=5;c1=-4;d1=-3;e1=32;
    f1="Tata";
    h1=11;i1=4'b0xz1;j1=9.8;
    
    $display("=============\n Before Casting \n=============");
    $display("bit a1 = %0d %b",a1,a1);
    $display("byte b1 = %0d %b",b1,b1);
    $display("int c1 = %0d %b",c1,c1);
    $display("shortint d1 = %0d %b",d1,d1);
    $display("longint e1 = %0d %b",e1,e1);
    $display("string f1 = %0s %b",f1,f1);
    $display("wire g1 = %0d %b",g1,g1);
    $display("reg h1 = %0d %b",h1,h1);
    $display("logic i1 = %0d %b",i1,i1);
    $display("real j1 = %0d %f",j1,j1);
    #10;
    a2=bit'(g1);
    b2=byte'(i1);
    c2=int'(h1);
    d2=shortint'(a1);
    e2=longint'(b1);
    f2=string'(e1);
    h2=reg'(d1);
    i2=logic'(e1);
    j2=real'(f1);
    #10;
    $display("==============\n After Casting \n=============");
    $display("wire to bit = %0d %b",a2,a2);
    $display("logic to byte = %0d %b",b2,b2);
    $display(" = %0d %b",c2,c2);
    $display(" %0d %b",d2,d2);
    $display(" %0d %b",e2,e2);
    $display(" %0d %b",f2,f2);
    $display(" %0d %b",g2,g2);
    $display(" %0d %b",h2,h2);
    $display(" %0d %b",i2,i2);
    $display(" %0d %b",j2,j2);
  end
endmodule





================/OUTPUT\================





=============
 Before Casting 
=============
bit a1 = 3 0011
byte b1 = 5 00000101
int c1 = -4 11111111111111111111111111111100
shortint d1 = -3 1111111111111101
longint e1 = 32 0000000000000000000000000000000000000000000000000000000000100000
string f1 = Tata 01010100011000010111010001100001
wire g1 = 3 0011
reg h1 = 11 1011
logic i1 = X 0xz1
real j1 = 9 9.800000
==============
 After Casting 
=============
wire to bit = 1 0001
logic to byte = 1 00000001
 = 11 00000000000000000000000000001011
 3 0000000000000011
 5 0000000000000000000000000000000000000000000000000000000000000101
 32 00100000
 z zzzz
 1 0001
 0 0000
 1415672929 0000000000000000000000000000000001010100011000010111010001100001
