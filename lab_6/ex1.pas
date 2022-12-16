4Program ex1;

uses crt;

const m = 3; n = 5;
var i, j: integer;
    z, s: real;
    a: array[1..m, 1..n] of real;
    
begin
    Writeln('Введите значения двумерного массива a');
      for i := 1 to m do
        for j := 1 to n do
        begin
          gotoxy(5 * j + 2, i + 1);
          readln(a[i,j]);
        end;
        
    z := 0;
    for i := 1 to m do  
    begin
      s := 0;
      for j := 1 to n do s := s + abs(a[i,j]);
      if s > z then z := s;
    end;
    Writeln('Max = ' + z);
end.    