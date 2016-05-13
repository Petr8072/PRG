Program random_counter;
Uses Crt;
Const n = 100;
Var a,i : integer;
  pole,mass : array [1..n] Of integer;
Begin
  randomize;
  window (1,1,800,1000);
  for i:=1 to n do mass[i]:=0;
  For i:=1 To n Do
    Begin
      pole[i]:=random(100)+1;
      mass[pole[i]]:=mass[pole[i]]+1;
    End;
  For i:=1 To n Do
    writeln (pole [i],'se vygenerovalo ',mass[i],'. krat.');
  Repeat
  Until keypressed;
End. 