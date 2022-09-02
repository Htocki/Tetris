{ add.pas }

procedure tarAdd(var matrix: TMatrix);
var
  i, j: integer;
  tmp: TMatrix;
begin
  matCopy(matrix, tmp);
  figMoveDownToTheBarrier(matrix);
  tarDelete(matrix);
  for i := 1 to matWidth(matrix) - 2 do
    for j := 0 to matHeight(matrix) - 2 do
      if matrix[i, j] = 2 then
        matrix[i, j] := 4;
  for i := 1 to matWidth(tmp) - 2 do
    for j := 0 to matHeight(tmp) - 2 do
      if tmp[i, j] = 2 then
        matrix[i, j] := 2;
end;
