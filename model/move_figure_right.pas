function MoveRight(var tmp: TMatrix): boolean;
var
  i, j: integer;
begin
  for i := Length(tmp) - 1 downto 0 do
    for j := 0 to Length(tmp[0]) - 1 do
      if tmp[i, j] = 2 then begin
        if (tmp[i + 1, j] = 1) or (tmp[i + 1, j] = 3) then begin
          MoveRight := False;
          exit;
        end;
        tmp[i + 1, j] := tmp[i, j];
        if (tmp[i - 1, j] = 0) or
           (tmp[i - 1, j] = 1) or
           (tmp[i - 1, j] = 3) then
          tmp[i, j] := 0;
      end;
  MoveRight := True;
end;

procedure MoveFigureRight(var state: TMatrix);
var
  tmp: TMatrix;
begin
  CopyMatrix(state, tmp);
  if MoveRight(tmp) then
    CopyMatrix(tmp, state);
end;
