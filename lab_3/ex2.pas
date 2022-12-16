Program ex2;

var m, n : integer;
    k, t, s, p : real;
    
begin
  read(t);
  
  p:= t;
  s:= t;
  k:= t * t;
  
  for n:= 1 to 100 do
  begin
    m:= 2 * n;
    p:= -p * k / m / (m + 1);
    s:= s + p;
  end;
  Writeln(s);
  Write(sin(t));
end.