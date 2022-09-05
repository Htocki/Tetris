{ fill.pas }

procedure matFill(var matrix: TMatrix; value: integer);
var
  i, j: integer;
begin
  for i := 0 to matWidth(matrix) - 1 do
    for j := 0 to matHeight(matrix) - 1 do
      matrix[i, j] := value;
end;