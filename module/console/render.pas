{ render.pas }

{$I draw_field.pas}
{$I draw_finish.pas}
{$I draw_frame.pas}
{$I draw_menu_with_active_item.pas}
{$I draw_pause.pas}

procedure conRender(var matrix: TMatrix; state: TState);
begin
  Clrscr;
  case state of
    s_MenuStart: DrawMenuWithActiveItem(matrix, 1);
    s_MenuQuit: DrawMenuWithActiveItem(matrix, 2);
    s_PlayStart: DrawField(matrix);
    s_PlayPause: begin
      DrawField(matrix);
      DrawPause;
    end;
    s_PlayFinish: begin
      DrawField(matrix);
      DrawFinish;
    end;
  end;
  DrawFrame(matrix);
end;
