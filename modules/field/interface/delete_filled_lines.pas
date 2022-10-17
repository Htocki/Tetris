{ delete_filled_lines.pas }

{$I ../implementation/is_line_filled.pas}
{$I ../implementation/delete_line.pas}

function fieDeleteFilledLines(var matrix: TMatrix): integer;
const
  status_height: integer = 1;
var
  j: integer;
  count: integer = 0;
begin
  for j := 4 to matHeight(matrix) - 2 - status_height do
    if fieIsLineFilled(matrix, j) then begin
      fieDeleteLine(matrix, j);
      count := count + 1;
    end;
  fieDeleteFilledLines := count;
end;
