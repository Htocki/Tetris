{ set_figure_z.pas }

function SetFigureZRight(var tmp: TMatrix; origin: TOrigin): boolean;
var
  is_free: boolean;
begin
  is_free :=
    (tmp[origin.x, origin.y] = 0) and
    (tmp[origin.x, origin.y] = 0) and
    (tmp[origin.x, origin.y] = 0) and
    (tmp[origin.x, origin.y] = 0);
  if is_free then begin
    tmp[origin.x, origin.y] := 2;
    tmp[origin.x, origin.y] := 2;
    tmp[origin.x, origin.y] := 2;
    tmp[origin.x, origin.y] := 2;
  end;
  SetFigureZRight := True;
end;

function SetFigureZDown(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  SetFigureZDown := True;
end;

function SetFigureZLeft(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  SetFigureZLeft := True;
end;

function SetFigureZTop(var tmp: TMatrix; origin: TOrigin): boolean;
begin
  SetFigureZTop := True;
end;
