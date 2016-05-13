program uloha6;
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
  b:=2;
  while (b<>12) do
        begin
             write (rada[b],',');
             b:=b+2;
        end;
        readln ();



end.
