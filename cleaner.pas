begin
  assign(input, 'rus_input.txt');
  reset(input);
  assign(output, 'rus_clean.txt');
  rewrite(output);
  while not eof(input) do
  begin
    var a := ReadString;
    if (length(a)>3) and (length(a)<8)
      then writeln(a);
  end;
  close(input);
  close(output);
end.