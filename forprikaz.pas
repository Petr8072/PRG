program forprikaz;
uses Crt;
var a,b,i : integer;

begin
  writeln ('zadej a');
  readln (a);
  writeln ('zadej b');
  readln (b);
  for i := 1 to 10 do
  begin
    a:=a+b;
    writeln (a);
  end;
   writeln ('vysledek je ',a);
   repeat until keypressed;
end.

