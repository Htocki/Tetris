{ finish.pas }

procedure Finish(var matrix: TMatrix; var state: TState; key: TKey);
begin
  case key of
    k_Enter: begin
      matClear(matrix);
      fieAdd(matrix, Length(matrix), Length(matrix[0]) - 4);
      figAdd(matrix);
      tarAdd(matrix);
      state := s_PlayStart;
      exit;
    end;
    k_Escape: begin
      matClear(matrix);
      fieAdd(matrix, Length(matrix), Length(matrix[0]) - 4);
      figAdd(matrix);
      tarAdd(matrix);
      state := s_MenuStart;
      exit;
    end;
  end;
end;
