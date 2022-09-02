{ move_left.pas }

function Left(var tmp: TMatrix): boolean;
var
  i, j: integer;
begin
  for i := 0 to matWidth(tmp) - 1 do
    for j := 0 to matHeight(tmp) - 1 do
      if tmp[i, j] = 2 then begin
        if (tmp[i - 1, j] = 1) or (tmp[i - 1, j] = 3) then begin
          Left := False;
          exit;
        end;
        tmp[i - 1, j] := tmp[i, j];
        if (tmp[i + 1, j] = 0) or
           (tmp[i + 1, j] = 1) or
           (tmp[i + 1, j] = 3) then
          tmp[i, j] := 0;
      end;
  Left := True;
end;

procedure figMoveLeft(var matrix: TMatrix);
var
  tmp: TMatrix;
begin
  matCopy(matrix, tmp);
  if Left(tmp) then
    matCopy(tmp, matrix);
end;
