{ umodel.pas }

unit UModel;

interface
uses crt, UField, UFigure, UMatrix, UKey, UState;
procedure modGetRenderingArea(var matrix: TMatrix;
                              var rendering_area: TMatrix);
procedure modInitialize(var matrix: TMatrix; var state: TState; var key: TKey);
procedure modUpdate(var matrix: TMatrix; var state: TState; key: TKey);

implementation
{$I get_rendering_area.pas}
{$I initialize.pas}
{$I update.pas}

end.
