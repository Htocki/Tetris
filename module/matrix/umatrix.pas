{ umatrix.pas }

unit UMatrix;

interface
type
  TMatrix = array of array of integer;
procedure matCopy(var wherefrom: TMatrix; var whereinto: TMatrix);
procedure matClear(var matrix: TMatrix);

implementation
{$I copy.pas}
{$I clear.pas}

end.
