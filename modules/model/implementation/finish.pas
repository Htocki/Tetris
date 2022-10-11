{ finish.pas }

procedure Finish(
  var matrix: TMatrix; var figure: TFigure; var state: TState; key: TKey; var user: TUser);
begin
  case key of
    k_Enter: begin
      matClear(matrix);
      user.score := 0;
      fieInitialize(matrix, matWidth(matrix), matHeight(matrix));
      figInitialize(matrix, figure);
      tarInitialize(matrix, figure);
      state := s_PlayStart;
      exit;
    end;
    k_Escape: begin
      matClear(matrix);
      user.score := 0;
      fieInitialize(matrix, matWidth(matrix), matHeight(matrix));
      figInitialize(matrix, figure);
      tarInitialize(matrix, figure);
      state := s_MenuStart;
      exit;
    end;
  end;
end;
