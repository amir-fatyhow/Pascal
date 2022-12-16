Program multMatrixProgram;

uses crt, Compl;

const n = 2;

Type Matrix = array[1..n, 1..n] of Complex;
var i, j: integer;
  a, b, c: Matrix;

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
  
begin  
  for i := 1 to n do
      for j := 1 to n do
      begin
        Writeln('a[' + i + ',' + j + ']');
        Input(a[i,j]);
        Writeln();
      end; 
      
  for i := 1 to n do
      for j := 1 to n do
      begin
        Writeln('b[' + i + ',' + j + ']');
        Input(b[i,j]);
        Writeln();
      end; 
  MultMatrix(a, b , c);  
  
  for i := 1 to n do
    begin
      for j := 1 to n do
      begin
        Output(c[i,j]);
        Write('  ');
      end;
      Writeln();
    end;
  
end.