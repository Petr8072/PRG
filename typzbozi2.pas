program typzbozi2;
uses Crt;
type Tzbozi = record
nazev:string;
mnozstvi :(ks,kg,g,h,l,ml);
cena :real;
end;
var zbozi : array [1..5] of Tzbozi;
  i:integer;


begin
    for i:=1 to 5 do
    with zbozi[i] do begin
    writeln ('zadej nazev zbozi: ');
    readln (nazev);
    writeln ('zadej mnozstvi: (ks,kg,g,h,l,ml)');
    readln (mnozstvi);
    writeln ('zadej cenu zbozi: ');
    readln (cena);
    writeln (nazev,' ma cenu : ',cena:2:2,' pro ',mnozstvi);
    readln ();
    ClrScr;
  end;
    for i:=1 to 5 do
    with zbozi[i] do
    begin
    writeln (nazev,' - ',cena:2:2,' za ',mnozstvi)
    end;
    readln ();
end.

