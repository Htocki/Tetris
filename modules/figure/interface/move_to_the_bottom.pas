{ move_to_the_bottom.pas }

procedure figMoveToTheBottom(var matrix: TMatrix);
begin
  while figMoveDown(matrix, figure) do
    ;
end;
