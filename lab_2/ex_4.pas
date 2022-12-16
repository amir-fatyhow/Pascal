Program ex4;

var n, m: integer;
    s: real;
    
begin
  s:= 1;
  for n:= 2 to 100 do
  begin
    m:= n * n;
    s:= s * (m - 1)/ m;
  end;
  Write(s);  
end. 