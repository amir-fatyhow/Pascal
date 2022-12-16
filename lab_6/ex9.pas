Program ex9;

uses crt;

const n = 7;
var j, i, k: integer;
    x: real;
    a: array[1..n] of real;
    
begin
    Writeln('Введите значения одномерного массива a');
    for i := 1 to n do
    begin
      j := 2 * i;
      gotoxy(j, 2);
      readln(a[i]);
    end;
          
    x := a[1];
    k := 1;
          
    for i := 2 to n do
      if a[i] < x then
      begin
        x := a[i];
        k := i;
      end;
      
    for i := k downto 2 do
      a[i] := a[i - 1];
      
    a[1] := x;      
    
    for i := 1 to n do
    begin
      j := 2 * i;
      gotoxy(j, 5);
      Writeln(a[i]);
    end;
     
end.    