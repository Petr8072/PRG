program PRG2;
uses Crt;
var a :integer;
var b,c,d :real;

begin
   writeln ('zadej prvni cislo');
   readln (b);
   writeln ('zadej druhe cislo');
   readln (c);
   writeln ('zadej 1-4 podle volene operace:');
   writeln ('1 - scitani');
   writeln ('2 - odcitani');
   writeln ('3 - nasobeni');
   writeln ('4 - deleni');
   readln (a);
   case a of
    1:
      d:=b+c;
    2:
      d:=b-c;
    3:
      d:=b*c;
    4:
      if (b<>0) and (c<>0)
      then
          begin
            d:=b/c;
          end
      else
          begin
               writeln ('spatna volba');
               readln ();
               Exit;
          end;
   end;
   writeln ('vysledek vypoctu je ',d:2:2);
   repeat until keypressed;
end.

