Program ex1;

uses crt;

const m = 3; n = 5;
var i, j: integer;
    a, b, c: array[1..m, 1..n] of real;
    
begin
    Writeln('Введите значения двумерного массива a');
    for i := 1 to m do
      for j := 1 to n do
      begin
        gotoxy(5 * j + 2, i + 1);
        readln(a[i,j]);
      end;
      
    Writeln('Введите значения двумерного массива b');  
    for i := 1 to m do
      for j := 1 to n do
      begin
        gotoxy(5 * j + 2, m + i + 2);
        readln(b[i,j]);
      end;      
      
   for i := 1 to m do
     for j := 1 to n do
       c[i,j] := a[i,j] + b[i,j];
     
   Writeln('Значения сложения двумерного массива a с двумерным массивом b');  
    for i := 1 to m do
      for j := 1 to n do
      begin
        gotoxy(5 * j + 2, m + m + i + 3);
        Writeln(c[i,j]);
      end;     
end.