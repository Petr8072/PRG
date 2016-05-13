program ukol2;
uses Crt;
var a: char;
  x: integer;

begin
  x:=0
  repeat
    ClsScr;
    writeln ('zadej znak:');
    readln (a);
    if (a<>'!')
       then
           begin

           end
       else
           begin
                if (x=0);
                then writeln ('neobsahuje znak');
                else writeln ('zadali jste',a,'znaku');
           end

  until (a:='!');
end.

