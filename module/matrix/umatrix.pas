{ umatrix.pas }

unit UMatrix;

interface
type
  TMatrix = array of array of integer;
procedure matCopy(var wherefrom: TMatrix; var whereinto: TMatrix);

implementation
{$I copy.pas}

end.
