{ run.pas }

procedure Run(var state: TMatrix; var game_state: TGameState; key: TKey);
begin
 case key of
    Left: figMoveLeft(state);
    Right: figMoveRight(state);
    Up: figRotateRight(state);
    Down: figMoveDownToTheBarrier(state);
    Space: game_state := Paused;
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
