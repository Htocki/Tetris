{ move_down.pas }

{$I ../implementation/shift_down.pas}

function tarMoveDown(var matrix: TMatrix): boolean;
var
  tmp: TMatrix;
begin
  matCopy(matrix, tmp);
  if tarShiftDown(tmp) then begin
    matCopy(tmp, matrix);
    tarMoveDown := True;
  end else
    tarMoveDown := False;
end;
