program uloha4;
uses Crt;
var rada : array [1..10] of integer;
  a,b : integer;
  c :real;
begin
  a:=0;
  for b:=1 to 10 do
      begin
       ClrScr;
       writeln ('zadej ',b,'. cislo:');
       readln (rada[b]);
       a:=a+rada[b];
       end;
  c:=a/10;
  writeln ('prumer je ',c:2:2);
  writeln ('nad prumer:');
  for b:=1 to 10 do
      if (rada[b]>c) then write (rada[b],',');
  readln ();


end.

