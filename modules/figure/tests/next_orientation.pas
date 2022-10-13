{ next_orientation.pas }

program NextOrientation;
uses
  UFigure, UTest;
var
  before, after: TOrientation;
  result: boolean;
  {$I ../implementation/next_orientation.pas}
begin
  before := Left;
  after := Down;
  after := figNextOrientation(after);
  result := before = after;

  before := Top;
  after := Left;
  after := figNextOrientation(after);
  result := result and (before = after);
  
  before := Right;
  after := Top;
  after := figNextOrientation(after);
  result := result and (before = after);
  
  before := Down;
  after := Right;
  after := figNextOrientation(after);
  result := result and (before = after);

  tesMessage('figure', 'next_orientation', result);
end.
