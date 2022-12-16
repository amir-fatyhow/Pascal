Program ex1;

var m, n : integer;
    k, t, s, p : real;
    
begin
  read(t);
  
  p:= 1;
  s:= 1;
  k:= t * t;
  
  for n:= 1 to 100 do
  begin
    m:= 2 * n;
    p:= -p * k / (2 * n - 1) / m;
    s:= s + p;
  end;
  Writeln(s);
  Write(cos(t));
end.