program matice1;
uses Crt;
const Rm=3;
var matice : array [1..Rm,1..Rm] of integer;
  i,j: integer;
begin
  for i:=1 to Rm do
  for j:=1 to Rm do begin
    write ('zadej cislo ma pozici [',i,'][',j,']');
    readln (matice[i,j]);
    end;
  writeln;
  for i:=1 to Rm do begin
  for j:=1 to Rm do write (matice[i,j],' ');
  writeln;
  end;
  for i:=1 to Rm do begin write (matice [i,i],' '); writeln; end;
  for i:=1 to Rm do begin write (matice [4-i,i])end;
  repeat until keypressed;
end.

