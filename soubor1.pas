program soubor1;
uses Crt;
type souborcisel= file of integer;
  var fi: souborcisel;
    a,i,b: integer;

begin
  assign (fi, 'ahoj.txt');
  readln (b);
  if (b=0) then begin
  {$I-}
  reset (fi);
  {$I+}
  end
  else begin rewrite (fi);
  if (IOResult <> 0) then begin
    rewrite (fi);
    writeln ('spustte znova');
  end else  begin
  seek (fi, FileSize(fi));
  writeln ('zadej prvni cislo');
  readln (a);
  write (fi, a);
  repeat
  writeln ('zadej dalsi cislo');
  readln (a);
  write (fi, a);
  until (a=46);
  seek (fi, 0);
  close (fi);
  reset (fi);
  end;
  end;
  for i:=1 to FileSize(fi) do
  begin
  read (fi,a);
  writeln ('cislo je: ',a);
  end;
  close (fi);
  readln ();
end.

