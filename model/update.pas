{ Изменяет состояние системы в соответствии с происходщими событиями. }
procedure UpdateInput(var state: TMatrix; k: TKey);
begin
  case k of
    Left: MoveFigureLeft(state);
    Right: MoveFigureRight(state);
    Up: ;
    Down: ;
    Space: ;
    Escape: halt;
  end;
end;

procedure Update(var state: TMatrix);
begin
  { Автоматическое движение фигуры вниз. }
  if not MoveFigureDown(state) then begin
    DeactivateFigure(state);
    DeleteFilledLine(state);
    AddFigure(state);
  end;
end;
