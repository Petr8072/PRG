program k33_u2;
uses crt;
var pole: array [1..20] of integer;
var a, i: integer;

begin
  for i:=1 to 20 do begin 
    i:=i+1;
    writeln('Zadejte ',i,'. cislo');
    readln(a);
    pole[i]:=a;
    end;
  writeln('Cisla na lichych mistech: ');
  for i:=1 to 10 do write(pole[i*2-1], ', ');
    writeln;
  writeln('Cisla na sudych mistech: ');
  for i:=1 to 10 do write(pole[i*2], ', ');
  repeat until keypressed;
end.
