{ set_figure_i.pas }

function SetFigureIRight(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x - 1, origin.y + 3] = 0) and
    (tmp[origin.x,     origin.y + 3] = 0) and
    (tmp[origin.x + 1, origin.y + 3] = 0) and
    (tmp[origin.x + 2, origin.y + 3] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x - 1, origin.y + 3] := 2;
    tmp[origin.x,     origin.y + 3] := 2;
    tmp[origin.x + 1, origin.y + 3] := 2;
    tmp[origin.x + 2, origin.y + 3] := 2;
  end;
  SetFigureIRight := is_free;
end;

function SetFigureIDown(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x + 1, origin.y]     = 0) and
    (tmp[origin.x + 1, origin.y - 1] = 0) and
    (tmp[origin.x + 1, origin.y - 2] = 0) and
    (tmp[origin.x + 1, origin.y - 3] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x + 1, origin.y]     := 2;
    tmp[origin.x + 1, origin.y - 1] := 2;
    tmp[origin.x + 1, origin.y - 2] := 2;
    tmp[origin.x + 1, origin.y - 3] := 2;
  end;
  SetFigureIDown := is_free;
end;

function SetFigureILeft(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  SetFigureILeft := SetFigureIRight(tmp, origin);
end;

function SetFigureITop(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  SetFigureITop := SetFigureIDown(tmp, origin);
end;
