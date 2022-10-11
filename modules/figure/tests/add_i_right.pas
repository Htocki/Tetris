{ add_i_right.pas }

program AddIRight;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_i_right.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 4;
  position.y := 7;
  result := (figAddIRight(matrix, position) = false) and
            (matrix[4, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 8] = 0) and
            (matrix[6, 8] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  matrix[6, 7] := 3;
  position.x := 3;
  position.y := 6;
  result := result and
            (figAddIRight(matrix, position) = false) and
            (matrix[3, 7] = 0) and { Проверка расположения фигуры. }
            (matrix[4, 7] = 0) and
            (matrix[5, 7] = 0) and
            (matrix[6, 7] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 2;
  position.y := 2;
  result := result and
            (figAddIRight(matrix, position) = true) and
            (matrix[2, 3] = 2) and { Проверка расположения фигуры. }
            (matrix[3, 3] = 2) and
            (matrix[4, 3] = 2) and
            (matrix[5, 3] = 2) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 2) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 2) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 2);
  tesMessage('figure', 'add_i_right', result);
end.
