{ update.pas }

{$I ../implementation/menu_play.pas}
{$I ../implementation/menu_quit.pas}
{$I ../implementation/play_pause.pas}
{$I ../implementation/play_start.pas}
{$I ../implementation/play_stop.pas}

procedure modUpdate(
  var matrix: TMatrix; var state: TState; key: TKey; var user: TUser);
begin
  case state of
    s_MenuPlay:   modMenuPlay(state, key);
    s_MenuQuit:   modMenuQuit(state, key);
    s_PlayPause:  modPlayPause(state, key);
    s_PlayStart:  modPlayStart(matrix, state, key, user);
    s_PlayStop:   modPlayStop(matrix, state, key, user);
  end;
end;
