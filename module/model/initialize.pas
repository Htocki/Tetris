{ initialize.pas }

procedure modInitialize(var matrix: TMatrix; var state: TState; var key: TKey);
const
  width = 24;
  height = 30;
begin
  key := k_None;
  state := s_MenuStart;
  fieAdd(matrix, width, height);
end;
