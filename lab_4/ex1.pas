Program ex1;

const eps = 0.001;
var t, nu, p, q, s : real;
    n, m : integer;
    
begin
    read(t);
    read(nu);
    n:= 0;
    p:= 1;
    q:= 1;
    s:= 1;
    
    while (abs(p) >= eps) do
    begin
      n:= n + 1;
      p:= p * t * q / n;
      q:= q * nu;
      s:= s + p;
    end;
    Writeln(s);
end.