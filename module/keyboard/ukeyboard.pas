{ keyboard.pas }

unit UKeyboard;

interface
uses crt, UKey; 
procedure keyHandleInput(var key: TKey);

implementation
{$I handle_input.pas}

end.
