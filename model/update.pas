{ Изменяет состояние системы в соответствии с происходщими событиями. }
procedure Update(var state: TMatrix; k: TKey);
begin
  case k of
    Left: ;
    Right: ;
    Up: ;
    Down: MoveFigureDown(state);
    Space: AddFigure(state);
    Escape: halt;
  end
end;
