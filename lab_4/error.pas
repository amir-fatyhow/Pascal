Program ex2;

const eps = 0.001;
var t, nu, p, q, s : real;
                 n : integer;
                 
begin 
    read(t);
    read(nu);
    n:= 0;
    p:= 1;
    s:= 1;
    q:= nu;
    
    while (abs(p) >= eps) do
    begin
      n:= n + 1;
      p:= p * q * (-1) * t * t / (2 * n) / (2 * n - 1);
      q:= nu * nu * nu * nu;
      s:= s + p;
    end;
    Writeln(s);
    Writeln(cos(t));
end.