Program ex1;

var x,y : real;

begin
  
    read(x);
    if(x < -1) then y := -1
    else if(x < 1) then y := x
         else y := 1;
    
    Write(y);
end.