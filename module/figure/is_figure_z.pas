{ is_figure_z.pas }

function IsFigureZTop(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureZTop :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 2, origin.y + 1] = 2);
end;

function IsFigureZRight(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureZRight :=
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x,     origin.y + 2] = 2);
end;

function IsFigureZDown(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureZDown :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x + 2, origin.y + 1] = 2);
end;

function IsFigureZLeft(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureZLeft :=
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x,     origin.y + 2] = 2);
end;
