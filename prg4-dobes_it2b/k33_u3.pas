program k33_u3;
uses crt;
var pole: array[1..10] of integer;
var a, i: integer;

begin
  for i:=1 to 10 do begin
    writeln('Zadejte ',i,'. cislo');
    readln(a);
    pole[i]:=a
    clrscr;
    end;
  writeln('kladna cisla: ');
  for i:=1 to 10 do begin
    if (pole[i]>=0) then write(pole[i], ', ');
  end;
  writeln('zaporna cisla: ');
  for i:=1 to 10 do begin
    if (pole[i]<0) then write(pole[i], ', ');
  end;
  repeat until keypressed;
end.
