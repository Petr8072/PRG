program typstudak2;
uses Crt;
type Tstudent = record
jmeno, prijmeni, adresa :string;
vek : integer;
end;
var student : Tstudent;


begin
  with student do begin
  writeln ('zadej jmeno: ');
  readln (jmeno);
  writeln ('prijmeni: ');
  readln (prijmeni);
  writeln ('adresa: ');
  readln (adresa);
  writeln ('vek: ');
  readln (vek);
  writeln (jmeno,' ',prijmeni,' ma vek: ',vek);
  readln ();
  end;
end.
