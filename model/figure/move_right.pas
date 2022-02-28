{ move_right.pas }
function Right(var tmp: TMatrix): boolean;
var
  i, j: integer;
begin
  for i := Length(tmp) - 1 downto 0 do
    for j := 0 to Length(tmp[0]) - 1 do
      if tmp[i, j] = 2 then begin
        if (tmp[i + 1, j] = 1) or (tmp[i + 1, j] = 3) then begin
          Right := False;
          exit;
        end;
        tmp[i + 1, j] := tmp[i, j];
        if (tmp[i - 1, j] = 0) or
           (tmp[i - 1, j] = 1) or
           (tmp[i - 1, j] = 3) then
          tmp[i, j] := 0;
      end;
  Right := True;
end;

procedure figMoveRight(var state: TMatrix);
var
  tmp: TMatrix;
begin
  matCopy(state, tmp);
  if Right(tmp) then
    matCopy(tmp, state);
end;
