{ umatrix.pas }

unit UMatrix;

interface
type
  TMatrix = array of array of integer;

procedure matCopy(var wherefrom: TMatrix; var whereinto: TMatrix);
procedure matClear(var matrix: TMatrix);
procedure matDefaultInitialize(var matrix: TMatrix; width, height: integer);
procedure matFill(var matrix: TMatrix; value: integer);
function matIsEqual(var left: TMatrix; var right: TMatrix): boolean;
function matHeight(var matrix: TMatrix): integer;
function matWidth(var matrix: TMatrix): integer;

implementation
{$I clear.pas}
{$I copy.pas}
{$I default_initialize.pas}
{$I fill.pas}
{$I height.pas}
{$I is_equal.pas}
{$I width.pas}

end.