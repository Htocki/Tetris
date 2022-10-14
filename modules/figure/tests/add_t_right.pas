{ add_t_right.pas }

program AddTRight;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_t_right.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 6;
  position.y := 6;
  result := (figAddTRight(matrix, position) = false) and
            (matrix[6, 6] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 7] = 0) and
            (matrix[6, 8] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 5;
  position.y := 1;
  matrix[6, 2] := 3;
  result := result and
            (figAddTRight(matrix, position) = false) and
            (matrix[5, 1] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 2] = 0) and
            (matrix[5, 3] = 0) and
            (matrix[6, 2] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 2;
  position.y := 3;
  result := result and
            (figAddTRight(matrix, position) = true) and
            (matrix[2, 3] = 2) and { Проверка расположения фигуры. }
            (matrix[2, 4] = 2) and
            (matrix[2, 5] = 2) and
            (matrix[3, 4] = 2) and
            (matrix[0, 10] = 5) and { Проверка формы фигуры. }
            (matrix[1, 10] = 2) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 2) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 3);
  tesMessage('figure', 'add_t_right', result);
end.
