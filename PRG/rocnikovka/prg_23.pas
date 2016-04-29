program prg_23;
uses Crt;

const n=5;
var poleA,poleB :array [1..n,1..n] of real;
  i,j : integer;



procedure vypis;
begin
  writeln;
  writeln ('Matice A:');
  for i:= 1 to n do
  for j:=1 to n do
  begin
    write(poleA[i,j]:4:0);
    if (j=n) then writeln
  end;
    writeln;
  writeln ('Matice B:');
  for i:= 1 to n do
  for j:=1 to n do
  begin
    write(poleB[i,j]:4:0);
    if (j=n) then writeln
  end;
end;
procedure vyber;
var a : string;
begin
  writeln ('chcete zadat cisla rucne? (a/n)');
  read (a);
  ClrScr;
  if (a<>'a') then for i:=1 to n do for j:=1 to n do poleA[i,j]:=random (100)+1
  else for i:=1 to n do for j:=1 to n do begin
  writeln ('zadej ',i,'-',j,', cislo');
  readln (poleA[i,j]);
   end;
  if (a<>'a') then for i:=1 to n do for j:=1 to n do poleB[i,j]:=random (100)+1
  else for i:=1 to n do for j:=1 to n do begin
  writeln ('zadej ',i,'-',j,', cislo');
  readln (poleB[i,j]);
   end;
end;
procedure shodne;
begin
  i:=1;
  j:=1;
  repeat
    begin
    if (poleA[i,j]=poleB[i,j])then begin j:=j+1;
      if (j=n+1) then begin i:=i+1; j:=1; end;
    end
      else begin writeln;
      writeln ('Matice nejsou shodne');
      i:=0;
    end;
      end;
  until (i=n)and(j=n)or(i=0);
  if (i<>0)then begin writeln; writeln ('Matice jsou shodne'); end;
 end;
procedure pokracovat;
begin
  writeln('pokracujte stisknutim libovolne klavesy...');
  readkey;
  end;

begin
randomize;
vyber;
vypis;
shodne;
pokracovat;
vypis;
pokracovat;
repeat until keypressed;
end.
