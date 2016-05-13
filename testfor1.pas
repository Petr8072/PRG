program testfor3;
var i,s1,n :integer;
var s2 :real;


begin
  s1:=0;
  s2:=0;
  writeln ('zadej lib. cislo');
  readln (n);
  for i:=1 to n do
      begin
        s1:= i+s1;
        write ('  s1=',s1);

        s2:=(i/n)+s2;
        writeln ('  s2=',s2:2:2);
      end;
  readln ();
end.

