Program ex1;

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
  
function Module(var z: Complex): real;
  begin
    Module:= sqrt(sqr(z.Re) + sqr(z.Im)); 
  end;
  
procedure Prod(a: real; z: Complex; var w: Complex);
begin
  w.Re := z.Re * a;
  w.Im := z.Im * a;
end;

procedure Input(var z: Complex);
  begin
    Write('z.Re = ');read(z.Re);
    Write('z.Im = ');read(z.Im);
  end; 
  
procedure Output(w: Complex);
  begin
    Writeln('w.Re = ' + w.Re);
    Write('w.Im = ' + w.Im);
  end;  
  
procedure ExpC(z: Complex; var s: Complex);
  const eps = 0.001;
  var k: integer;
      p: Complex;
      
  begin
    k:= 0; One(p);
    One(s);
    while Module(p) >= eps do
    begin
      k := k + 1;
      Mult(p, z, p);
      Prod(1/k, p, p);
      Add(s, p, s);
    end;
  end;      
  
  
Begin  
  Input(z);
  ExpC(z, z);
  Output(z);
  
end.
