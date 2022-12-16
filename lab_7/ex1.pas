Program ex1;

Type Complex = record
  Re, Im: real
end;
var u, v, w: Complex;

procedure Add(u, v: Complex; var w: Complex);
  begin
    w.Re := u.Re + v.Re;
    w.Im := u.Im + v.Im;
  end;
  
Begin
  Write('u.Re = ');read(u.Re);
  Write('u.Im = ');read(u.Im);
  Write('v.Re = ');read(v.Re);
  Write('v.Im = ');read(v.Im);
  
  Add(u, v, w);
  Writeln('Real = ' + w.Re);
  Write('Image = ' + w.Im);
end.