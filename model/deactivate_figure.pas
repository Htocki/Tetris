procedure DeactivateFigure(state: TMatrix);
var
  i, j: integer;
begin
  for i := 0 to Length(state) - 1 do
    for j := 0 to Length(state[0]) - 1 do
      if state[i, j] = 2 then
        state[i, j] := 3;
end;
