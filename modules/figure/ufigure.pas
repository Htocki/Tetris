{ ufigure.pas }

unit UFigure;

interface
uses UMatrix, UElement;
type
  TPosition = record
    x: integer;
    y: integer;
  end;
  TForm = (I, J, L, O, S, T, Z);
  TOrientation = (Down, Left, Right, Top);

procedure figDeactivate(var matrix: TMatrix);
procedure figInitialize(
  var matrix: TMatrix; form: TForm; orientation: TOrientation;
  var position: TPosition);
procedure figMoveDown(var matrix: TMatrix);
procedure figMoveLeft(var matrix: TMatrix);
procedure figMoveRight(var matrix: TMatrix);
{procedure figMoveToTheBottom(var matrix: TMatrix);}
procedure figRotateRight(var matrix: TMatrix);
{function figIsOnTheBottom(var matrix: TMatrix): boolean;} 

implementation
{$I interface/deactivate.pas}
{$I interface/initialize.pas}
{$I interface/move_down.pas}
{$I interface/move_left.pas}
{$I interface/move_right.pas}
{$I interface/rotate_right.pas}
{{$I interface/move_to_the_bottom}}

end.
