{ delete_active_figure.pas }

procedure DeleteActiveFigure(var tmp: TMatrix);
var
  i, j: integer;
begin
  for i := 1 to Length(tmp) - 2 do
    for j := 4 to Length(tmp) - 2 do
      if tmp[i, j] = 2 then
        tmp[i, j] := 0;
end;
