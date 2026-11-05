program kabisat;
uses crt;

var 
tahun: integer;

begin 
clrscr;

writeln('Masukkan tahun: ');
readln(tahun);

if (tahun mod 4 = 0) then 
    begin
        writeln('Tahun kabisat');
    end;
end.