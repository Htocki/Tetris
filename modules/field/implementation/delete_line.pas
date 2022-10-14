{ delete_line.pas }

{$IFNDEF FIE_DELETE_LINE}
{$DEFINE FIE_DELETE_LINE}

procedure fieDeleteLine(var matrix: TMatrix; n: integer);
const
  generation_area_height: integer = 4;
  status_height: integer = 1;
var
  i, j: integer;
begin
  for i := 1 to matWidth(matrix) - 2 do
    for j := n downto generation_area_height - status_height do
      matrix[i, j] := matrix[i, j - 1];
end;

{$ENDIF}
