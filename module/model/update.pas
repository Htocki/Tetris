{ update.pas }

{$I update/finish.pas}
{$I update/menu_quit.pas}
{$I update/menu_start.pas}
{$I update/pause.pas}
{$I update/play.pas}

procedure modUpdate(
  var matrix: TMatrix; var state: TState; key: TKey; var user: TUser);
begin
  case state of
    s_MenuStart: MenuStart(state, key);
    s_MenuQuit: MenuQuit(state, key);
    s_PlayStart: Play(matrix, state, key, user);
    s_PlayPause: Pause(state, key);
    s_PlayFinish: Finish(matrix, state, key, user);
  end;
end;
