{ is_filled.pas }

program IsFilled;
uses
  UField, UMatrix, UTest;
var
  matrix: TMatrix;
  result: boolean;
begin
  matInitialize(matrix, 6, 9);
  { Присутствует вертикальная линия, заполненная }
  { неактивными фигурами полностью. }
  matrix[1, 8] := 1;
  matrix[2, 8] := 1;
  matrix[3, 8] := 1;
  matrix[4, 8] := 1;
  matrix[1, 7] := 3;
  matrix[2, 6] := 3;
  matrix[2, 7] := 3;
  matrix[3, 5] := 3;
  matrix[3, 6] := 3;
  matrix[3, 7] := 3;
  matrix[4, 4] := 3;
  matrix[4, 5] := 3;
  matrix[4, 6] := 3;
  matrix[4, 7] := 3;
  result := fieIsFilled(matrix);
  matrix[4, 4] := 0;
  result := result and (fieIsFilled(matrix) = false);
  { Заполненные вертикальные линии отсутствуют. }
  tesMessage('field', 'is_filled', result);
end.
