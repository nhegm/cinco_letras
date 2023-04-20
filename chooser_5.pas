var size,n,i: integer;
wa: array [4] of char;
ans: char;
begin
  assign(input, 'rus_5_down.txt');       // change .txt to switch a vocabulary
  reset(input);
// size - amount of words
  while not eof(input) do begin
    inc(size);
    var b := ReadString;
  end;
  close(input);
//  writeln(size)
//  writeln(i);
// v   new array with all words   v
  var a: array of string:= new string [size];
  reset(input);
  while not eof(input) do begin
    inc(n);
    var b := ReadString;
    a[n-1]:=b;                            // array counts from 0 to n-1
//    writeln(n,' ',b);
  end;
//  writeln(a);
  i:=random(1,size);
  writeln(a[i]);
// V   trying to find a letter in the word   V
  for i:=1 to 5 do begin
    a[i-1]
  end;
end.