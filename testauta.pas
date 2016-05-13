program testauta;
uses Crt;
var a,b,d,e : integer;
var c,f,g : real;

begin
  writeln ('zadej cislo s1');
  readln (a);
  writeln ('zadej cislo t1');
  readln (b);
  writeln ('zadej cislo s2');
  readln (d);
  writeln ('zadej cislo t2');
  readln (e);
  c:=a/b;
  f:=d/e;
  if (c>f)
  then
      begin
           g:=c-f;
           writeln ('vysledek je ',c:2:2,'(km/h) rychlejsi je auto1 o ',g:2:2);
      end
  else
      if (c=f)
      then
          begin
           writeln ('vysledek je ',f:2:2,'(km/h) obe auta jsou stejne rychla');
          end
      else
      begin
           g:=f-c;
           writeln ('vysledek je ',f:2:2,'(km/h) rychlejsi je auto2 o ',g:2:2);
      end;
  repeat until keypressed;
end.

