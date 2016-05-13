program cisla_k_z;
uses Crt;
var a :real;
var x,y : integer;

begin
    x:=0;
    y:=0;

    writeln ('zadej a');
    readln (a);
    while (a<>0) do
    begin
     if (a>0)
     then
         begin
              x:=x+1;
         end
     else
         begin
              y:=y+1;
         end;
    writeln ('zadej a');
    readln (a);
    end;
        writeln ('pocet kladnych cisel je ',x);
        writeln ('pocet zapornych cisel je ',y);
    repeat until keypressed;
end.
