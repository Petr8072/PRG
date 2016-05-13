program Dobes_kalkulacka;
uses Crt;
var  o,A,B : integer;
var  x: real;
begin
  repeat
  ClrScr;
  writeln ('1 - scitani');
  writeln ('2 - odcitani');
  writeln ('3 - nasobei');
  writeln ('4 - deleni');
  readln (o);
  if (o<1)or(o>4)
     then
         writeln ('neznama operace zadej znova');
         writeln ('***************************');
  until (o>0)and(o<5);
begin
     ClrScr;
     writeln ('zadej a');
     readln (a);
     writeln ('zadej b');
     readln (b);
     x:=0;
  case o of
  1:
    begin
   x:=A+B;
   writeln (A,'+',B,'=',x:0:2);
         end;
  2:
    begin
  x:=A-B;
  writeln (A,'-',B,'=',x:0:2);
        end;
  3:
    begin
  x:=A*B;
  writeln (A,'*',B,'=',x:0:2);
    end;
  4:
    begin
  if (B<>0)
  then
      begin
      x:=A/B;
      writeln (A,'/',B,'=',x:0:2);
      end
  else
      begin
      writeln ('nulou nelze delit!');
      repeat until keypressed;
      exit;
           end;
      end;
  end;
end;
  repeat until keypressed;
end.

