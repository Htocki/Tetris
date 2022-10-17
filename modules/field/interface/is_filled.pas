{ is_filled.pas }

function fieIsFilled(var matrix: TMatrix): boolean;
var
  i: integer;
begin
  for i := 1 to matWidth(matrix) - 2 do
    if matrix[i, 4] = 3 then begin
      fieIsFilled := True;
      exit;
    end;
  fieIsFilled := False;
end;
