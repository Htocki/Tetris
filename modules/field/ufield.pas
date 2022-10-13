{ ufield.pas }

unit UField;

interface
uses UFigure, UMatrix;
procedure fieInitialize(var matrix: TMatrix);
function fieDeleteFilledLine(var matrix: TMatrix): boolean;
function fieIsTheVerticalFilled(var matrix: TMatrix): boolean;

implementation
{$I interface/initialize.pas}
{$I interface/delete_filled_line.pas}
{$I interface/is_the_vertical_filled.pas}

end.
