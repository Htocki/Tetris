{ is_figure_t.pas }

function IsFigureTTop(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureTTop :=
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 2, origin.y + 1] = 2);
end;

function IsFigureTRight(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureTRight :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x,     origin.y + 2] = 2);
end;

function IsFigureTDown(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureTDown :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 2, origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2);
end;

function IsFigureTLeft(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureTLeft :=
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x,     origin.y] + 1 = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 2] = 2);
end;
