{ utarget.pas } 

unit UTarget;

interface
uses
  UElement, UMatrix;

procedure tarInitialize(var matrix: TMatrix);
procedure tarDelete(var matrix: TMatrix);

implementation
{$I interface/initialize.pas}
{$I interface/delete.pas}

end.
