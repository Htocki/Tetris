{ finish.pas }

procedure Finish(var matrix: TMatrix; var state: TState; key: TKey);
begin
  case key of
    k_Enter: begin
      fieRestart(matrix);
      state := s_PlayStart;
      exit;
    end;
    k_Escape: begin
      fieRestart(matrix);
      state := s_MenuStart;
      exit;
    end;
  end;
end;
