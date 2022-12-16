Program ex6;

uses crt;
const m = 3; n = 5;
var a: array [1..m, 1..n] of real;
    b: array [1..n, 1..m] of real;
 i, j: integer;
    
begin
    for i:= 1 to m do
      for j:= 1 to n do
      begin
        gotoxy(5 * j + 2, i + 1);
        readln(a[i,j]);
      end;
      
    for i:= 1 to n do
    begin
      
      for j:= 1 to m do
        b[i,j] := a[j,i];
    end;
    
     for i:= 1 to n do
      for j:= 1 to m do
      begin
        gotoxy(5 * j + 2, i + m + 2);
        Writeln(b[i,j]);
      end;
    
    
end.
    