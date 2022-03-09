{ update.pas }

{$I finish.pas}
{$I menu_quit.pas}
{$I menu_start.pas}
{$I pause.pas}
{$I play.pas}

procedure modUpdate(var matrix: TMatrix; var state: TState; key: TKey);
begin
  case state of
    s_MenuStart: MenuStart(state, key);
    s_MenuQuit: MenuQuit(state, key);
    s_PlayStart: Play(matrix, state, key);
    s_PlayPause: Pause(state, key);
    s_PlayFinish: Finish(matrix, state, key);
  end;
end;
