{ delete.pas }

procedure tarDelete(var matrix: TMatrix);
var
  i, j: integer;
begin
  for i := 1 to Length(matrix) - 2 do
    for j := 0 to Length(matrix[0]) - 2 do
      if matrix[i, j] = 4 then
        matrix[i, j] := 0;
end;
