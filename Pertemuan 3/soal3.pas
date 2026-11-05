program suhu_tubuh;
uses crt;

var 
suhu: integer;

begin 
clrscr;

writeln('Masukkan suhu: ');
readln(suhu);

if (suhu<36) then 
    begin
        writeln('Suhu Rendah');
    end;

else if (36>suhu>37.5) then 
    begin 
        writeln('Suhu Normal');
    end

else if (suhu>37.5) then 
    begin 
        writeln('Demam');
    end;
end.