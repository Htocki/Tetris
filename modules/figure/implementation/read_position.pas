{ read_position.pas }

{$IFNDEF FIG_READ_POSITION}
{$DEFINE FIG_READ_POSITION}

function figReadPosition(var matrix: TMatrix): TPosition;
var
  output: TPosition;
begin
  output.x := matrix[2, matHeight(matrix) - 1];
  output.y := matrix[3, matHeight(matrix) - 1];
  figReadPosition := output; 
end;

{$ENDIF}
