program k32_u17;
uses crt;
var
  veta : string;
  a : string;
  b,c : integer;
  i : integer;
  p : integer;
begin
  p:=0;
  clrscr;
  writeln('Zadej vetu:');
  readln(veta);
  clrscr;
  b := length(veta);
  For i:= 1 to b do
    begin
      a := veta[i];
      if a = ' ' then b:=1
                 else c:=1;
      if (b=1) and (c=1) then begin
        p:=p+1;
        b:=0;
        c:=0;
      end;
    end;
  writeln('Pocet slov  je ',p+1);
  readln;
end.

