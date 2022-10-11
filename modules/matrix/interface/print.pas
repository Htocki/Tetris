{ print.pas }

procedure matPrint(var matrix: TMatrix);
var
  i, j: integer;
begin
  for i := 0 to matHeight(matrix) - 1 do begin
    for j := 0 to matWidth(matrix) - 1 do begin
      write(matrix[j, i], ' ');
    end;
    writeln(' ');
  end;
  writeln(' ');
end;
