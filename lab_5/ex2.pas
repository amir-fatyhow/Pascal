Program ex2;

uses crt;

const n = 3;
var i, j, k: integer;
    s: real;
    a, b, c: array[1..n, 1..n] of real;
    
begin
    Writeln('Введите значения двумерного массива a');
    for i := 1 to n do
      for j := 1 to n do
      begin
        gotoxy(5 * j + 2, i + 1);
        readln(a[i,j]);
      end;
      
    Writeln('Введите значения двумерного массива b');  
    for i := 1 to n do
      for j := 1 to n do
      begin
        gotoxy(5 * j + 2, n + i + 2);
        readln(b[i,j]);
      end; 
      
    for i:= 1 to n do // берем строку массива а
      for j:= 1 to n do // берем каждый элемент из одной строки массива а
      begin
        s:= 0;
        for k:= 1 to n do 
          s:= s + a[i,k] * b[k,j];
          c[i,j]:= s;
      end;
      
    Writeln('Значения умножения двумерного массива a с двумерным массивом b');  
    for i := 1 to n do
      for j := 1 to n do
      begin
        gotoxy(5 * j + 2, n + n + i + 3);
        Writeln(c[i,j]);
      end;       
end.