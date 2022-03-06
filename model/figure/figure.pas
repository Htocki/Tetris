{ figure.pas }

unit figure;

interface
uses matrix;
procedure figAdd(var state: TMatrix);
procedure figDeactivate(var state: TMatrix);
function  figIsOnTop(var state: TMatrix): boolean;
function  figMoveDown(var state: TMatrix): boolean;
procedure figMoveDownToTheBarrier(var state: TMatrix);
procedure figMoveLeft(var state: TMatrix);
procedure figMoveRight(var state: TMatrix);
procedure figRotateRight(var state: TMatrix);

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
