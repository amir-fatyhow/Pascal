Program ex8;

Type Complex = record
  Re, Im: real
end;
var z: Complex;

function Module(var z: Complex): real;
  begin
    Module:= sqrt(sqr(z.Re) + sqr(z.Im)); 
  end;
  
Begin
  Write('z.Re = ');read(z.Re);
  Write('z.Im = ');read(z.Im);
   
  Writeln('|z| = ' + Module(z));
end.