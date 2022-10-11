{ initialize.pas }

procedure modInitialize(
  var matrix: TMatrix; var figure: TFigure; var state: TState);
const
  width = 24;
  height = 34;
begin
  state := s_MenuStart;
  fieInitialize(matrix, width, height);
  figInitialize(matrix, figure);
  tarInitialize(matrix, figure);
end;
