Program ex4;

Type Complex = record
  Re, Im: real
end;
var u, v, z, w: Complex;

procedure Inv(z: Complex; var w: Complex);
  var q: real;
  begin
    q:= sqr(z.Re) + sqr(z.Im);
    w.Re := z.Re / q;
    w.Im := -z.Im / q;
  end;
  
procedure Mult(u, v: Complex; var w: Complex);
  begin
    w.Re := u.Re * v.Re - u.Im * v.Im;
    w.Im := u.Re * v.Im + u.Im * v.Re;
  end;
  
procedure Diviz(u, v: Complex; var w: Complex);
  var z: Complex;
  begin
    Inv(v, z);
    Mult(u, z, w);
  end;
  
Begin
  Write('u.Re = ');read(u.Re);
  Write('u.Im = ');read(u.Im);
  Write('v.Re = ');read(v.Re);
  Write('v.Im = ');read(v.Im);
  
  Diviz(u, v, w);
  Writeln('Real = ' + w.Re);
  Write('Image = ' + w.Im);
end.