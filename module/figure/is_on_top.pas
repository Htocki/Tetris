{ is_on_top.pas }

function figIsOnTop(var matrix: TMatrix): boolean;
var
  i: integer;
begin
  for i := 1 to Length(matrix) - 2 do
    if matrix[i, 3] = 2 then begin
      figIsOnTop := True;
      exit;
    end;
  figIsOnTop := False;
end;
