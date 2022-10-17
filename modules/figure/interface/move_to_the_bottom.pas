{ move_to_the_bottom.pas }

procedure figMoveToTheBottom(var matrix: TMatrix);
begin
  while not figIsOnTheBottom(matrix) do
    figMoveDown(matrix);
end;
