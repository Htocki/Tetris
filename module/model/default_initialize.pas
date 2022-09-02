{ default_initialize.pas }

procedure modDefaultInitialize(
  var matrix: TMatrix; var state: TState);
const
  width = 24;
  height = 34;
begin
  state := s_MenuStart;
  fieAdd(matrix, width, height);
  figAdd(matrix);
  tarAdd(matrix);
end;
