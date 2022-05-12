{ set_figure_s.pas }

function SetFigureSRight(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y - 1] = 0) and
    (tmp[origin.x,     origin.y]     = 0) and
    (tmp[origin.x + 1, origin.y]     = 0) and
    (tmp[origin.x + 1, origin.y + 1] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y - 1] := 2;
    tmp[origin.x,     origin.y]     := 2;
    tmp[origin.x + 1, origin.y]     := 2;
    tmp[origin.x + 1, origin.y + 1] := 2;
  end;
  SetFigureSRight := is_free;
end;

function SetFigureSDown(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y - 1] = 0) and
    (tmp[origin.x + 1, origin.y - 1] = 0) and
    (tmp[origin.x + 1, origin.y]     = 0) and
    (tmp[origin.x + 1, origin.y + 1] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y - 1] := 2;
    tmp[origin.x + 1, origin.y - 1] := 2;
    tmp[origin.x + 1, origin.y]     := 2;
    tmp[origin.x + 1, origin.y + 1] := 2;
  end;
  SetFigureSDown := is_free;
end;

function SetFigureSLeft(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y + 2] = 0) and
    (tmp[origin.x + 1, origin.y + 2] = 0) and
    (tmp[origin.x + 2, origin.y + 2] = 0) and
    (tmp[origin.x + 2, origin.y + 1] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y + 2] := 2;
    tmp[origin.x + 1, origin.y + 2] := 2;
    tmp[origin.x + 2, origin.y + 2] := 2;
    tmp[origin.x + 2, origin.y + 1] := 2;
  end;
  SetFigureSLeft := is_free;
end;

function SetFigureSTop(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y - 1] = 0) and
    (tmp[origin.x,     origin.y]     = 0) and
    (tmp[origin.x,     origin.y + 1] = 0) and
    (tmp[origin.x + 1, origin.y + 1] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y - 1] := 2;
    tmp[origin.x,     origin.y]     := 2;
    tmp[origin.x,     origin.y + 1] := 2;
    tmp[origin.x + 1, origin.y + 1] := 2;
  end;
  SetFigureSTop := is_free;
end;
