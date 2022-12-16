Program prodMatrixProgram;

uses crt, Compl;

const n = 2;

Type Matrix = array[1..n, 1..n] of Complex;
var i, j: integer;
  a, b: Matrix;
  alpha: real;

procedure ProdMatrix(alpha: real; a: Matrix; var b: Matrix);
  var i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        Prod(alpha, a[i,j], b[i,j]);
  end;
  
begin
  Write('alpha = ');
  read(alpha);
  
  for i := 1 to n do
      for j := 1 to n do
      begin
        Writeln('a[' + i + ',' + j + ']');
        Input(a[i,j]);
        Writeln();
      end; 
      
  ProdMatrix(alpha, a , b);  
  
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