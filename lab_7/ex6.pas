Program ex6;

Type Complex = record
  Re, Im: real
end;
var z: Complex;

procedure Zero(var z: Complex);
  begin
    z.Re := 0;
    z.Im := 0;
  end;
  
Begin
  Zero(z);
  Writeln('z.Re = ' + z.Re);
  Write('z.Im = ' + z.Im);
end.