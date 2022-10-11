{ add_l_down.pas }

program AddLDown;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_l_down.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 1;
  position.y := 8;
  result := (figAddLDown(matrix, position) = false) and
            (matrix[1, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[2, 8] = 0) and
            (matrix[2, 9] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 5;
  position.y := 4;
  matrix[6, 4] := 3;
  matrix[6, 5] := 3;
  matrix[6, 6] := 3;
  result := result and
            (figAddLDown(matrix, position) = false) and
            (matrix[5, 4] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 4] = 3) and
            (matrix[6, 5] = 3) and
            (matrix[6, 6] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 4;
  position.y := 4;
  result := result and
            (figAddLDown(matrix, position) = true) and
            (matrix[4, 4] = 2) and { Проверка расположения фигуры. }
            (matrix[5, 4] = 2) and
            (matrix[5, 5] = 2) and
            (matrix[5, 6] = 2) and
            (matrix[0, 10] = 2) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 4) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 4);
  tesMessage('figure', 'add_l_down', result);
end.
