program record1;
uses crt;

    type 
        data = record
            nama : string;
            nim : string;
            kom : char;
        end;

var 
mahasiswa : data;


begin 
clrscr;
textcolor(yellow);
mahasiswa.nama := 'aqila';
mahasiswa.nim := '261401013';
mahasiswa.kom :='B';

writeln ('Nama : ', mahasiswa.nama);
writeln ('Nim : ', mahasiswa.nim);
writeln ('kom : ', mahasiswa.kom);

end.