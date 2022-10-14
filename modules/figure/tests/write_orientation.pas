{ write_orientation.pas }

program WriteOrientation;
uses
  UFigure, UMatrix, UTest;
var
  matrix: TMatrix;
  orientation: TOrientation;
  result: boolean;
  {$I ../implementation/write_orientation.pas}
begin
  matInitialize(matrix, 5, 10);
  orientation := Down;
  figWriteOrientation(matrix, orientation);
  result := matrix[1, 9] = 0;
  orientation := Left;
  figWriteOrientation(matrix, orientation);
  result := result and (matrix[1, 9] = 1);
  orientation := Right;
  figWriteOrientation(matrix, orientation);
  result := result and (matrix[1, 9] = 2);
  orientation := Top;
  figWriteOrientation(matrix, orientation);
  result := result and (matrix[1, 9] = 3);
  tesMessage('figure', 'write_orientation', result);
end.
