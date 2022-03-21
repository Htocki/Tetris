{ ufield.pas }

unit UField;

interface
uses UFigure, UMatrix;
procedure fieAdd(var matrix: TMatrix; width, height: integer);
function fieDeleteFilledLine(var matrix: TMatrix): boolean;

implementation
{$I add.pas}
{$I delete_filled_line.pas}

end.
