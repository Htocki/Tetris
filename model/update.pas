{ update.pas }
{ Изменяет состояние системы в соответствии с происходщими событиями. }
procedure UpdateInput(var state: TMatrix; k: TKey);
begin
  case k of
    Left: figMoveLeft(state);
    Right: figMoveRight(state);
    Up: ;
    Down: ;
    Space: ;
    Escape: halt;
  end;
end;

procedure Update(var state: TMatrix);
begin
  { Автоматическое движение фигуры вниз. }
  if not figMoveDown(state) then begin
    figDeactivate(state);
    fieDeleteFilledLine(state);
    figAdd(state);
  end;
end;
