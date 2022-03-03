{ figure.pas }
unit figure;

interface
uses matrix;
procedure figAdd(var state: TMatrix);
procedure figDeactivate(var state: TMatrix);
function figIsOnTop(var state: TMatrix): boolean;
function figMoveDown(var state: TMatrix): boolean;
procedure figMoveLeft(var state: TMatrix);
procedure figMoveRight(var state: TMatrix);

implementation
{$I add.pas}
{$I deactivate.pas}
{$I is_on_top.pas}
{$I move_down.pas}
{$I move_left.pas}
{$I move_right.pas}

end.
