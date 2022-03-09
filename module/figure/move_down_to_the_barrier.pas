{ move_down_to_the_barrier.pas }

procedure figMoveDownToTheBarrier(var matrix: TMatrix);
begin
  while figMoveDown(matrix) do
    ;
end;
