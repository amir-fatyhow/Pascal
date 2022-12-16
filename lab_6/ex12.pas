Program ex12;

uses crt;

const m = 3; n = 5;
var j, i: integer;
    s, x: real;
    a: array[1..m, 1..n] of real;
    
begin
    Writeln('Введите значения двумерного массива a');
      for i := 1 to m do
        for j := 1 to n do
        begin
          gotoxy(5 * j + 2, i + 1);
          readln(a[i,j]);
        end;
          
    s := 0; 
    for i := 1 to m do 
      for j := 1 to n do
        s := s + a[i,j];
    
    s := s / n / m;
    
    Writeln('Average = ' + s);
     
end.    