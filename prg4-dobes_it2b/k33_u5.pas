program k33_u5;
uses crt;
  var a,b,i,j: integer;
  matice: array[1..3,1..3] of integer;
begin
  for i:=1 to 3 do begin
      for j:=1 to 3 do begin
      writeln ('Zadej cislo se souradnicemi: ',i,'-',j);
      readln (matice[i,j]);
      clrscr;
      end;
      writeln;
   end;
   
  for i:=1 to 3 do begin
      for j:=1 to 3 do write (matice[i,j],' ');
  writeln;
  end;
  
  for i:=1 to 3 do begin
  for j:=1 to 3 do a:=a + matice[i,j];
  writeln ('Soucet ',i,'. radku: ',a)
  a:=0;
  end;
  writeln;
  
  for j:=1 to 3 do begin
      for i:=1 to 3 do a:=a + matice[i,j];
  writeln ('Soucet ',j,'. sloupce ',a);
  end;
  
  repeat until keypressed;
end.

