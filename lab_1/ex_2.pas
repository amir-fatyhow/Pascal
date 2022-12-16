Program ex2;

var x,y : real;

begin

    read(x);
    if(x > 0.5) or (x < -0.5) then y := 1/x
    else y := 4 * x;
    
    Write(y);
    
end.