Program ex4;

uses crt;
const n = 5;
var i : integer;
    a, b, c : array[1..n] of real;
    
begin
    for i:= 1 to n do
     begin
      gotoxy(5 * i + 2, 10);
      readln(a[i]);
    end;
    
    for i:= 1 to n do
     begin
      gotoxy(5 * i + 2, 13);
      readln(b[i]);
    end;
    
    for i:= 1 to n do
      c[i] := a[i] + b[i];
    
    for i:= 1 to n do
    begin
      gotoxy(5 * i + 2, 15);
      Writeln(c[i]);
    end;
end.