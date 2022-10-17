{ add_l_top.pas }

program AddLRight;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_l_top.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 2;
  result := (figAddLTop(matrix, position) = false) and
            (matrix[6, 2] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 3] = 0) and
            (matrix[6, 4] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 4;
  position.y := 4;
  matrix[6, 6] := 3;
  result := result and
            (figAddLTop(matrix, position) = false) and
            (matrix[5, 4] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 5] = 0) and
            (matrix[5, 6] = 0) and
            (matrix[6, 6] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 2;
  position.y := 5;
  result := result and
            (figAddLTop(matrix, position) = true) and
            (matrix[3, 5] = 2) and { Проверка расположения фигуры. }
            (matrix[3, 6] = 2) and
            (matrix[3, 7] = 2) and
            (matrix[4, 7] = 2) and
            (matrix[0, 10] = 2) and { Проверка формы фигуры. }
            (matrix[1, 10] = 3) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 2) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 5);
  tesMessage('figure', 'add_l_top', result);
end.
