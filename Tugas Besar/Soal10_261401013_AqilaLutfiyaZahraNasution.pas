program no10;
uses crt;

var 
angka: integer;

begin 
clrscr;

write('Pilih hari ke-: ');
readln(angka);

//Output nama hari
case angka of
    1: writeln ('Hari Senin');
    2: writeln ('Hari Selasa');
    3: writeln ('Hari Rabu');
    4: writeln ('Hari Kamis');
    5: writeln ('Hari Jumat');
    6: writeln ('Hari Sabtu');
    7: writeln ('Hari Minggu');

else 
    writeln('Angka tidak valid');
end;

end.