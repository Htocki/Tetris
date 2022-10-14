{ add_i_left.pas }

program AddILeft;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_i_left.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 4;
  position.y := 7;
  result := (figAddILeft(matrix, position) = false) and
            (matrix[4, 9] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 9] = 0) and
            (matrix[6, 9] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  matrix[6, 8] := 3;
  position.x := 3;
  position.y := 6;
  result := result and
            (figAddILeft(matrix, position) = false) and
            (matrix[3, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[4, 8] = 0) and
            (matrix[5, 8] = 0) and
            (matrix[6, 8] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 2;
  position.y := 2;
  result := result and
            (figAddILeft(matrix, position) = true) and
            (matrix[2, 4] = 2) and { Проверка расположения фигуры. }
            (matrix[3, 4] = 2) and
            (matrix[4, 4] = 2) and
            (matrix[5, 4] = 2) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 1) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 2) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 2);
  tesMessage('figure', 'add_i_left', result);
end.
