{ delete_filled_line.pas }

{$I ../implementation/is_line_filled.pas}
{$I ../implementation/delete_line.pas}

function fieDeleteFilledLine(var matrix: TMatrix): boolean;
const
  status_height: integer = 1;
var
  j: integer;
begin
  for j := 4 to matHeight(matrix) - 2 - status_height do
    if fieIsLineFilled(matrix, j) then begin
      fieDeleteLine(matrix, j);
      fieDeleteFilledLine := True;
      exit;
    end;
  fieDeleteFilledLine := False;
end;
