Program ex7;

Type Complex = record
  Re, Im: real
end;
var z: Complex;

procedure One(var z: Complex);
  begin
    z.Re := 1;
    z.Im := 0;
  end;
  
Begin
  One(z);
  Writeln('z.Re = ' + z.Re);
  Write('z.Im = ' + z.Im);
end.