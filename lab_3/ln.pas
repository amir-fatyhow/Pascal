Program ln;

const eps = 0.001;
var n, t, p, s : real;
    
begin
  read(t);
  
  p:= t;
  s:= t; // Поскольку цикл начинается с n = 2 то начальное S c нуля переходит в t
  n:= 1; // Начинаем цикл с n = 2 
  
  while abs(p) >= eps do
  begin
    n:= n + 1;
    p:= p * (1 - n) * t / n;
    s:= s + p;
  end;
  Writeln(s);
end.