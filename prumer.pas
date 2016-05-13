program prumer;
uses Crt;
var a,b,c : integer;
var d : real;

begin
  writeln ('zadej znamku pro softskill');
  readln (a);
  writeln ('zadej znamku pro Informatiku');
  readln (b);
  writeln ('zadej znamku pro pristup');
  readln (c);
  a:=a+b+c;
  d:= a/3;
  ClrScr;
  writeln ('prumer je ',d:2:3);
  repeat until keypressed;
end.

