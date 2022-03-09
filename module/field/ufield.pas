{ ufield.pas }

unit UField;

interface
uses UFigure, UMatrix;
procedure fieAdd(var matrix: TMatrix; width, height: integer);
procedure fieDeleteFilledLine(var matrix: TMatrix);
procedure fieRestart(var matrix: TMatrix);

implementation
{$I add.pas}
{$I delete_line.pas}
{$I restart.pas}

end.
