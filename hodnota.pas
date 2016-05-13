program hodnota;
uses Crt;
var a : integer;

begin
  writeln ('zadej cislo a');
  readln (a);

  case a of
  1:
  writeln ('napsal jsi a=1');
  2:
  writeln ('napsal jsi a=2');
  3..17:
  writeln ('napsal jsi a=',a);
  else
    begin
      writeln ('napsal jsi jine cislo nez 1,2 nebo 3-17');
      writeln ('tve cislo je a=',a);
    end;
  end;
  repeat until keypressed;
end.

