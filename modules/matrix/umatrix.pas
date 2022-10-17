{ umatrix.pas }

unit UMatrix;

interface
type
  TMatrix = array of array of integer;

procedure matClear(var matrix: TMatrix);
procedure matCopy(var wherefrom: TMatrix; var whereinto: TMatrix);
procedure matInitialize(var matrix: TMatrix; width, height: integer);
procedure matFill(var matrix: TMatrix; value: integer);
function matIsEqual(var left: TMatrix; var right: TMatrix): boolean;
function matHeight(var matrix: TMatrix): integer;
procedure matPrint(var matrix: TMatrix);
function matWidth(var matrix: TMatrix): integer;

implementation
{$I interface/clear.pas}
{$I interface/copy.pas}
{$I interface/initialize.pas}
{$I interface/fill.pas}
{$I interface/height.pas}
{$I interface/is_equal.pas}
{$I interface/print.pas}
{$I interface/width.pas}

end.
