{ is_line_filled.pas }

{$IFNDEF FIE_LINE_FILLED}
{$DEFINE FIE_LINE_FILLED}

function fieIsLineFilled(var matrix: TMatrix; j: integer): boolean;
var
  i: integer;
begin
  for i := 1 to matWidth(matrix) - 2 do
    if matrix[i, j] <> 3 then begin
      fieIsLineFilled := False;
      exit;
    end;
  fieIsLineFilled := True;
end;

{$ENDIF}
