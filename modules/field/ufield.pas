{ ufield.pas }

unit UField;

interface
uses
  UMatrix;

procedure fieInitialize(var matrix: TMatrix);
function fieDeleteFilledLines(var matrix: TMatrix): integer;
function fieIsFilled(var matrix: TMatrix): boolean;

implementation
{$I interface/initialize.pas}
{$I interface/delete_filled_lines.pas}
{$I interface/is_filled.pas}

end.
