{ field.pas }
unit field;

interface
uses figure, matrix;
procedure fieAdd(var state: TMatrix; width, height: integer);
procedure fieDeleteFilledLine(var state: TMatrix);
procedure fieGetDisplayArea(var state: TMatrix; var display: TMatrix);

implementation
{$I delete_line.pas}
{$I get_display_area.pas}
{$I add.pas}

end.
