Program ex5;

var s, p: real;
    n: integer;
    
begin
  s:= 0;
  p:= 1;
  for n:= 1 to 14 do
  begin
    p:= p / n;
    s:= s + (n + 1) * p;
  end;
  Write(s);  
end.