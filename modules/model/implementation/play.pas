{ play.pas }

procedure Play(
  var matrix: TMatrix; var figure: TFigure; var state: TState; key: TKey; var user: TUser);
begin
  case key of
    k_Left: figMoveLeft(matrix, figure);
    k_Right: figMoveRight(matrix, figure);
    k_Up: figRotateRight(matrix, figure);
    k_Down: figMoveToTheBottom(matrix, figure);
    k_Space: begin
      state := s_PlayPause;
      exit;
    end;
    k_Escape: begin
      state := s_MenuStart;
      user.score := 0;
      matClear(matrix);
      fieInitialize(matrix, matWidth(matrix), matHeight(matrix));
      figInitialize(matrix, figure);
      tarInitialize(matrix, figure);
      exit;
    end;
  end;
  if not figMoveDown(matrix, figure) then begin
    if fieIsTheVerticalFilled(matrix) then begin
      state := s_PlayFinish;
      exit;
    end;
    figDeactivate(matrix);
    if fieDeleteFilledLine(matrix) then
      Inc(user.score);
    figInitialize(matrix, figure);
  end;
  tarInitialize(matrix, figure);
end;
