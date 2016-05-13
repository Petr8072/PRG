PROGRAM SORT3;
Uses WinCrt;
CONST   SIZE = 100;
TYPE
        Table = Array[1..SIZE] of real;
VAR
        A         : Table;
        MAX_VALUE : real;
        i,N       : integer;
{****************************************************
*  Sorts an array RA of length N in ascending order *
*                by the Heapsort method             *
* ------------------------------------------------- *
* INPUTS:                                           *
*	   N	  size of table RA                  *
*          RA	  table to be sorted                *
* OUTPUT:                                           *
*	   RA    table sorted in ascending order    *
*                                                   *
* NOTE: The Heapsort method is a N Log2 N routine,  *
*       and can be used for very large arrays.      *
****************************************************}         
PROCEDURE HPSORT(N:INTEGER;VAR RA:Table);
Label 10, 20;
Var
  i,ir,j,l:INTEGER;
  rra:REAL;
Begin
  L:=(N DIV 2)+1;
  IR:=N;
10: if L > 1 then
  begin 
    L:=L-1;
    RRA:=RA[L]
  end
  else
  begin
    RRA:=RA[IR];
    RA[IR]:=RA[1];
    IR:=IR-1;
    if IR=1 then
    begin
      RA[1]:=RRA;
      exit
    end;
  end;
  I:=L;
  J:=L+L;
20: if J <= IR then
  begin
    if J < IR then
      if RA[J] < RA[J+1] then J:=J+1;
    if RRA < RA[J] then
    begin
      RA[I]:=RA[J];
      I:=J; J:=J+J
    end
    else
      J:=IR+1;
    goto 20
  end;
  RA[I]:=RRA;
  goto 10
END;
Procedure TWRIT(N:INTEGER;ARR:Table);
Var i:integer;
begin
  writeln;
  for i:=1 to N do
  begin
    write(ARR[i]:6:0);
    if (i MOD 10)=0 then writeln
  end
end;
BEGIN
  Randomize;
  N:=80;
  MAX_VALUE := 1000.0;
  for i:=1 to N do A[i]:=MAX_VALUE*Random;
  writeln;
  writeln(' Table to be sorted:');
  TWRIT(N,A);
  HPSORT(N,A);
  writeln;
  writeln(' Sorted table (Heapsort method):');
  TWRIT(N,A);
  ReadKey; DoneWinCrt
END.
