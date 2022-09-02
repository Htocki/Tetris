{ umatrix.pas }

unit UMatrix;

interface
type
  TMatrix = array of array of integer;
procedure matCopy(var wherefrom: TMatrix; var whereinto: TMatrix);
procedure matClear(var matrix: TMatrix);
function matHeight(var matrix: TMatrix): integer;
function matWidth(var matrix: TMatrix): integer;

implementation
{$I copy.pas}
{$I clear.pas}
{$I height.pas}
{$I width.pas}

end.
