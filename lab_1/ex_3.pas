Program ex3;

var x,y : real;
    n : integer;
    
begin

    read(x,y);
    n := 0;
    if(abs(x) <= 1) and (abs(y) <= 1) then n := 1;
    
    Write(n);
    
end.    