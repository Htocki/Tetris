{ render.pas }
type
  TPosition = record
    x: integer;
    y: integer;
  end;

  TFieldRenderer = record
    position: TPosition;
    width: integer;
    height: integer;
    center: TPosition;
  end;

  TNameRenderer = record
    position: TPosition;
    width: integer;
    height: integer;
    length: integer;
  end;

  TScoreRenderer = record
    position: TPosition;
    width: integer;
    height: integer;
  end;

  TRenderer = record
    position: TPosition;
    width: integer;
    height: integer;
    center: TPosition;
    field: TFieldRenderer;
    name: TNameRenderer;
    score: TScoreRenderer;
  end;

{$I draw_field.pas}
{$I draw_finish.pas}
{$I draw_frame.pas}
{$I draw_items.pas}
{$I draw_name.pas}
{$I draw_pause.pas}
{$I draw_score.pas}
{$I draw_separator.pas}
{$I initialize.pas}

procedure conRender(var matrix: TMatrix; state: TState; var user: TUser);
var
  renderer: TRenderer;
begin
  Initialize(matrix, renderer);
  Clrscr;
  case state of
    s_MenuStart: begin
      DrawFrame(renderer);
      DrawItems(renderer, 1);
    end;
    s_MenuQuit: begin
      DrawFrame(renderer);
      DrawItems(renderer, 2);
    end;
    s_PlayStart: begin
      DrawFrame(renderer);
      DrawSeparator(renderer);
      DrawField(matrix, renderer);
      DrawName(renderer, user.name);
      DrawScore(renderer, user.score);
    end;
    s_PlayPause: begin
      DrawFrame(renderer);
      DrawSeparator(renderer);
      DrawField(matrix, renderer);
      DrawName(renderer, user.name);
      DrawScore(renderer, user.score);
      DrawPause(renderer);
    end;
    s_PlayFinish: begin
      DrawFrame(renderer);
      DrawSeparator(renderer);
      DrawField(matrix, renderer);
      DrawName(renderer, user.name);
      DrawScore(renderer, user.score);
      DrawFinish(renderer);
    end;
  end;
end;
