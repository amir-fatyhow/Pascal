Program ex1;

var n: integer;
    s: real;
    
begin
  s:= 0;
  for n:= 1 to 3 do
    s:= s +1/n/n;
  Write(s);
end.    