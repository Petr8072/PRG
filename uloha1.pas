program uloha1;
uses Crt;
var a,b,c,d : integer;
var e :real;


begin
  b:=0;
  c:=1;
  d:=0;
  e:=0;
  writeln ('zadej a');
  readln (a);
  while (a<>0) do
        begin
          b:=a+b;
          c:=c*a;
          d:=d+1;
          writeln ('zadej a');
          readln (a);
        end;
  writeln ('soucet je ',b);
  writeln ('soucin je ',c);
  writeln ('pocet cisel je ',d);
  if (d=0)
  then
      begin
       writeln ('prumer nelze vypocitat')
      end
  else
      begin
       e:=b/d;
       writeln ('prumer cisel je ',e:2:2);
      end;
  repeat until keypressed;
end.

