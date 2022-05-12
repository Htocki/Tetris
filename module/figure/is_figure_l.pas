{ is_figure_l.pas }

function IsFigureLTop(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureLTop :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x,     origin.y + 2] = 2) and
    (tmp[origin.x + 1, origin.y + 2] = 2);
end;

function IsFigureLRight(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureLRight :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 2, origin.y]     = 2);
end;

function IsFigureLDown(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureLDown :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 2] = 2);
end;

function IsFigureLLeft(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureLLeft :=
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 2, origin.y + 1] = 2) and
    (tmp[origin.x + 2, origin.y]     = 2);
end;
