{ initialize.pas }

procedure Initialize(var matrix: TMatrix; var renderer: TRenderer);
begin
  renderer.position.x := (-1 + ScreenWidth - matWidth(matrix) - 1 - 8 - 1) div 2;
  renderer.position.y := (-1 + ScreenHeight - matHeight(matrix) - 1) div 2;
  renderer.width := 1 + matWidth(matrix) + 1 + 8;
  renderer.height := 1 + matHeight(matrix);
  renderer.center.x := renderer.position.x + renderer.width div 2;
  renderer.center.y := renderer.position.y + renderer.height div 2;
  renderer.field.position.x := renderer.position.x + 1;
  renderer.field.position.y := renderer.position.y + 1;
  renderer.field.width := matWidth(matrix);
  renderer.field.height := matHeight(matrix);
  renderer.field.center.x :=
    renderer.field.position.x + renderer.field.width div 2;
  renderer.field.center.y :=
    renderer.field.position.y + renderer.field.height div 2;
  renderer.name.position.x :=
    renderer.position.x + 1 + renderer.field.width + 1 + 1;
  renderer.name.position.y := renderer.position.y + 1 + 1;
  renderer.name.length := 6;
  renderer.score.position.x := renderer.name.position.x;
  renderer.score.position.y := renderer.name.position.y + 1;
end;
