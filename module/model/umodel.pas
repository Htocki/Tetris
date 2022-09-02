{ umodel.pas }

unit UModel;

interface
uses crt, UField, UFigure, UMatrix, UKey, UState, UTarget, UUser;
procedure modDefaultInitialize(
  var matrix: TMatrix; var state: TState);
procedure modGetRenderingArea(
  var matrix: TMatrix; var rendering_area: TMatrix);
procedure modUpdate(
  var matrix: TMatrix; var state: TState; key: TKey; var user: TUser);

implementation
{$I default_initialize.pas}
{$I get_rendering_area.pas}
{$I update.pas}

end.
