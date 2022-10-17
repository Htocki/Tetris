{ next_orientation.pas }

program NextOrientation;
uses
  UFigure, UTest;
var
  etalon, matrix: TOrientation;
  result: boolean;
  {$I ../implementation/next_orientation.pas}
begin
  etalon := Left;
  matrix := Down;
  matrix := figNextOrientation(matrix);
  result := etalon = matrix;
  etalon := Top;
  matrix := Left;
  matrix := figNextOrientation(matrix);
  result := result and (etalon = matrix);
  etalon := Right;
  matrix := Top;
  matrix := figNextOrientation(matrix);
  result := result and (etalon = matrix);
  etalon := Down;
  matrix := Right;
  matrix := figNextOrientation(matrix);
  result := result and (etalon = matrix);
  tesMessage('figure', 'next_orientation', result);
end.
