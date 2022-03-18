{ clear.pas }

procedure matClear(var matrix: TMatrix);
var
  i, j: integer;
begin
  for i := 0 to Length(matrix) - 1 do
    for j := 0 to Length(matrix[0]) - 1 do
      matrix[i, j] := 0;
end;
