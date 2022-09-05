{ set_figure_j.pas }

function SetFigureJRight(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y + 1] = 0) and
    (tmp[origin.x,     origin.y + 2] = 0) and
    (tmp[origin.x + 1, origin.y + 2] = 0) and
    (tmp[origin.x + 2, origin.y + 2] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y + 1] := 2;
    tmp[origin.x,     origin.y + 2] := 2;
    tmp[origin.x + 1, origin.y + 2] := 2;
    tmp[origin.x + 2, origin.y + 2] := 2;
  end;
  SetFigureJRight := is_free;
end;

function SetFigureJDown(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y - 1] = 0) and
    (tmp[origin.x + 1, origin.y - 1] = 0) and
    (tmp[origin.x,     origin.y]     = 0) and
    (tmp[origin.x,     origin.y + 1] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y - 1] := 2;
    tmp[origin.x + 1, origin.y - 1] := 2;
    tmp[origin.x,     origin.y]     := 2;
    tmp[origin.x,     origin.y + 1] := 2;
  end;
  SetFigureJDown := is_free;
end;

function SetFigureJLeft(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y + 1] = 0) and
    (tmp[origin.x + 1, origin.y + 1] = 0) and
    (tmp[origin.x + 2, origin.y + 1] = 0) and
    (tmp[origin.x + 2, origin.y + 2] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y + 1] := 2;
    tmp[origin.x + 1, origin.y + 1] := 2;
    tmp[origin.x + 2, origin.y + 1] := 2;
    tmp[origin.x + 2, origin.y + 2] := 2;
  end;
  SetFigureJLeft := is_free;
end;

function SetFigureJTop(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x + 1, origin.y - 1] = 0) and
    (tmp[origin.x + 1, origin.y]     = 0) and
    (tmp[origin.x + 1, origin.y + 1] = 0) and
    (tmp[origin.x,     origin.y + 1] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x + 1, origin.y - 1] := 2;
    tmp[origin.x + 1, origin.y]     := 2;
    tmp[origin.x + 1, origin.y + 1] := 2;
    tmp[origin.x,     origin.y + 1] := 2;
  end;
  SetFigureJTop := is_free;
end;
