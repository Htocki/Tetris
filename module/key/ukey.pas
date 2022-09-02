{ ukey.pas }

unit UKey;

interface
type
  TKey = (
    k_Up,
    k_Down,
    k_Left,
    k_Right,
    k_Enter,
    k_Escape,
    k_Space,
    k_None
  );
  
  procedure keyDefaultInitialize(var key: TKey);

implementation
{$I default_initialize.pas}

end.
