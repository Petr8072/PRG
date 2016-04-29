program prg_23;
uses Crt;

const n=2;
var poleA,poleB,poleC :array [1..n,1..n] of real;
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
  ClrScr;
  end;

procedure nasobeni;
var k:integer;
begin
 begin
for i:=1 to n do
    for j:=1 to n do
    begin
      poleC[i,j]:=0;
      for k:=1 to n do poleC[i,j]:=PoleC[i,j]+poleA[i,k]*poleB[k,j];
    end;
 end;
 writeln;
  writeln ('soucin MaticeA * MaticeB =');
  writeln;
  for i:= 1 to n do
  for j:=1 to n do
  begin
    write(poleC[i,j]:6:0);
    if (j=n) then writeln
  end;
end;
procedure cisla;
var maxA,maxB,minA,minB: real;
  a,b,c,d,e,f,g,h:integer;
Begin
  minA:=poleA[1,1];
  minB:=poleB[1,1];
  maxA:=poleA[1,1];
  maxB:=poleB[1,1];
  for i:= 1 to n do
  for j:=1 to n do
  begin
    if (poleA[i,j]<=minA)then begin minA:=poleA[i,j]; a:=i; b:=j;end
    else if (poleA[i,j]>=maxA)then begin maxA:=poleA[i,j]; c:=i; d:=j; end;
    if (poleB[i,j]<=minB)then begin minB:=poleB[i,j]; e:=i; f:=j; end
    else if (poleB[i,j]>=maxB)then begin maxB:=poleB[i,j]; g:=i; h:=j; end;
  end;
writeln;
writeln('Matice A:');
writeln('nejvetsi:',maxA:4:0,' na pozici [',c,',',d,']');
writeln('nejmensi:',minA:4:0,' na pozici [',a,',',b,']');
writeln;
writeln('Matice B:');
writeln('nejvetsi:',maxB:4:0,' na pozici [',g,',',h,']');
writeln('nejmensi:',minB:4:0,' na pozici [',e,',',f,']');
end;

begin
randomize;
vyber;
vypis;
shodne;
pokracovat;
vypis;
nasobeni;
pokracovat;
vypis;
cisla;
pokracovat;
end.
