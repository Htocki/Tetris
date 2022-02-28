{ move_down.pas }
function Down(var tmp: TMatrix): boolean;
var
  i, j: integer;
begin
  for i := Length(tmp) - 1 downto 0 do
    for j := Length(tmp[0]) - 1 downto 0 do
      if tmp[i, j] = 2 then begin 
        if (tmp[i, j + 1] = 1) or (tmp[i, j + 1] = 3) then begin
          Down := False;
          exit;
        end;
        tmp[i, j + 1] := tmp[i, j];
        if tmp[i, j - 1] = 0 then
          tmp[i, j] := 0;
      end;
  Down := True;
end;

function figMoveDown(var state: TMatrix): boolean;
var
  tmp: TMatrix;
begin
  matCopy(state, tmp);
  if Down(tmp) then begin
    matCopy(tmp, state);
    figMoveDown := True;
  end else
    figMoveDown := False;
end;
