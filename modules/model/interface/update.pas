{ update.pas }

{$I ../implementation/finish.pas}
{$I ../implementation/menu_quit.pas}
{$I ../implementation/menu_start.pas}
{$I ../implementation/pause.pas}
{$I ../implementation/play.pas}

procedure modUpdate(
  var matrix: TMatrix; var figure: TFigure; var state: TState; key: TKey; var user: TUser);
begin
  case state of
    s_MenuStart: MenuStart(state, key);
    s_MenuQuit: MenuQuit(state, key);
    s_PlayStart: Play(matrix, figure, state, key, user);
    s_PlayPause: Pause(state, key);
    s_PlayFinish: Finish(matrix, figure, state, key, user);
  end;
end;
