{ rotate_right.pas }

type
  TFigure = (JTop, JRight, JDown, JLeft, ITop, IRight, IDown, ILeft, O, LTop,
             LRight, LDown, LLeft, ZTop, ZRight, ZDown, ZLeft, TTop, TRight,
             TDown, TLeft, STop, SRight, SDown, SLeft);
  TOrigin = record
    x: integer;
    y: integer;
  end;

{$I active_figure.pas}
{$I origin_of_active_figure.pas}
{$I delete_active_figure.pas}
{$I set_figure_i.pas}
{$I set_figure_j.pas}
{$I set_figure_l.pas}
{$I set_figure_s.pas}
{$I set_figure_t.pas}
{$I set_figure_z.pas}

function RotateRight(var tmp: TMatrix): boolean;
var
  figure: TFigure;
  origin: TOrigin;
begin
  origin := OriginOfActiveFigure(tmp);
  figure := ActiveFigure(tmp, origin);
  case figure of
    JTop:   RotateRight := SetFigureJRight(tmp, origin);
    JRight: RotateRight := SetFigureJDown(tmp, origin);
    JDown:  RotateRight := SetFigureJLeft(tmp, origin);
    JLeft:  RotateRight := SetFigureJTop(tmp, origin);
    ITop:   RotateRight := SetFigureIRight(tmp, origin);
    IRight: RotateRight := SetFigureIDown(tmp, origin);
    IDown:  RotateRight := SetFigureILeft(tmp, origin);
    ILeft:  RotateRight := SetFigureITop(tmp, origin);
    O:      RotateRight := True;
    LTop:   RotateRight := SetFigureLRight(tmp, origin);
    LRight: RotateRight := SetFigureLDown(tmp, origin);
    LDown:  RotateRight := SetFigureLLeft(tmp, origin);
    LLeft:  RotateRight := SetFigureLTop(tmp, origin);
    ZTop:   RotateRight := SetFigureZRight(tmp, origin);
    ZRight: RotateRight := SetFigureZDown(tmp, origin);
    ZDown:  RotateRight := SetFigureZLeft(tmp, origin);
    ZLeft:  RotateRight := SetFigureZTop(tmp, origin);
    TTop:   RotateRight := SetFigureTRight(tmp, origin);
    TRight: RotateRight := SetFigureTDown(tmp, origin);
    TDown:  RotateRight := SetFigureTLeft(tmp, origin);
    TLeft:  RotateRight := SetFigureTTop(tmp, origin);
    STop:   RotateRight := SetFigureSRight(tmp, origin);
    SRight: RotateRight := SetFigureSDown(tmp, origin);
    SDown:  RotateRight := SetFigureSLeft(tmp, origin);
    SLeft:  RotateRight := SetFigureSTop(tmp, origin);
  end;
end;

procedure figRotateRight(var matrix: TMatrix);
var
  tmp: TMatrix;
begin
  matCopy(matrix, tmp);
  if RotateRight(tmp) then
    matCopy(tmp, matrix);
end;
