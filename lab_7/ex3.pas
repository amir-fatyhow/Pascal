Program ex3;

Type Complex = record
  Re, Im: real
end;
var z, w: Complex;

procedure Inv(z: Complex; var w: Complex);
  var q: real;
  begin
    q:= sqr(z.Re) + sqr(z.Im);
    w.Re := z.Re / q;
    w.Im := -z.Im / q;
  end;
  
Begin
  Write('z.Re = ');read(z.Re);
  Write('z.Im = ');read(z.Im);
  
  Inv(z, w);
  Writeln('Real = ' + w.Re);
  Write('Image = ' + w.Im);
end.