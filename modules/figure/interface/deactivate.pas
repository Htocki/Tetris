{ deactivate.pas }

{ Делает активную фигуру неактивной. }
procedure figDeactivate(var matrix: TMatrix);
const
  status_height: integer = 1;
var
  i, j: integer;
begin
  for i := 0 to matWidth(matrix) - 1 do
    for j := 0 to matHeight(matrix) - 1 - status_height do
      if matrix[i, j] = 2 then
        matrix[i, j] := 3;
end;
