Program normMatrixProgram;

uses crt, Compl;

const n = 2;

Type Matrix = array[1..n, 1..n] of Complex;
var i, j: integer;
  e: Matrix;
  
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
  
  
begin  
  for i := 1 to n do
      for j := 1 to n do
      begin
        Writeln('e[' + i + ',' + j + ']');
        Input(e[i,j]);
        Writeln();
      end; 
  
  Writeln('Normal = ' + NormMatrix(e)); 
    
end.  