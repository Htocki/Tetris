{ update.pas }

{$I run.pas}
{$I pause.pas}

procedure Update(var state: TMatrix; var game_state: TGameState; key: TKey);
begin
  case game_state of
    Runned: Run(state, game_state, key);
    Paused: Pause(state, game_state, key);
  end;
end;
