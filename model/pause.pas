{ pause.pas }

procedure Pause(var state: TMatrix; var game_state: TGameState; key: TKey);
begin
  case key of
    Space: game_state := Runned;
    Escape: halt;
  end;
end;
