{ add_i_down.pas }

program AddIDown;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_i_down.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 4;
  position.y := 7;
  result := (figAddIDown(matrix, position) = false) and
            (matrix[6, 7] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 8] = 0) and
            (matrix[6, 9] = 0) and
            (matrix[6, 10] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  matrix[5, 9] := 3;
  position.x := 3;
  position.y := 6;
  result := result and
            (figAddIDown(matrix, position) = false) and
            (matrix[5, 6] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 7] = 0) and
            (matrix[5, 8] = 0) and
            (matrix[5, 9] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 2;
  position.y := 2;
  result := result and
            (figAddIDown(matrix, position) = true) and
            (matrix[4, 2] = 2) and { Проверка расположения фигуры. }
            (matrix[4, 3] = 2) and
            (matrix[4, 4] = 2) and
            (matrix[4, 5] = 2) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 2) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 2);
  tesMessage('figure', 'add_i_down', result);
end.
