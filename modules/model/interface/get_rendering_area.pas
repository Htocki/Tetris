{ get_rendering_area.pas }

procedure modGetRenderingArea(
  var matrix: TMatrix;
  var rendering_area: TMatrix);
const
  generation_area_height: integer = 4;
  status_area_height: integer = 1;
var
  i, j, width, height: integer;
begin
  width := matWidth(matrix);
  height := matHeight(matrix) - generation_area_height - status_area_height;
  SetLength(rendering_area, width, height);
  for i := 0 to width - 1 do
    for j := 0 to height - 1 do
      rendering_area[i, j] := matrix[i, j + generation_area_height];
end;
