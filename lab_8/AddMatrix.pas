Program addMatrixProgram;

uses crt, Compl;

const n = 2;

Type Matrix = array[1..n, 1..n] of Complex;
var i, j: integer;
  a, b, c: Matrix;

procedure AddMatrix(a, b: Matrix; var c: Matrix);
  var i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        Add(a[i,j], b[i,j], c[i,j]);
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
      
  AddMatrix(a, b , c);  
  
  for i := 1 to n do
    begin
      for j := 1 to n do
      begin
        Output(a[i,j]);
        Write('  ');
      end;
      Writeln();
    end;
      
  Writeln();    
  for i := 1 to n do
    begin
      for j := 1 to n do
      begin
        Output(b[i,j]);
        Write('  ');
      end;
      Writeln();
    end;
  
  Writeln();
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