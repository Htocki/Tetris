{ add_l_right.pas }

program AddLRight;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_l_right.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 7;
  result := (figAddLRight(matrix, position) = false) and
            (matrix[5, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 9] = 0) and
            (matrix[6, 8] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 4;
  position.y := 1;
  matrix[6, 2] := 3;
  result := result and
            (figAddLRight(matrix, position) = false) and
            (matrix[4, 2] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 2] = 0) and
            (matrix[4, 3] = 0) and
            (matrix[6, 2] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 1;
  position.y := 2;
  result := result and
            (figAddLRight(matrix, position) = true) and
            (matrix[1, 3] = 2) and { Проверка расположения фигуры. }
            (matrix[2, 3] = 2) and
            (matrix[3, 3] = 2) and
            (matrix[1, 4] = 2) and
            (matrix[0, 10] = 2) and { Проверка формы фигуры. }
            (matrix[1, 10] = 2) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 1) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 2);
  tesMessage('figure', 'add_l_right', result);
end.
