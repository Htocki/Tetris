{ initialize.pas }

procedure Initialize(var matrix: TMatrix; var renderer: TRenderer);
begin
  renderer.position.x := (-1 + ScreenWidth - Length(matrix) - 1 - 8 - 1) div 2;
  renderer.position.y := (-1 + ScreenHeight - Length(matrix[0]) - 1) div 2;
  renderer.width := 1 + Length(matrix) + 1 + 8;
  renderer.height := 1 + Length(matrix[0]);
  renderer.center.x := renderer.position.x + renderer.width div 2;
  renderer.center.y := renderer.position.y + renderer.height div 2;
  renderer.field.position.x := renderer.position.x + 1;
  renderer.field.position.y := renderer.position.y + 1;
  renderer.field.width := Length(matrix);
  renderer.field.height := Length(matrix[0]);
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
