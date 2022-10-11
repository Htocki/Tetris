{ read_position.pas }

program ReadPosition;
uses UFigure, UMatrix, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/read_position.pas}
begin
  matInitialize(matrix, 5, 10);
  matrix[2, 9] := 1;
  matrix[3, 9] := 4;
  position := figReadPosition(matrix);
  result := (position.x = 1) and (position.y = 4);
  tesMessage('figure', 'read_position', result);
end.
