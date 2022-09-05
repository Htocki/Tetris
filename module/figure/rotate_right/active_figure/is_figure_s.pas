{ is_figure_s.pas }

function IsFigureSTop(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureSTop :=
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 2, origin.y]     = 2);
end;

function IsFigureSRight(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureSRight :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 2] = 2);
end;

function IsFigureSDown(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureSDown :=
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 2, origin.y]     = 2);
end;

function IsFigureSLeft(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureSLeft :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 2] = 2);
end;
