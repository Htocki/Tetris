{ umodel.pas }

unit UModel;

interface
uses crt, UField, UFigure, UMatrix, UKey, UState, UTarget, UUser;
procedure modGetRenderingArea(
  var matrix: TMatrix; var rendering_area: TMatrix);
procedure modInitialize(
  var matrix: TMatrix; var state: TState; var key: TKey; var user: TUser);
procedure modUpdate(
  var matrix: TMatrix; var state: TState; key: TKey; var user: TUser);

implementation
{$I get_rendering_area.pas}
{$I initialize.pas}
{$I update.pas}

end.
