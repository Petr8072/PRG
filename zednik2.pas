program zednik2;
uses Crt;
var b : integer;
a: real;
d: char;

begin
     b:=0;
     writeln ('zadej prvni cislo');
     readln (a);
     writeln ('zadej operaci (+ - * / =)');
     readln (d);
     writeln ('zadej dalsi cislo');
     readln (b);
     if (d='+') then a:=a+b;
     if (d='-') then a:=a-b;
     if (d='*') then a:=a*b;
     if (d='/') then if (b=0) then writeln ('nelze delit nulou')
                                 else a:=a/b;
     writeln ('vysledek je: ',a:0:2);
     readkey;
end.
