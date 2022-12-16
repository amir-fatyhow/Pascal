Program ex5;

uses crt;
const n = 5;
var i : integer;
    a, b : array[1..n] of real;
    c : real;
    
begin
    c := 0;
    for i:= 1 to n do
     begin
      gotoxy(5 * i + 2, 1);
      readln(a[i]);
    end;
    
    for i:= 1 to n do
     begin
      gotoxy(5 * i + 2, 3);
      readln(b[i]);
    end;
    
    for i:= 1 to n do
      c := c + a[i] * b[i];
    
    gotoxy(7, 5);
    Writeln(c);
end.