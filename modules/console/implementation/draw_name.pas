{ draw_name.pas }

procedure DrawName(var renderer: TRenderer; var name: string);
begin
  TextColor(Red);
  GotoXY(renderer.name.position.x, renderer.name.position.y);
  if Length(name) > renderer.name.length then begin
    name := copy(name, 1, renderer.name.length);
  end;
  Write(name);
  GotoXY(1, 1);
end;
