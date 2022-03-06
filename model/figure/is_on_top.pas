{ is_on_top.pas }

function figIsOnTop(var state: TMatrix): boolean;
var
  i: integer;
begin
  for i := 1 to Length(state) - 2 do
    if state[i, 3] = 2 then begin
      figIsOnTop := True;
      exit;
    end;
  figIsOnTop := False;
end;
