Program ex5;

uses crt;

const n = 8;
var m, i, j: integer;
    glass: real;
    a: array[1..n] of real;
    
begin
    Writeln('Введите значения одномерного массива a');
    for i := 1 to n do
    begin
      j := 2 * i;
      gotoxy(j, 3);
      readln(a[i]);
    end;
          
    m := trunc(n / 2);
    for i := 1 to m do
    begin
      j := 2 * i;
      glass := a[j];
      a[j] := a[j - 1];
      a[j - 1] := glass;
    end;
    
    for i := 1 to n do
    begin
      j := 2 * i;
      gotoxy(j, 5);
      Writeln(a[i]);
    end;
     
end.    