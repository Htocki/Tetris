{ is_line_filled.pas }

program IsLineFilled;
uses
  UField, UMatrix, UTest;
var
  matrix: TMatrix;
  result: boolean;
  {$I ../implementation/is_line_filled.pas}
begin
  matInitialize(matrix, 5, 10);
  { Линия полностью заполнена неактивными фигурами. }
  matrix[0, 6] := 1;
  matrix[1, 6] := 3;
  matrix[2, 6] := 3;
  matrix[3, 6] := 3;
  matrix[0, 6] := 1;
  result := fieIsLineFilled(matrix, 6);
  { Линия заполнена неактивными фигурами не полностью }
  { или не заполнена вовсе. }
  matrix[2, 6] := 2;
  result := result and (fieIsLineFilled(matrix, 6) = false);
  tesMessage('field', 'is_line_filled', result);
end.
