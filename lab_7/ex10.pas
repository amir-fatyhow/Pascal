Program ex10;

Type Complex = record
  Re, Im: real
end;
var z, w, p: Complex;
  i: integer;

procedure One(var z: Complex);
  begin
    z.Re := 1;
    z.Im := 0;
  end;

procedure Add(u, v: Complex; var w: Complex);
  begin
    w.Re := u.Re + v.Re;
    w.Im := u.Im + v.Im;
  end;
  
procedure Mult(u, v: Complex; var w: Complex);
  begin
    w.Re := u.Re * v.Re - u.Im * v.Im;
    w.Im := u.Re * v.Im + u.Im * v.Re;
  end;

procedure Input();
  begin
    Write('z.Re = ');read(z.Re);
    Write('z.Im = ');read(z.Im);
  end; 
 
Begin
  Input();
  
  One(p);
  One(w);
  
  for i:= 1 to 20 do
  begin
    Mult(p, z, p);
    Add(w, p, w);
  end;
  
  Writeln('w.Re = ' + w.Re);
  Write('w.Im = ' + w.Im);
end.
