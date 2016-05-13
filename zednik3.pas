program zednik3;
uses Crt;
var b : integer;
a: real;
d: char;

begin
     b:=0;
     writeln ('zadej prvni cislo');
     readln (a);
     repeat
     writeln ('zadej operaci (+ - * / =)');
     readln (d);
     if (d<>'=')
                then
                 begin
                 writeln ('zadej dalsi cislo');
                 readln (b);
                 end;
     if (d='+') then a:=a+b;
     if (d='-') then a:=a-b;
     if (d='*') then a:=a*b;
     if (d='/') then if (b=0) then writeln ('nelze delit nulou')
                                 else a:=a/b;

     until (d='=');
     if (b=0) then writeln (a:0:2,' bude vzdycky ',a:0:2)
              else writeln ('vysledek je: ',a:0:2);
     readkey;
end.
