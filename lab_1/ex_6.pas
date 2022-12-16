Program ex6;

var x,y,u : real;

begin
    
    read(x,y);
    u := 1.0;
    if(x > y) and (y > 0) then u := x
    else if(x < 0) and (x > y) then u := y;
    
    Write(u);

end.