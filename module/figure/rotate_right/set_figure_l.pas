{ set_figure_l.pas }

function SetFigureLRight(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y + 1] = 0) and
    (tmp[origin.x,     origin.y + 2] = 0) and
    (tmp[origin.x + 1, origin.y + 1] = 0) and
    (tmp[origin.x + 2, origin.y + 1] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y + 1] := 2;
    tmp[origin.x,     origin.y + 2] := 2;
    tmp[origin.x + 1, origin.y + 1] := 2;
    tmp[origin.x + 2, origin.y + 1] := 2;
  end;
  SetFigureLRight := is_free;
end;

function SetFigureLDown(var tmp: TMatrix; origin: TOrigin): boolean;
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
  SetFigureLDown := is_free;
end;

function SetFigureLLeft(var tmp: TMatrix; origin: TOrigin): boolean;
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
  SetFigureLLeft := is_free;
end;

function SetFigureLTop(var tmp: TMatrix; origin: TOrigin): boolean;
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
  SetFigureLTop := is_free;
end;
