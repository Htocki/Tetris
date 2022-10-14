{ play.pas }

procedure Play(
  var matrix: TMatrix; var state: TState; key: TKey; var user: TUser);
begin
  case key of
    k_Left: figMoveLeft(matrix);
    k_Right: figMoveRight(matrix);
    k_Up: figRotateRight(matrix);
    k_Down: figMoveToTheBottom(matrix);
    k_Space: begin
      state := s_PlayPause;
      exit;
    end;
    k_Escape: begin
      state := s_MenuStart;
      user.score := 0;
      matClear(matrix);
      fieInitialize(matrix);
      figInitialize(matrix);
      tarInitialize(matrix);
      exit;
    end;
  end;
  figMoveDown(matrix);
  if figIsOnTheBottom(matrix) then begin
    if fieIsFilled(matrix) then begin
      state := s_PlayFinish;
      exit;
    end;
    figDeactivate(matrix);
    user.score := user.score + fieDeleteFilledLines(matrix);
    figInitialize(matrix);
  end;
  tarInitialize(matrix);
end;
