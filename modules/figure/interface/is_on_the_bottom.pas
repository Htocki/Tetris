{ is_on_the_bottom.pas }

function figIsOnTheBottom(var matrix: TMatrix): boolean;
var
  i, j: integer;
const
  status_height: integer = 1;
begin
  for i := 0 to matWidth(matrix) - 1 do
    for j := 0 to matHeight(matrix) - 1 - status_height do
      if (eleIsInactive(matrix, i, j + 1) or eleIsBorder(matrix, i, j + 1)) and
          eleIsActive(matrix, i, j) then begin
        figIsOnTheBottom := true;
        exit;
      end;
  figIsOnTheBottom := false;
end;
