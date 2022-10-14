{ finish.pas }

procedure Finish(
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
      state := s_MenuStart;
      exit;
    end;
  end;
end;