{ is_figure_i.pas }

function IsFigureITop(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureITop :=
    (tmp[origin.x, origin.y]     = 2) and
    (tmp[origin.x, origin.y + 1] = 2) and
    (tmp[origin.x, origin.y + 2] = 2) and
    (tmp[origin.x, origin.y + 3] = 2); 
end;

function IsFigureIRight(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureIRight :=
    (tmp[origin.x,     origin.y] = 2) and
    (tmp[origin.x + 1, origin.y] = 2) and
    (tmp[origin.x + 2, origin.y] = 2) and
    (tmp[origin.x + 3, origin.y] = 2); 
end;

function IsFigureIDown(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureIDown :=
    (tmp[origin.x, origin.y]     = 2) and
    (tmp[origin.x, origin.y + 1] = 2) and
    (tmp[origin.x, origin.y + 2] = 2) and
    (tmp[origin.x, origin.y + 3] = 2); 
end;

function IsFigureILeft(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureILeft :=
    (tmp[origin.x,     origin.y] = 2) and
    (tmp[origin.x + 1, origin.y] = 2) and
    (tmp[origin.x + 2, origin.y] = 2) and
    (tmp[origin.x + 3, origin.y] = 2); 
end;
