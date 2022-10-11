{ add_s_down.pas }

program AddSDown;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_s_down.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 7;
  result := (figAddSDown(matrix, position) = false) and
            (matrix[5, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 8] = 0) and
            (matrix[6, 7] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 4;
  position.y := 4;
  matrix[6, 4] := 3;
  result := result and
            (figAddSDown(matrix, position) = false) and
            (matrix[4, 5] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 5] = 0) and
            (matrix[5, 4] = 0) and
            (matrix[6, 4] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 1;
  position.y := 1;
  result := result and
            (figAddSDown(matrix, position) = true) and
            (matrix[1, 2] = 2) and { Проверка расположения фигуры. }
            (matrix[2, 2] = 2) and
            (matrix[2, 1] = 2) and
            (matrix[3, 1] = 2) and
            (matrix[0, 10] = 4) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 1) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 1);
  tesMessage('figure', 'add_s_down', result);
end.
