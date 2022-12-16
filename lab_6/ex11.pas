Program ex11;

uses crt;

const n = 7;
var j, i, m: integer;
    s, x: real;
    a: array[1..n] of real;
    
begin
    Writeln('Введите значения одномерного массива a');
    for i := 1 to n do
    begin
      j := 3 * i;
      gotoxy(j, 2);
      readln(a[i]);
    end;
          
    s := 0;
    m := 0;
    for i := 1 to n do 
      if a[i] > 0 then
      begin
        s := s + a[i];
        m := m + 1;
      end;
        
    if s <> 0 then s := s / m;
        
    Writeln('Average(+) = ' + s);
     
end.    