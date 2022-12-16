Program ex7;

uses crt;
const n = 8;
var i : integer;
    max : real;
    x : array[1..n] of real;
    
begin
  for i:= 1 to n do
    begin
      gotoxy(5 * i + 2, 1);
      readln(x[i]);
    end;
    
  max:= x[1];
  for i:= 2 to n do
    if x[i] > max then max:= x[i];
  
  gotoxy(7, 3);
  Writeln(max);
end.