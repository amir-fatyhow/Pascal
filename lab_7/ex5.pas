Program ex5;

Type Complex = record
  Re, Im: real
end;
var z, w: Complex;
    a: real;

procedure Prod(a: real; z: Complex; var w: Complex);
  begin
    w.Re := z.Re * a;
    w.Im := z.Im * a;
  end;
  
Begin
  Write('z.Re = ');read(z.Re);
  Write('z.Im = ');read(z.Im);
  Write('a = ');read(a);
  
  Prod(a, z, w);
  Writeln('Real = ' + w.Re);
  Write('Image = ' + w.Im);
end.