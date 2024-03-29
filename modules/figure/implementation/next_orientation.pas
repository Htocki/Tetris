{ next_orientation.pas }

{$IFNDEF FIG_NEXT_ORIENTATION}
{$DEFINE FIG_NEXT_ORIENTATION}

function figNextOrientation(orientation: TOrientation): TOrientation;
begin
  case orientation of
    Down:  figNextOrientation := Left;
    Left:  figNextOrientation := Top;
    Top:   figNextOrientation := Right;
    Right: figNextOrientation := Down;
  end;
end;

{$ENDIF}
