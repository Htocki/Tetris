{ uconsole.pas }

unit UConsole;

interface
uses crt, UMatrix, UState;
procedure conRender(var matrix: TMatrix; state: TState);

implementation
{$I render.pas}

end.
