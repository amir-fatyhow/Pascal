Program ex7;

var s, p, t: real;
    n: integer;
    
begin
  readln(t);
  s:= 1;
  p:= 1;
  for n:= 1 to 100 do
  begin
    p:= p * t / n;
    s:= s + p;
  end;
  Writeln(s); 
  Writeln(exp(t));
end.