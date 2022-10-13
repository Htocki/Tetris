{ default_position.pas }

function figDefaultPosition(var matrix: TMatrix): TPosition;
var
  position: TPosition;
begin
  position.x := matWidth(matrix) div 2;
  position.y := 0;
  figDefaultPosition := position;
end;
