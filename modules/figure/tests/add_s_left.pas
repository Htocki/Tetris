{ add_s_left.pas }

program AddSLeft;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_s_left.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 2;
  position.y := 8;
  result := (figAddSLeft(matrix, position) = false) and
            (matrix[3, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[3, 9] = 0) and
            (matrix[4, 9] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 3;
  position.y := 7;
  matrix[5, 9] := 3;
  result := result and
            (figAddSLeft(matrix, position) = false) and
            (matrix[4, 7] = 0) and { Проверка расположения фигуры. }
            (matrix[4, 8] = 0) and
            (matrix[5, 8] = 0) and
            (matrix[5, 9] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 2;
  position.y := 4;
  result := result and
            (figAddSLeft(matrix, position) = true) and
            (matrix[3, 4] = 2) and { Проверка расположения фигуры. }
            (matrix[3, 5] = 2) and
            (matrix[4, 5] = 2) and
            (matrix[4, 6] = 2) and
            (matrix[0, 10] = 4) and { Проверка формы фигуры. }
            (matrix[1, 10] = 1) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 2) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 4);
  tesMessage('figure', 'add_s_left', result);
end.
