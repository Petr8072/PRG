program proc_func;
uses Crt;

var a, b, x : real;
     o, mes, error : integer;

procedure vypis_operace(var mes: integer);
begin
error:=0;
    clrscr;
    if (mes=1) then begin
         WriteLn('Nezanama operace! Zadejte kod operace znovu.');
         WriteLn('********************************************');
      end;
      WriteLn('Zadej cislo operace kterou chces provest');
      WriteLn('1 - scitani');
      WriteLn('2 - odcitani');
      WriteLn('3 - nasobeni');
      WriteLn('4 - deleni');
end;
function scitani(a,b:real) :real;
begin
 x := a+b;
 scitani:=x;
end;
function odcitani(a,b:real) :real;
begin
 x := a-b;
 odcitani:=x;
end;
function nasobeni(a,b:real) :real;
begin
  x := a*b;
  nasobeni:=x;
end;
function deleni(a,b:real) :real;
begin
  if (b=0) then begin WriteLn('Nulou delit nelze!'); error:=1; end
           else begin x := a / b;
           deleni:=x;
           end;
end;

begin
  mes:=0;
  repeat
    vypis_operace(mes);
    ReadLn(o);
    mes:=1;
  until (o > 0) and (o < 5);

  WriteLn('Zadej prvni cislo:');
  ReadLn(a);
  WriteLn('Zadej druhe cislo:');
  ReadLn(b);
  if (o=1) then scitani(a,b);
  if (o=2) then odcitani(a,b);
  if (o=3) then nasobeni(a,b);
  if (o=4) then deleni(a,b);
  if (error<>1)then WriteLn('Vysledek pozadovane operace je: ', x:0:2);
  readln;
end.

