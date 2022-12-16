Program ex3;

const eps = 0.001;
var n : integer;
    t, p, s : real;
    
begin
  read(t);
  
  p:= 1;
  s:= 1;
  n:= 0;
  
  while abs(p) >= eps do
  begin
    n:= n + 1;
    p:= p * t / n;
    s:= s + p;
  end;
  Writeln(s);
  Write(exp(t));
end.