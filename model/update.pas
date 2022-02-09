{ Изменяет состояние системы в соответствии с происходщими событиями. }
procedure Update(state: TMatrix; k: TKey);
begin
  case k of
    Left: ;
    Right: ;
    Up: ;
    Down: ;
    Space: AddFigure(state);
    Escape: halt;
  end
end;
