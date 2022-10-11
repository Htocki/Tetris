{ add_z_down.pas }

program AddZDown;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_z_down.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 2;
  result := (figAddZDown(matrix, position) = false) and
            (matrix[5, 2] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 2] = 0) and
            (matrix[6, 3] = 0) and
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
            (figAddZDown(matrix, position) = false) and
            (matrix[4, 1] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 1] = 0) and
            (matrix[5, 2] = 0) and
            (matrix[6, 2] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 2;
  position.y := 1;
  result := result and
            (figAddZDown(matrix, position) = true) and
            (matrix[2, 1] = 2) and { Проверка расположения фигуры. }
            (matrix[3, 1] = 2) and
            (matrix[3, 2] = 2) and
            (matrix[4, 2] = 2) and
            (matrix[0, 10] = 6) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 2) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 1);
  tesMessage('figure', 'add_z_down', result);
end.
