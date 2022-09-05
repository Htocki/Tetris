{ is_figure_o.pas }

function IsFigureO(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  IsFigureO :=
    (tmp[origin.x,     origin.y]     = 2) and
    (tmp[origin.x,     origin.y + 1] = 2) and
    (tmp[origin.x + 1, origin.y]     = 2) and
    (tmp[origin.x + 1, origin.y + 1] = 2);
end;
