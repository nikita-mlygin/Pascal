var s: string;
i, j, flag, k: integer;

begin

readln (s);
k:=1;

for i:=2 to length (s) do
begin
  flag:=1;
  
  if(s[i] <> s[1]) then
  begin
    write(s[i]);
    for j := i+1 to length(s) do
      if(s[i] = s[j]) then
      begin
        flag := flag + 1;
        s[j] := s[1];
        k := k-1;
      end;
      
    
    writeln(': ', flag);
  end else
    k += 1;
end;

writeln(s[1], ': ', k);
end.