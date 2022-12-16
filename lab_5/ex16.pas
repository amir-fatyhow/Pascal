Program ex16;

uses crt;

const n = 10;
var i, j: integer;
    a: array[1..n,1..n] of integer;
    
begin
    for i:= 1 to n do
      for j:= 1 to n do a[i,j]:= 0;
     
    for i:= 1 to n do 
    begin
      a[1,i]:= 1;
      a[n,i]:= 1;
    end;

    for i:= 1 to n do 
      a[i,n + 1 - i]:= 1;
      
    Writeln('Вывод полученной матрицы');  
    for i := 1 to n do
      for j := 1 to n do
      begin
        gotoxy(5 * j + 2, i + 1);

        if a[i,j] = 1 then textcolor (green)
        else textcolor (white);
  
        Writeln(a[i,j]);
      end;
end.