Program expMatrixProgram;

uses crt, Compl;

const n = 2;

Type Matrix = array[1..n, 1..n] of Complex;
var i, j: integer;
  a, b : Matrix;

procedure OneMatrix(var e: Matrix);
  var i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        Zero(e[i,j]);
      
    for i := 1 to n do
    One(e[i,i]);
  end;
  
function NormMatrix(var e: Matrix) : real;
var i, j: integer;
z, s : real;
begin
  for i := 1 to n do
  begin
    s := 0;
    for j := 1 to n do
      s := s + Module(e[i,j]);
        
    if s > z then z := s;       
  end;
  NormMatrix := z;
end;
  
procedure MultMatrix(a, b: Matrix; var c: Matrix);
  var i, j, k: integer;
  p, s: Complex;
  begin
    for i := 1 to n do
      for j := 1 to n do
        Zero(s);
      for k := 1 to n do
      begin
        Mult(a[i,k], b[k,j], p);
        Add(s, p, s);
      end;
      c[i,j] := s;
  end;
  

procedure ProdMatrix(alpha: real; a: Matrix; var b: Matrix);
  var i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        Prod(alpha, a[i,j], b[i,j]);
  end; 
  
procedure AddMatrix(a, b: Matrix; var c: Matrix);
  var i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        Add(a[i,j], b[i,j], c[i,j]);
  end;  
  
procedure ExpMatrix(a: Matrix; var b: Matrix);
  const eps = 0.001;
  var k : integer;
  p : Matrix;
  begin
    OneMatrix(p);
    OneMatrix(b);
    k := 0;
    while NormMatrix(p) >= eps do
    begin
      k := k + 1;
      MultMatrix(p, a, p);
      ProdMatrix(1 / k, p, p);
      AddMatrix(b, p, b);
    end;
  end;
    
begin  
  for i := 1 to n do
      for j := 1 to n do
      begin
        Writeln('a[' + i + ',' + j + ']');
        Input(a[i,j]);
        Writeln();
      end; 
  
  ExpMatrix(a, b);
  
  for i := 1 to n do
    begin
      for j := 1 to n do
      begin
        Output(b[i,j]);
        Write('  ');
      end;
      Writeln();
    end;
    
end.  