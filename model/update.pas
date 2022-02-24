{ Изменяет состояние системы в соответствии с происходщими событиями. }
procedure Update(var state: TMatrix; k: TKey);
begin
  case k of
    Left: MoveFigureLeft(state);
    Right: ;
    Up: ;
    Down: begin
      if not MoveFigureDown(state) then
        DeactivateFigure(state);
    end;
    Space: AddFigure(state);
    Escape: halt;
  end;
end;
