program k32_u15;
uses Crt;
var
  a,i :integer;

begin
  a:=0;
  for i:=1 to 20 do begin
    a:=a+7;
    write (a,' ');
  end;
  repeat until keypressed;
end.

