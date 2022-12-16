Program zeroMatrixProgram;

uses crt, Compl;

const n = 6;

Type Matrix = array[1..n, 1..n] of Complex;
var i, j: integer;
  e: Matrix;
  
procedure ZeroMatrix(var e: Matrix);
  var i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        Zero(e[i,j]);
  end;
  
begin  
  ZeroMatrix(e);  
  
  for i := 1 to n do
    begin
      for j := 1 to n do
      begin
        Output(e[i,j]);
        Write('  ');
      end;
      Writeln();
    end;
  
end.  