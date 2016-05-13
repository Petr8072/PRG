Program k31_u12;
Uses crt;
var a,b,c,D:real;
begin

     write('Zadejte cislo a: ');
     readln(a);
     write('Zadejte cilo b: ');
     readln(b);
     write('Zadejte cilo c: ');
     readln(c);
     D:=sqr(b)-4*a*c;
     if D<0 then writeln('Rovnice nema reseni')
     else if D=0
      then writeln('Rovnice ma koren: ', -b/(2*a):0:2)
      else begin
        writeln('Rovnice ma koreny: ',(-b-sqrt(D))/(2*a):0:2);
        writeln(' a ',(-b+sqrt(D))/(2*a):0:2);
       end;
     repeat until keypressed;
end.
