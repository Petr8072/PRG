program uprava_matice;
uses Crt;
const n=10;
var pole : array [1..n,1..n] of real;
  i,j:integer;

begin
  randomize;
  writeln;
  writeln ('matice na serazeni: ');
  for i:=1 to n do begin
  for j:=1 to n do pole[i,j]:=random(100)+1;
  end;
  for i:=1 to n do begin
  for j:=1 to n do write (' ',pole[i,j]:4:0);
  writeln;
  end;
  repeat until keypressed;
end.
