{ activate_figure.pas }

{$I is_figure_o.pas}
{$I is_figure_i.pas}
{$I is_figure_j.pas}
{$I is_figure_l.pas}
{$I is_figure_s.pas}
{$I is_figure_t.pas}
{$I is_figure_z.pas}

function ActiveFigure(var tmp: TMatrix; origin: TOrigin): TFigure;
var
  i, j: integer;
begin
  for i := Length(tmp) - 2 to 1 do
    for j := Length(tmp[0]) - 2 to 1 do begin
      { O }
      if IsFigureO(tmp, origin) then begin
        ActiveFigure := O;
        exit;
      end;
      { I }
      if IsFigureITop(tmp, origin) then begin
        ActiveFigure := ITop;
        exit;
      end;
      if IsFigureIRight(tmp, origin) then begin
        ActiveFigure := IRight;
        exit;
      end;
      if IsFigureIDown(tmp, origin) then begin
        ActiveFigure := IDown;
        exit;
      end;
      if IsFigureILeft(tmp, origin) then begin
        ActiveFigure := ILeft;
        exit;
      end;
      { J }
      if IsFigureJTop(tmp, origin) then begin
        ActiveFigure := JTop;
        exit;
      end;
      if IsFigureJRight(tmp, origin) then begin
        ActiveFigure := JRight;
        exit;
      end;
      if IsFigureJDown(tmp, origin) then begin
        ActiveFigure := JDown;
        exit;
      end;
      if IsFigureJLeft(tmp, origin) then begin
        ActiveFigure := JLeft;
        exit;
      end;
      { L }
      if IsFigureLTop(tmp, origin) then begin
        ActiveFigure := LTop;
        exit;
      end;
      if IsFigureLRight(tmp, origin) then begin
        ActiveFigure := LRight;
        exit;
      end;
      if IsFigureLDown(tmp, origin) then begin
        ActiveFigure := LDown;
        exit;
      end;
      if IsFigureLLeft(tmp, origin) then begin
        ActiveFigure := LLeft;
        exit;
      end;
      { S }
      if IsFigureSTop(tmp, origin) then begin
        ActiveFigure := STop;
        exit;
      end;
      if IsFigureSRight(tmp, origin) then begin
        ActiveFigure := SRight;
        exit;
      end;
      if IsFigureSDown(tmp, origin) then begin
        ActiveFigure := SDown;
        exit;
      end;
      if IsFigureSLeft(tmp, origin) then begin
        ActiveFigure := SLeft;
        exit;
      end;
      { T }
      if IsFigureTTop(tmp, origin) then begin
        ActiveFigure := TTop;
        exit;
      end;
      if IsFigureTRight(tmp, origin) then begin
        ActiveFigure := TRight;
        exit;
      end;
      if IsFigureTDown(tmp, origin) then begin
        ActiveFigure := TDown;
        exit;
      end;
      if IsFigureTLeft(tmp, origin) then begin
        ActiveFigure := TLeft;
        exit;
      end;
      { Z }
      if IsFigureZTop(tmp, origin) then begin
        ActiveFigure := ZTop;
        exit;
      end;
      if IsFigureZRight(tmp, origin) then begin
        ActiveFigure := ZRight;
        exit;
      end;
      if IsFigureZDown(tmp, origin) then begin
        ActiveFigure := ZDown;
        exit;
      end;
      if IsFigureZLeft(tmp, origin) then begin
        ActiveFigure := ZLeft;
        exit;
      end;
    end;
end;
