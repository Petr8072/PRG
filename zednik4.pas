program zednik4;
uses Crt;
var a,b,c: real;
d: char;

begin
     b:=0;
     c:=0;
     writeln ('zadej prvni cislo');
     readln (a);
     repeat
     writeln ('zadej operaci + - * / = (');
     readln (d);
     if (d<>'=') or (d<>'(')
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
     if (d='(')then
                          writeln ('zadej cislo v zavorce');
                          readln (c);
                    repeat
                          writeln ('zadej operaci + - * /  )');
                          readln (d);
                          if (d<>')')then writeln ('zadej dalsi cislo');
                                          readln (b);
                          if (d='+') then c:=c+b;
                          if (d='-') then c:=c-b;
                          if (d='*') then c:=c*b;
                          if (d='/') then if (b=0) then writeln ('nelze delit nulou')
                                 else a:=c/b;
                          if (d=')') then a:=a*c;
                    until (d=')');
     until (d='=');
     if (b=0) then writeln (a:0:2,' bude vzdycky ',a:0:2)
              else writeln ('vysledek je: ',a:0:2);
     readkey;
end.
