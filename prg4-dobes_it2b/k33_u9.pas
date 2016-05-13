program k33_u9;
uses crt;
const n=50;
var a,i,b : integer;
pole : array [1..n] of integer;

begin
 a:=0;
 writeln ('zacatecni hodnota: ');
 read (b);
 for i:=1 to n do begin pole[i]:=b;
   if (pole[i]=0)then a:=a+1;
   b:=b+1;
 end;
 writeln ('suda: ');
 for i:=1 to n do if (pole[i] mod 2=0) then write (pole[i],',');
 writeln;
 writeln;
 writeln ('delitelna sesti: ');
 for i:=1 to n do if (pole[i] mod 6=0) and (pole[i]<>0) then write (pole[i],',');
 writeln;
 writeln;

 writeln ('pocet nul je :',a);
 repeat until keypressed;
end.
