program no2;
uses crt;

var 
i: integer;

begin
    clrscr;
    for i := 1 to 100 do 
    begin 
        if (i mod 3 <> 0) and (i mod 5 <> 0) then
        begin 
            write(' ',i);
        end;
    end;

readln;
end.