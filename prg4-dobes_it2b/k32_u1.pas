program k32_u1;
uses Crt;
var b :integer ;
  a,c :real;

begin
 c:=0;
 b:=1;
 repeat
  writeln ('zadej ',b,'. cislo:');
 readln (a);
 c:=c+a;
 b:=b+1;
 until (a=0);

 writeln ('soucet je ',c:2:2);
 readln ();

end.

