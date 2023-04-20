begin
  assign(input, 'rus_5.txt');
  reset(input);
  assign(output, 'rus_5_down.txt');
  rewrite(output);
  while not eof(input) do
  begin
    var a := ReadString;
    a[1]:=chr(ord(a[1])+32);
    writeln(a);
  end;
  close(output);
end.