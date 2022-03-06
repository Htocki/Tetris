{ move_down_to_the_barrier.pas }

procedure figMoveDownToTheBarrier(var state: TMatrix);
begin
  while figMoveDown(state) do
    ;
end;
