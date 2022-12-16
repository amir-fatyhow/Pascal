Program ex2;

Type Complex = record
  Re, Im: real
end;
var u, v, w: Complex;

procedure Mult(u, v: Complex; var w: Complex);
  begin
    w.Re := u.Re * v.Re - u.Im * v.Im;
    w.Im := u.Re * v.Im + u.Im * v.Re;
  end;
  
Begin
  Write('u.Re = ');read(u.Re);
  Write('u.Im = ');read(u.Im);
  Write('v.Re = ');read(v.Re);
  Write('v.Im = ');read(v.Im);
  
  Mult(u, v, w);
  Writeln('Real = ' + w.Re);
  Write('Image = ' + w.Im);
end.