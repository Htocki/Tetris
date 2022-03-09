{ deactivate.pas }

procedure figDeactivate(var matrix: TMatrix);
var
  i, j: integer;
begin
  for i := 0 to Length(matrix) - 1 do
    for j := 0 to Length(matrix[0]) - 1 do
      if matrix[i, j] = 2 then
        matrix[i, j] := 3;
end;
