Program ex10;

uses crt;

const n = 7;
var j, i: integer;
    s, x: real;
    a: array[1..n] of real;
    
begin
    Writeln('Введите значения одномерного массива a');
    for i := 1 to n do
    begin
      j := 2 * i;
      gotoxy(j, 2);
      readln(a[i]);
    end;
          
    s := 0; 
    for i := 1 to n do s := s + a[i];
    
    s := s / n;
    
    Writeln('Average = ' + s);
     
end.    