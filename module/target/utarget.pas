{ utarget.pas } 

unit UTarget;

interface
uses UFigure, UMatrix;
procedure tarAdd(var matrix: TMatrix);
procedure tarDelete(var matrix: TMatrix);

implementation
{$I add.pas}
{$I delete.pas}

end.
