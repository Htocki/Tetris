{ is_figure_j.pas }

function IsFigureJTop(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureJTop :=
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 2] = 2) and
    (tmp[origin.x,     origin.y + 2] = 2);
end;

function IsFigureJRight(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureJRight :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 2, origin.y + 1] = 2);
end;

function IsFigureJDown(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureJDown :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x,     origin.y + 2] = 2);
end;

function IsFigureJLeft(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureJLeft :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 2, origin.y]     = 2) and
    (tmp[origin.x + 2, origin.y + 1] = 2);
end;
