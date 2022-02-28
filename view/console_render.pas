{ console_render.pas }
procedure ConsoleRender(var display: TMatrix);
var
  i, j, w, h: integer;
  indent_x, indent_y: integer;
begin
  ClrScr;
  w := Length(display);
  h := Length(display[0]);
  indent_x := 1 + ScreenWidth div 2 - w div 2;
  indent_y := 1 + ScreenHeight div 2 - h div 2;
  for i := 0 to w - 1 do
    for j := 0 to h - 1 do begin
      GotoXY(i + indent_x, j + indent_y);
      if display[i, j] = 1 then begin
        TextColor(Green);
        Write('H');
      end else if display[i, j] = 2 then begin
        TextColor(White);
        Write('H');
      end else if display[i, j] = 3 then begin
        TextColor(Yellow);
        Write('H');
      end;
    end;
  GotoXY(1, 1);
end;
