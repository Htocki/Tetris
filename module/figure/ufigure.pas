{ ufigure.pas }

unit UFigure;

interface
uses UMatrix;
procedure figAdd(var matrix: TMatrix);
procedure figDeactivate(var matrix: TMatrix);
function figIsOnTop(var matrix: TMatrix): boolean;
function figMoveDown(var matrix: TMatrix): boolean;
procedure figMoveDownToTheBarrier(var matrix: TMatrix);
procedure figMoveLeft(var matrix: TMatrix);
procedure figMoveRight(var matrix: TMatrix);
procedure figRotateRight(var matrix: TMatrix);

implementation
{$I add.pas}
{$I deactivate.pas}
{$I is_on_top.pas}
{$I move_down.pas}
{$I move_down_to_the_barrier}
{$I move_left.pas}
{$I move_right.pas}
{$I rotate_right.pas}

end.
