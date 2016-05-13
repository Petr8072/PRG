program uloha5;
uses Crt;
var rada : array [1..10] of integer;
  a,b : integer;
  c :real;
begin
  b:=0;
  repeat
    ClrScr;
    b:=b+1;
    writeln ('zadej cislo:');
    readln (rada[b]);
  until b=10;
  b:=1;
  while (b<>11) do
        begin
             write (rada[b],',');
             b:=b+2;
        end;
        readln ();



end.
