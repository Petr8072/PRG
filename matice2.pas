program matice2;
uses Crt;
const Rm=3;
var matice: Array [1..Rm,1..Rm] of integer;
    i,j,h: integer;

procedure vypis_matici;
begin
  writeln;
  for i:=1 to Rm do begin
    for j:=1 to Rm do write(matice[i,j],' ');
    writeln;
  end;
end;

begin
  for i:=1 to Rm do
      for j:=1 to Rm do begin
        write('Zadej hodnotu pro pozici [',i,',',j,']: ');
        readln(matice[i,j]);
      end;
  vypis_matici;
  write('Cisla hlavni diagonaly: ');
  for i:=1 to Rm do write(matice[i,i],' ');
  j:= Rm+1;
  writeln;
  write('Cisla vedlejsi diagonaly: ');
  for i:=1 to Rm do write(matice[i,j-i],' ');
  {prohozeni hlavni a vedlejsi diagonaly}
  for i:=1 to Rm do begin
    h:=matice[i,i];
    matice[i,i]:=matice[i,j-i];
    matice[i,j-i]:=h;
  end;
  writeln;
  vypis_matici;
  readln;
end.

