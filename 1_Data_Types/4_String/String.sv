module strings;
  string str1;
  string str2;
  string str3;
  string str4;
  initial begin
    str1="Dont Know";
    str2=" Better";
    str3="Not to say";
    
  //Length
    
    $display("Length of the string1:%0d",str1.len());
    $display("Length of the string2:%0d",str2.len());
    $display("Length of the string3:%0d",str3.len());
    
  //Get
    
    $display("Get from the string 2:%0s",str2.getc(3));
    $display("Get from the string 1:%0s",str1.getc(6));
    
  //Concantenation
    
    str1={str1,"But Yes"};
    str2={str2," To be Kind"};
    $display("After Concantenation of string 1:%0s",str1);
    $display("After Concantenation of string 2:%0s",str2);
    
  //Sub_String
    
    str4=str2.substr(8,12);
    $display("Sub_String of str2:%0s",str4);
    
  //Change Case
    
    $display("Lower Case:%s",str1.tolower());
    $display("Upper Case:%s",str1.toupper());
    
  //Case Insensitive compare
    
    if(!str1.icompare(str2))
      $display("string 1 and string 2 r same with case insensitive");
    else
      $display("string 1 and string 2 r not same with caseinsensitivity");
    
  //Replication
    
    str2={4{str2}};
      $display("replicates 4 times the string 2:%s",str2);
         
        
  //putc and delete
          
    str1.putc(7,"$");
    str2.putc(4,"P");
    str3 = {str3.substr(0,7), str3.substr(9)};
          
          $display("%s",str1);
          $display("%s",str2);
          $display("%s",str3);
          end
          endmodule



==================/OUTPUT\===================


Length of the string1:9
Length of the string2:7
Length of the string3:10
Get from the string 2:t
Get from the string 1:n
After Concantenation of string 1:Dont KnowBut Yes
After Concantenation of string 2: Better To be Kind
Sub_String of str2:To be
Lower Case:dont knowbut yes
Upper Case:DONT KNOWBUT YES
string 1 and string 2 r not same with caseinsensitivity
replicates 4 times the string 2: Better To be Kind Better To be Kind Better To be Kind Better To be Kind
Dont Kn$wBut Yes
 BetPer To be Kind Better To be Kind Better To be Kind Better To be Kind
Not to sy
