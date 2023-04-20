begin
  assign(input, 'rus_clean.txt');
  reset(input);
  assign(output, 'rus_5.txt');
  rewrite(output);
  while not eof(input) do
  begin
    var a := ReadString;
    if (length(a)=5) and (a[5]<>'ы') or (length(a)=6) and ((a[6]='ы') or (a[6]='и'))
      then writeln(a);
  end;
  close(output);
end.