program bubblesort_v2;
uses Crt;
const n=5;
var i,j,pom : integer;
pole : array [1..n] of real;

begin
for i:=1 to n do begin
writeln ('zadej ',i,'. cislo');
readln(pole[i]);
end;
 for i:=n downto 2 do
 for j:=1 to i-1 do
   if (pole[j+1]<pole[j]) then begin
   pom:=pole[j+1];
   pole[j+1]:=pole[j];
   pole[j]:=pom;
 end;
 writeln;
 for i:=1 to n do write (pole[i]:4:0);
 repeat until keypressed;
end.
