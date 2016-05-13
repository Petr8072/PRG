program k31_u9;
uses Crt;
var a,b,c,d : integer;

begin
 writeln ('zadej 1. cislo:');
 readln (a);
 writeln ('zadej 2. cislo:');
 readln (b);
 writeln ('zadej 3. cislo:');
 readln (c);
 writeln ('zadej 4. cislo:');
 readln (d);
 if (a>b) and (a>c) and (a>d) then writeln ('nejvetsi cilo je ',a);
 if (b>c) and (b>a) and (b>d) then writeln ('nejvetsi cilo je ',b);
 if (c>d) and (c>a) and (c>b) then writeln ('nejvetsi cilo je ',c);
 if (d>a) and (d>c) and (d>b) then writeln ('nejvetsi cilo je ',d);

 if (a<b) and (a<c) and (a<d) then writeln ('nejmensi cilo je ',a);
 if (b<c) and (b<a) and (b<d) then writeln ('nejmensi cilo je ',b);
 if (c<d) and (c<a) and (c<b) then writeln ('nejmensi cilo je ',c);
 if (d<a) and (d<c) and (d<b) then writeln ('nejmensi cilo je ',d);




 repeat until keypressed;

end.
