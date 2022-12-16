Program arcsin;

const eps = 0.001;
var m, k, t, p, s : real;
    
begin
  read(t);
  
  p:= t;
  s:= t;
  m:= 0;
  k:= t * t;
  
  while abs(p) >= eps do
  begin
    m:= m + 2;
    p:= p * k * (m - 1) * (m - 1) / m / (m + 1);
    s:= s + p;
  end;
  Writeln(s);
end.