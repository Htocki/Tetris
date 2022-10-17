{ delete.pas }

procedure tarDelete(var matrix: TMatrix);
var
  i, j: integer;
begin
  for i := 1 to matWidth(matrix) - 2 do
    for j := 0 to matHeight(matrix) - 2 do
      if eleIsTarget(matrix, i, j) then
        matrix[i, j] := 0;
end;
