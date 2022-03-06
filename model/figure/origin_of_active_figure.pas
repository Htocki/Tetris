{ origin_of_active_figure.pas }

function OriginOfActiveFigure(var tmp: TMatrix; figure: TFigure): TOrigin;
var
  origin: TOrigin;
begin
  origin.x := 1; { Заглушка. }
  origin.y := 1; { Заглушка. }
  OriginOfActiveFigure := origin; { Заглушка. }
end;
