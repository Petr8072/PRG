program matice4;
uses Crt;
const Rm=4;
var matice: Array [1..Rm,1..Rm] of integer;
    radky, sloupce, minimumS, minimumR: Array [1..Rm] of integer;
    i,j,h,x,minR,minS,minH,minV: integer;

procedure vypis_matici;
begin
  writeln;
  for i:=1 to Rm do begin
    for j:=1 to Rm do write(matice[i,j],' ');
    writeln;
  end;
end;

procedure zadej_matici;
begin
  for i:=1 to Rm do
      for j:=1 to Rm do begin
        write('Zadej hodnotu pro pozici [',i,',',j,']: ');
        readln(matice[i,j]);
      end;
end;

procedure vypln_matici;
begin
  for i:=1 to Rm do
      for j:=1 to Rm do matice[i,j]:=random(89)+10;
end;

procedure vypis_diagonaly;
begin
 writeln;
 write('Cisla hlavni diagonaly: ');
 for i:=1 to Rm do write(matice[i,i],' ');
 j:= Rm+1;
 writeln;
 write('Cisla vedlejsi diagonaly: ');
 for i:=1 to Rm do write(matice[i,j-i],' ');
 writeln;
end;

procedure prohod_diagonaly;
begin
 {prohozeni hlavni a vedlejsi diagonaly}
  j:= Rm+1;
  for i:=1 to Rm do begin
    h:=matice[i,i];
    matice[i,i]:=matice[i,j-i];
    matice[i,j-i]:=h;
  end;
end;

procedure soucty;
begin
 writeln;
 for i:=1 to Rm do
      for j:=1 to Rm do begin
        radky[i] := radky[i] + matice[i,j];
        sloupce[i] := sloupce[i] + matice[j,i];
      end;
  for i:=1 to Rm do writeln('Soucet ',i,'. radku je ',radky[i],' a soucet ',i,'. sloupce je ',sloupce[i]);
end;

procedure najdi_minima;
begin
 writeln;
 for i:=1 to Rm do begin
    minR := matice[i,1];
    minS := matice[1,i];
    for j:=1 to Rm do begin
        if (matice[i,j] < minR) then minR := matice[i,j];
        if (matice[j,i] < minS) then minS := matice[j,i];
      end;
    minimumR[i] := minR;
    minimumS[i] := minS;
  end;
  minH := matice[1,1];
  minV := matice[1,Rm];
  j:= Rm+1;
  for i:=1 to Rm do begin
     if (matice[i,i] < minH) then minH := matice[i,i];
     if (matice[i,j-i] < minV) then minV := matice[i,j-i];
     writeln('Minimum ',i,'. radku je ',minimumR[i],' a minimum ',i,'. sloupce je ',minimumS[i]);
  end;
  writeln;
  writeln('Minimum hlavni diagonaly je ',minH,' a minimum vedlejsi diagonaly je ',minV);

end;

procedure prohod_hlavni;
begin
  for i:=1 to Rm do
      for j:=1 to Rm do begin
        if (i<j) then begin
           x:= matice[i,j];
           matice[i,j]:=matice[j,i];
           matice[j,i]:=x;
        end;
      end;
end;   )

procedure prohod_vedlejsi;
begin
  h:= Rm+1;
  for i:=Rm downto 1 do
      for j:=Rm downto 1 do begin
        if ((h-i) < j) then begin
           x:= matice[i,j];
           matice[i,j]:=matice[h-j,h-i];
           matice[h-j,h-i]:=x;
        end;
      end;
end;

begin
  randomize;
  window(1,1,80,1000);
  writeln('Vyber si operaci, 1-vyplni matici automaticky, cokoli jineho umozni zadavani');
  readln(x);
  if (x=1) then vypln_matici
           else zadej_matici;
  vypis_matici;
  vypis_diagonaly;
  prohod_diagonaly;
  vypis_matici;
  soucty;
  najdi_minima;
  vypis_matici;
  prohod_hlavni;
  vypis_matici;
  prohod_vedlejsi;
  vypis_matici;
  readln;
end.

