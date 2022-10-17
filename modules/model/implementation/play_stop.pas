{ play_stop.pas }

procedure modPlayStop(
  var matrix: TMatrix; var state: TState; key: TKey; var user: TUser);
begin
  case key of
    k_Enter: begin
      matClear(matrix);
      user.score := 0;
      fieInitialize(matrix);
      figInitialize(matrix);
      tarInitialize(matrix);
      state := s_PlayStart;
      exit;
    end;
    k_Escape: begin
      matClear(matrix);
      user.score := 0;
      fieInitialize(matrix);
      figInitialize(matrix);
      tarInitialize(matrix);
      state := s_MenuPlay;
      exit;
    end;
  end;
end;
