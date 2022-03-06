{ finish.pas }

procedure Finish(var state: TMatrix; var game_state: TGameState; key: TKey);
begin
  case key of
    Enter: begin
      fieRestart(state);
      game_state := Runned;
    end;
    Escape: halt;
  end;    
end;
