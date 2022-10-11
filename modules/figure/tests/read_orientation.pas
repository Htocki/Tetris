{ read_orientation.pas }

program ReadOrientation;
uses UFigure, UMatrix, UTest;
var
  matrix: TMatrix;
  orientation: TOrientation;
  result: boolean;
  {$I ../implementation/read_orientation.pas}
begin
  matInitialize(matrix, 5, 10);
  matrix[1, 9] := 0;
  orientation := figReadOrientation(matrix);
  result := orientation = Down;
  matrix[1, 9] := 1;
  orientation := figReadOrientation(matrix);
  result := result and (orientation = Left);
  matrix[1, 9] := 2;
  orientation := figReadOrientation(matrix);
  result := result and (orientation = Right);
  matrix[1, 9] := 3;
  orientation := figReadOrientation(matrix);
  result := result and (orientation = Top);
  tesMessage('figure', 'read_orientation', result);
end.
