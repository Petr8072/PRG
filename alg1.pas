program Exit;
uses Crt;
var a : integer;
Begin
     writeln ('1-ukoncit');
     writeln ('2-vypsat ahoj');
     readln (a);
     repeat
     case a of
     1:
       begin
        Exit
       end;
     2:
       writeln ('ahoj');
     end;
     until a=117;

end.
