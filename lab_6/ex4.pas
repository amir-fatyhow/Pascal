Program ex4;

uses crt;

const m = 3; n = 5;
var i, j: integer;
    u, v: real;
    a: array[1..m, 1..n] of real;
    
begin
    Writeln('Введите значения двумерного массива a');
      for i := 1 to m do
        for j := 1 to n do
        begin
          gotoxy(5 * j + 2, i + 1);
          readln(a[i,j]);
        end;
 
    v := a[1,1];
    for i := 2 to m do
      if a[i,1] > v then v := a[i,1];
    u := v;
    
    for j := 2 to n do
    begin
      v := a[1,j];
      for i := 2 to m do
        if a[i,j] > v then v := a[i,j];
      if v < u then u := v;
    end;
    
    Writeln('Min of max (столбцы) = ' + u);
end.    