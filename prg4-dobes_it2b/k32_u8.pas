program k32_u8;
uses crt;
var
  veta : string;
  a : string;
  dv : integer;
  i : integer;
  pa : integer;

begin
  clrscr;
  writeln('Zadej vetu:');
  readln(veta);
  clrscr;
  dv := length(veta);
  For i:= 1 To dv Do
    begin
      a := veta[i];
      if a = 'a' then
        begin
          pa := pa + 1;
        end;
    end;
  writeln('Pocet pismen "a" je ',pa);
  readln;
end.

