Program ex6;

var n: integer;
    s, m, k: real;
    
begin
  s:= 0;
  m:= 1;
  k:= 1;
  for n:= 1 to 50 do
    begin
    m := m / k;
    k := k + 2;
    s:= s + 2 * n * m;
    end;
  Write(s);  
end. 