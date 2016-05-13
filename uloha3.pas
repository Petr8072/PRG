program uloha3;
uses Crt;
var rada: array [1..10] of integer ;
  a,b :integer;

begin
  for b:=1 to 10 do
      begin
       writeln ('zadej cislo:');
       readln (a);
       rada[b]:=a;
      end;
   writeln ('kladna:');
   for b:=1 to 10 do
       if (rada[b]>0) then write (rada[b],',');
       writeln ('        ');
       writeln ('zaporna:');
   for b:=1 to 10 do
       if (rada[b]<0) then write (rada[b],',');
       repeat until keypressed;

end.

