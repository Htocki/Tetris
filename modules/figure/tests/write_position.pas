{ write_position.pas }

program WritePosition;
uses UFigure, UMatrix, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/write_position.pas}
begin
  matInitialize(matrix, 5, 10);
  position.x := 3;
  position.y := 4;
  figWritePosition(matrix, position);
  result := (matrix[2, 9] = position.x) and (matrix[3, 9] = position.y);
  tesMessage('figure', 'write_position', result);
end.
