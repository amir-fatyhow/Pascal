Program oneMatrixProgram;

uses crt, Compl;

const n = 6;

Type Matrix = array[1..n, 1..n] of Complex;
var i, j: integer;
  e: Matrix;
  
procedure OneMatrix(var e: Matrix);
  var i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        Zero(e[i,j]);
      
    for i := 1 to n do
    One(e[i,i]);
  end;
  
begin  
  OneMatrix(e);  
  
  for i := 1 to n do
    begin
      for j := 1 to n do
      begin
        
        if i = j then textcolor (green)
        else textcolor (white);
        
        Output(e[i,j]);
        Write('  ');
      end;
      Writeln();
    end;
  textcolor (white);
end.  