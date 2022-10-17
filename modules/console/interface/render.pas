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

{$I ../implementation/draw_field.pas}
{$I ../implementation/draw_finish.pas}
{$I ../implementation/draw_frame.pas}
{$I ../implementation/draw_items.pas}
{$I ../implementation/draw_name.pas}
{$I ../implementation/draw_pause.pas}
{$I ../implementation/draw_score.pas}
{$I ../implementation/draw_separator.pas}
{$I ../implementation/initialize.pas}

procedure conRender(var matrix: TMatrix; var state: TState; var user: TUser);
var
  renderer: TRenderer;
begin
  Initialize(matrix, renderer);
  Clrscr;
  case state of
    s_MenuPlay: begin
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
    s_PlayStop: begin
      DrawFrame(renderer);
      DrawSeparator(renderer);
      DrawField(matrix, renderer);
      DrawName(renderer, user.name);
      DrawScore(renderer, user.score);
      DrawFinish(renderer);
    end;
  end;
end;
