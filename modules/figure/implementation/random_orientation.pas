{ random_orientation.pas }

function figRandomOrientation(): TOrientation;
var
  number: integer;
begin
  number := random(4);
  case number of
    0: figRandomOrientation := Down;
    1: figRandomOrientation := Left;
    2: figRandomOrientation := Right;
    3: figRandomOrientation := Top;
  end;
end;
