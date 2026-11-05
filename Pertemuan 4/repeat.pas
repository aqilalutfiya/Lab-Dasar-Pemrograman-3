program cekpass;
uses crt;

var 
password: string;

begin
    clrscr;
    repeat
    write('Masukkan password:');
    readln(password);

    if password <> '54321' then 
    writeln('Password salah');

    until password='54321';

    writeln('Password benar');
    writeln('Selamat datang');
end.