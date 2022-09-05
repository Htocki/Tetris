{ message.pas }

procedure tesMessage(
  module_name: string; function_name: string; result: boolean);
begin
  if result then
    writeln(
      ' ', module_name, '.', function_name, ': Success.')
  else
    writeln(
      ' ', module_name, '.', function_name, ': Failure.');
end;