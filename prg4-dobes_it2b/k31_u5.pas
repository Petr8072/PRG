program k31_u5;
uses Crt;
var a,b : real;

begin
 writeln ('zadej 1. cislo:');
 readln (a);
 writeln ('zadej 2. cislo:');
 readln (b);
 if (a=b) then writeln ('ctverec ma delku strany: ',a:2:2)
 else begin
   if (a>b) then writeln ('obdelnik ma rozmery ',a:2:2,'cm * ',b:2:2,'cm')
            else writeln ('obdelnik ma rozmery ',b:2:2,'cm * ',a:2:2,'cm');

 end;

 repeat until keypressed;

end.
