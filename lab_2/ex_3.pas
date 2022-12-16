Program ex3;

var n, m: integer;
    s: real;
    
begin
  s:= 0;
  for n:= 0 to 32 do
    begin
    m:= 3 * n;
    s:= s + 1/ (m + 1)/(m + 4);
    end;
  Write(s);  
end.  