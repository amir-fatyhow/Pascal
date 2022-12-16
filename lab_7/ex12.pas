Program ex12;

Type Complex = record
  Re, Im: real
end;
const eps = 0.001;
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
  
function Module(var z: Complex): real;
  begin
    Module:= sqrt(sqr(z.Re) + sqr(z.Im)); 
  end;
  
procedure Input();
  begin
    Write('z.Re = ');read(z.Re);
    Write('z.Im = ');read(z.Im);
  end; 
 
procedure Output(w: Complex);
  begin
    Writeln('w.Re = ' + w.Re);
    Write('w.Im = ' + w.Im);
  end;
  
Begin
  Input();
  
  if (Module(z) >= 1) then 
  begin
    Writeln('Недопустимое значение z ');
  end 
  
  else  
  begin
    One(p);
    One(w);
  
    while(Module(p) >= eps) do
    begin
      Mult(p, z, p);
      Add(w, p, w);
    end;
    
    Output(w);
  end;
  
  
end.
