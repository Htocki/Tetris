{ utest.pas }

unit UTest;

interface

procedure tesMessage(
  module_name: string; function_name: string; result: boolean);

implementation
{$I interface/message.pas}

end.
