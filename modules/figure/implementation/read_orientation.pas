{ read_orientation.pas }

{$IFNDEF FIG_READ_ORIENTATION}
{$DEFINE FIG_READ_ORIENTATION}

function figReadOrientation(var matrix: TMatrix): TOrientation;
begin
  case matrix[1, matHeight(matrix) - 1] of
    0: figReadOrientation := Down;
    1: figReadOrientation := Left;
    2: figReadOrientation := Right;
    3: figReadOrientation := Top;
  end;
end;

{$ENDIF}
