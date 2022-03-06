{ activate_figure.pas }

{$I fill.pas}
{$I is_figure_i.pas}
{$I is_figure_j.pas}
{$I is_figure_l.pas}
{$I is_figure_s.pas}
{$I is_figure_t.pas}
{$I is_figure_z.pas}

function ActiveFigure(var tmp: TMatrix): TFigure;
var
  i, j: integer;
  sample: TMatrix;
begin
  for i := Length(tmp) - 2 to 1 do
    for j := Length(tmp[0]) - 2 to 1 do begin
      Fill(sample);
      { I }
      if IsFigureITop(sample) then begin
        ActiveFigure := ITop;
        exit;
      end;
      if IsFigureIRight(sample) then begin
        ActiveFigure := IRight;
        exit;
      end;
      if IsFigureIDown(sample) then begin
        ActiveFigure := IDown;
        exit;
      end;
      if IsFigureILeft(sample) then begin
        ActiveFigure := ILeft;
        exit;
      end;
      { J }
      if IsFigureJTop(sample) then begin
        ActiveFigure := JTop;
        exit;
      end;
      if IsFigureJRight(sample) then begin
        ActiveFigure := JRight;
        exit;
      end;
      if IsFigureJDown(sample) then begin
        ActiveFigure := JDown;
        exit;
      end;
      if IsFigureJLeft(sample) then begin
        ActiveFigure := JLeft;
        exit;
      end;
      { L }
      if IsFigureLTop(sample) then begin
        ActiveFigure := LTop;
        exit;
      end;
      if IsFigureLRight(sample) then begin
        ActiveFigure := LRight;
        exit;
      end;
      if IsFigureLDown(sample) then begin
        ActiveFigure := LDown;
        exit;
      end;
      if IsFigureLLeft(sample) then begin
        ActiveFigure := LLeft;
        exit;
      end;
      { S }
      if IsFigureSTop(sample) then begin
        ActiveFigure := STop;
        exit;
      end;
      if IsFigureSRight(sample) then begin
        ActiveFigure := SRight;
        exit;
      end;
      if IsFigureSDown(sample) then begin
        ActiveFigure := SDown;
        exit;
      end;
      if IsFigureSLeft(sample) then begin
        ActiveFigure := SLeft;
        exit;
      end;
      { T }
      if IsFigureTTop(sample) then begin
        ActiveFigure := TTop;
        exit;
      end;
      if IsFigureTRight(sample) then begin
        ActiveFigure := TRight;
        exit;
      end;
      if IsFigureTDown(sample) then begin
        ActiveFigure := TDown;
        exit;
      end;
      if IsFigureTLeft(sample) then begin
        ActiveFigure := TLeft;
        exit;
      end;
      { Z }
      if IsFigureZTop(sample) then begin
        ActiveFigure := ZTop;
        exit;
      end;
      if IsFigureZRight(sample) then begin
        ActiveFigure := ZRight;
        exit;
      end;
      if IsFigureZDown(sample) then begin
        ActiveFigure := ZDown;
        exit;
      end;
      if IsFigureZLeft(sample) then begin
        ActiveFigure := ZLeft;
        exit;
      end;
    end;
end;
