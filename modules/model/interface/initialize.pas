{ initialize.pas }

procedure modInitialize(var matrix: TMatrix; var state: TState);
const
  width: integer = 24;
  height: integer = 34;
begin
  state := s_MenuStart;
  matInitialize(matrix, width, height);
  fieInitialize(matrix);
  figInitialize(matrix);
  tarInitialize(matrix);
end;
