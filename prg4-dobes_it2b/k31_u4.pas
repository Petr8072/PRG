program k31_u4;
uses Crt;
var a,b,c : integer;

begin
 writeln ('zadej 1. cislo:');
 readln (a);
 writeln ('zadej 2. cislo:');
 readln (b);
 writeln ('zadej 3. cislo:');
 readln (c);
 if (a>c) and (a>b) then writeln ('nejvetsi cilo je ',a);
 if (b>c) and (b>a) then writeln ('nejvetsi cislo je ',b);
 if (c>a) and (c>b) then writeln ('nejvetsi cislo je ',c);

 repeat until keypressed;

end.

