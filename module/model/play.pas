{ play.pas }

procedure Play(var matrix: TMatrix; var state: TState; key: TKey);
begin
  case key of
    k_Left: figMoveLeft(matrix);
    k_Right: figMoveRight(matrix);
    k_Up: figRotateRight(matrix);
    k_Down: figMoveDownToTheBarrier(matrix);
    k_Space: begin
      state := s_PlayPause;
      exit;
    end;
    k_Escape: begin
      state := s_MenuStart;
      fieRestart(matrix);
      exit;
    end;
  end;
  if not figMoveDown(matrix) then begin
    if figIsOnTop(matrix) then begin
      state := s_PlayFinish;
      exit;
    end;
    figDeactivate(matrix);
    fieDeleteFilledLine(matrix);
    figAdd(matrix);
  end;
end;
