{ update.pas }

{ Изменяет состояние системы в соответствии с происходщими событиями. }
procedure Update(var state: TMatrix; k: TKey);
begin 
  case k of
    Left: figMoveLeft(state);
    Right: figMoveRight(state);
    Up: figRotateRight(state);
    Down: ;
    Space: ;
    Escape: halt;
  end;
  { Автоматическое движение фигуры вниз. }
  if not figMoveDown(state) then begin
    if figIsOnTop(state) then { Обработка ситуации конца игры. }
      exit;
    figDeactivate(state);
    fieDeleteFilledLine(state);
    figAdd(state);
  end;
end;
