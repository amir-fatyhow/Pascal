Program ex2;

var n, m: integer;
    s: real;
    
begin
  s:= 0;
  for n:= 1 to 50 do
    begin
    m:= 2 * n;
    s:= s + m/ (m - 1)/(m + 1)/(m + 1);
    end;
  Write(s);  
end.    