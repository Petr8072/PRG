program insert_sort;
uses Crt;
const n=5;
var a:array [0..n] of integer;
  i,j,x:integer;
begin
  for i:=1 to n do begin
    writeln ('zadej ',i,'. cislo :');
    read (a[i]);
  end;
  for i:=2 to N do begin
    x:=a[i];
    a[0]:=x;
    j:=i-1;
    while x < a[j] do begin
    A[j+1]:=A[j];
    j:=j-1;
    end;
    a[j+1]:=x;
  end;
  for i:=1 to n do write (a[i],',');
  repeat until keypressed;
end.