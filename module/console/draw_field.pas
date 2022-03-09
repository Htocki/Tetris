{ draw_field.pas }

procedure DrawField(var matrix: TMatrix);
var
  i, j, width, height, indent_x, indent_y: integer;
begin
  width := Length(matrix);
  height := Length(matrix[0]);
  indent_x := ScreenWidth div 2 - width div 2;
  indent_y := ScreenHeight div 2 - height div 2;
  for i := 0 to width - 1 do
    for j := 0 to height - 1 do begin
      GotoXY(i + indent_x, j + indent_y);
      if matrix[i, j] = 1 then begin
        TextColor(Green);
        Write('H');
      end else if matrix[i, j] = 2 then begin
        TextColor(White);
        Write('H');
      end else if matrix[i, j] = 3 then begin
        TextColor(Yellow);
        Write('H');
      end;
    end;
  GotoXY(1, 1);
end;
