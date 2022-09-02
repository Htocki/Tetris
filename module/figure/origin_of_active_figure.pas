{ origin_of_active_figure.pas }

function OriginOfActiveFigure(var tmp: TMatrix): TOrigin;
var
  origin: TOrigin;
  i: integer;
begin
  origin.x := 1;
  origin.y := 1;
  for i := 1 to matWidth(tmp) - 2 do
    if tmp[origin.x, origin.y] = 2 then begin
      origin.x := i;
      break;
    end;
  for i := 4 to matWidth(tmp) - 2 do
    if tmp[origin.x, origin.y] = 2 then begin
      origin.y := i;
      break;
    end;
  OriginOfActiveFigure := origin;
end;
