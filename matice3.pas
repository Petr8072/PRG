program matice3;
uses Crt;
const Rm=4;
var matice: Array [1..Rm,1..Rm] of integer;
    i,j,h,a: integer;
    radky:array [1..Rm] of integer;
    sloupce:array [1..Rm] of integer;
procedure vypis_matici;
begin
  writeln;
  for i:=1 to Rm do begin
    for j:=1 to Rm do write(matice[i,j],' ');
    writeln;
  end;
end;

procedure random_cisla;
begin
  for i:=1 to Rm do
      for j:=1 to Rm do
        matice[i,j]:=random(89)+10;
end;

procedure zadej_matici;
begin
for i:=1 to Rm do
      for j:=1 to Rm do begin
        write('Zadej hodnotu pro pozici [',i,',',j,']: ');
        readln(matice[i,j]);
      end;
end;

procedure vypis_diagonaly;
begin
write('Cisla hlavni diagonaly: ');
  for i:=1 to Rm do write(matice[i,i],' ');
  j:= Rm+1;
  writeln;
write('Cisla vedlejsi diagonaly: ');
  for i:=1 to Rm do write(matice[i,j-i],' ');
end;

procedure prohod_diagonaly;
begin
for i:=1 to Rm do begin
  h:=matice[i,i];
  matice[i,i]:=matice[i,j-i];
  matice[i,j-i]:=h;
end;
end;

procedure soucet_matice;
begin
  writeln;
  for i:=1 to Rm do
    for j:=1 to Rm do begin
      radky[i]:=radky[i] + matice[i,j];
      sloupce[i]:=sloupce[i] + matice[j,i];
       end;
  for i:=1 to Rm do writeln('Soucet ',i,'. radku je: ',radky[i],' a soucet ',i,'. sloupce je: ',sloupce[i]);
end;
procedure vyber_operace;
begin
writeln('Zadej 0 pro nahodne zadani nebo jine cislo pro rucni zadani');
  readln(a);
  if (a=0) then random_cisla else zadej_matici;
end;

procedure minimum;
var minVD , minHD : integer;
begin
  writeln;
  for i:=1 to Rm do begin
    radky[i]:=matice[i,1];
    for j:=1 to Rm do begin
     if (radky[i]>matice[i,j])then radky[i]:=matice[i,j];
     if (sloupce[i]>matice[j,i])then sloupce[i]:=matice[j,i];
    end;
  end;
  minHD:=matice[1,1];
  minVD:=matice[1,Rm];
  for i:=1 to Rm do begin
   if (minHD>matice[i,i])then minHD:=matice[i,i];
   if (minVD>matice[i,j-i])then minVD:=matice[i,j-i];
  end;
  for i:=1 to Rm do writeln ('minimum pro ',i,'. radek: ',radky[i]);
  for i:=1 to Rm do writeln ('minimum pro ',i,'. sloupec: ',sloupce[i]);
 end;
procedure prohozeniHD;
var pom : integer;
begin
  writeln;
  for i:=1 to Rm do
    for j:=1 to Rm do begin
     if (i>j)then begin
      pom:=matice[i,j];
      matice[i,j]:=matice[j,i];
      matice[j,i]:=pom;
    end;
  end;
end;
procedure prohozeniVD;
var pom,max : integer;
begin
  max:=Rm+1;
 for j:=Rm downto 1 do
   for i:=1 to Rm do begin
     pom:=matice[max-j,i];
     matice[max-j,i]:=matice[i,max-j];
     matice[i,max-j]:=pom;
   end;
end;

begin
  window (1,1,80,100);
  randomize;
  vyber_operace;
  vypis_matici;
  writeln;
  vypis_diagonaly;
  writeln;
  prohod_diagonaly;
  writeln;
  vypis_matici;
  soucet_matice;
  minimum;
  vypis_matici;
  prohozeniHD;
  vypis_matici;
  prohozeniVD;
  vypis_matici;
  readln;
end.
