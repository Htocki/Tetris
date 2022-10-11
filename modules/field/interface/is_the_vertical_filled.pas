{ is_the_vertical_filled.pas }

function fieIsTheVerticalFilled(var matrix: TMatrix): boolean;
var
  i: integer;
begin
  for i := 1 to matWidth(matrix) - 2 do
    if matrix[i, 3] = 2 then begin
      fieIsTheVerticalFilled := True;
      exit;
    end;
  fieIsTheVerticalFilled := False;
end;