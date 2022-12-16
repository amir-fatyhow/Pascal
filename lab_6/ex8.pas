Program ex8;

uses crt;

const n = 9;
var j, i, k: integer;
    x: real;
    a: array[1..n] of real;
    
begin
    Writeln('Введите значения одномерного массива a');
    for i := 1 to n do
    begin
      j := 2 * i;
      gotoxy(1, j);
      readln(a[i]);
    end;
          
    Writeln('Введите k = ');
    read(k);
    
    Writeln('Введите x = ');
    read(x);
    
    for i := 2 to k do
      a[i - 1] := a[i];
    a[k] := x;
    
    for i := 1 to n do
    begin
      j := 2 * i;
      gotoxy(5, j);
      Writeln(a[i]);
    end;
     
end.    