{ is_position_in_borders.pas }

function eleIsInBorders(var matrix: TMatrix; i, j: integer): boolean;
const
  status_height: integer = 1;
begin
  { Если в границах. }
  if  (i >= 0) and { Левая граница. }
      (i <= matWidth(matrix) - 1) and { Правая граница. }
      (j <= matHeight(matrix) - 1 - status_height) { Нижняя граница. }
  then
    eleIsInBorders := true
  else
    eleIsInBorders := false;
end;