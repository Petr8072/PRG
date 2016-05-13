program k31_u1;
uses Crt;
var a,b : real;

begin
 writeln ('zadej 1. cislo:');
 readln (a);
 writeln ('zadej 2. cislo:');
 readln (b);
 if (a>b) then writeln ('vetsi cilo je ',a:2:2)
 else writeln ('vetsi cislo je ',b:2:2);
 repeat until keypressed;


end.

