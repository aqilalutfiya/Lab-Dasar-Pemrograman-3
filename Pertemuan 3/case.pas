program minggu;
uses crt;

var 
angka: integer;

begin 
clrscr;

writeln('Sebutkan angka ke : ');
readln(angka);

case angka of
    1: writeln ('Ini hari senin');
    2: writeln ('Ini hari selasa');
    3: writeln ('Ini hari rabu');
    4: writeln ('Ini hari kamis');
    5: writeln ('Ini hari jumat');
    6: writeln ('Ini hari sabtu');
    7: writeln ('Ini hari minggu');

else 
    writeln('Angka tidak valid');
end;

end.