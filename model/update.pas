{ Изменяет состояние системы в соответствии с происходщими событиями. }
procedure Update(var state: TMatrix; k: TKey);
begin
  case k of
    Left: MoveFigureLeft(state);
    Right: MoveFigureRight(state);
    Up: ;
    Down: begin
      if not MoveFigureDown(state) then begin
        DeactivateFigure(state);
        AddFigure(state);
      end;
    end;
    Space: ;
    Escape: halt;
  end;
end;
