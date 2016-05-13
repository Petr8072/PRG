program Pole1;
uses Crt;
var pole: array [1..10]of string;
var i,m :integer;
var n : string;

begin
  writeln ('zadej poct poli');
  readln (m);
  for i:=1 to m do
      begin
        writeln ('slovo:');
        readln (n);
        pole[i]:=n;
        writeln (pole[i]);
        writeln ();
      end;
  for i:=1 to 10 do
      begin
        write (' ',pole[i])
      end;
  readln ();
end.

