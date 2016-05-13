program uloha2;
uses Crt;
var a,b,d :int64;
begin
   writeln ('zadej prvni cislo');
   readln (a);
   writeln ('zadej druhe cislo');
   readln (b);
   if (a>b)
   then
     begin
       a:=a+b;
       b:=a-b;
       a:=a-b;
     end;

   d:=0;
   while (b<>0) do
         begin
          d:=a mod b;
          a:=b;
          b:=d;
         end;
   writeln ('nejvetsi mozny spolecny delitel je ',a);
   repeat until keypressed;


end.

