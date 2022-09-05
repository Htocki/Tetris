{ set_figure_t.pas }

function SetFigureTRight(var tmp: TMatrix; origin: TOrigin): boolean;
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
  SetFigureTRight := is_free;
end;

function SetFigureTDown(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x,     origin.y + 1] = 0) and
    (tmp[origin.x + 1, origin.y + 1] = 0) and
    (tmp[origin.x + 2, origin.y + 1] = 0) and
    (tmp[origin.x + 1, origin.y + 2] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x,     origin.y + 1] := 2;
    tmp[origin.x + 1, origin.y + 1] := 2;
    tmp[origin.x + 2, origin.y + 1] := 2;
    tmp[origin.x + 1, origin.y + 2] := 2;
  end;
  SetFigureTDown := is_free;
end;

function SetFigureTLeft(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x + 1, origin.y - 1] = 0) and
    (tmp[origin.x,     origin.y]     = 0) and
    (tmp[origin.x + 1, origin.y]     = 0) and
    (tmp[origin.x + 1, origin.y + 1] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x + 1, origin.y - 1] := 2;
    tmp[origin.x,     origin.y]     := 2;
    tmp[origin.x + 1, origin.y]     := 2;
    tmp[origin.x + 1, origin.y + 1] := 2;
  end;
  SetFigureTLeft := is_free;
end;

function SetFigureTTop(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x + 1, origin.y + 1] = 0) and
    (tmp[origin.x,     origin.y + 2] = 0) and
    (tmp[origin.x + 1, origin.y + 2] = 0) and
    (tmp[origin.x + 2, origin.y + 2] = 0);
  if is_free then begin
    DeleteActiveFigure(tmp);
    tmp[origin.x + 1, origin.y + 1] := 2;
    tmp[origin.x,     origin.y + 2] := 2;
    tmp[origin.x + 1, origin.y + 2] := 2;
    tmp[origin.x + 2, origin.y + 2] := 2;
  end;
  SetFigureTTop := is_free;
end;
