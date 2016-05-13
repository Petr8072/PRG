program k32_u4;
uses Crt;
var a, s, b: integer;

begin
  writeln('zadej a');
  readln (a);
  writeln ('zadej b');
  readln(b);
  repeat
    s:=s+b;
    a:=a-1;
  until (a=0);
  writeln('Soucin cisel je: ',s);
  repeat until keypressed;
end.
