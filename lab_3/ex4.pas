Program ex4;

const eps = 0.001;
var m, k, t, p, s : real;
    
begin
  read(t);
  
  p:= 1;
  s:= 1;
  m:= 0;
  k:= t * t;
  
  while abs(p) >= eps do
  begin
    m:= m + 2;
    p:= -p * k / (m - 1) / m;
    s:= s + p;
  end;
  Writeln(s);
  Write(cos(t));
end.