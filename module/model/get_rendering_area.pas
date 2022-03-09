{ get_rendering_area.pas }

procedure modGetRenderingArea(
  var matrix: TMatrix;
  var rendering_area: TMatrix);
const
  generation_area_height = 4;
var
  i, j, width, height: integer;
begin
  width := Length(matrix);
  height := Length(matrix[0]) - generation_area_height;
  SetLength(rendering_area, width, height);
  for i := 0 to width - 1 do
    for j := 0 to height - 1 do
      rendering_area[i, j] := matrix[i, j + generation_area_height];
end;
