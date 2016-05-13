program zednik1;
uses Crt;
var a,b : integer;
c : real;

begin
   writeln ('zadej prvni cislo');
   readln (a);
   writeln ('zadej druhe cislo');
   readln (b);
   c:=a+b;
   writeln(a,'+',b,'=',c:2:0);
   c:=a-b;
   writeln(a,'-',b,'=',c:2:0);
   c:=a*b;
   writeln(a,'×',b,'=',c:2:0);
   c:=a/b;
   writeln(a,'÷',b,'=',c:2:2);
   readln();
end.