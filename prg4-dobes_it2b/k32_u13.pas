program k32_u13;
uses Crt;
var
  a,b :integer;

begin
  a:=1;
  repeat
    b:=b+a;
    a:=a+2;
    writeln (a,' ',b);
  until (a=999);
  writeln ('soucet vsech lichych cisel pod 1000 je ',b);
  repeat until keypressed;
end.

