{ initialize.pas }

procedure modInitialize(
  var matrix: TMatrix; var state: TState; var key: TKey; var user: TUser);
const
  width = 24;
  height = 34;
begin
  key := k_None;
  state := s_MenuStart;
  user.name := 'default';
  user.score := 0;
  fieAdd(matrix, width, height);
  figAdd(matrix);
  tarAdd(matrix);
end;
