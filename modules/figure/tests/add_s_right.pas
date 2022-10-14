{ add_s_right.pas }

program AddSRight;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_s_right.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 6;
  position.y := 7;
  result := (figAddSRight(matrix, position) = false) and
            (matrix[6, 7] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 8] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 2;
  position.y := 7;
  matrix[3, 9] := 3;
  result := result and
            (figAddSRight(matrix, position) = false) and
            (matrix[2, 7] = 0) and { Проверка расположения фигуры. }
            (matrix[2, 8] = 0) and
            (matrix[3, 8] = 0) and
            (matrix[3, 9] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 3;
  position.y := 3;
  result := result and
            (figAddSRight(matrix, position) = true) and
            (matrix[3, 3] = 2) and { Проверка расположения фигуры. }
            (matrix[3, 4] = 2) and
            (matrix[4, 4] = 2) and
            (matrix[4, 5] = 2) and
            (matrix[0, 10] = 4) and { Проверка формы фигуры. }
            (matrix[1, 10] = 2) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 3) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 3);
  tesMessage('figure', 'add_s_right', result);
end.
