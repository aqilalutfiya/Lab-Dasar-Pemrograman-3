program recordbnyak;
uses crt;

//record nested
type 
    rumah = record
        jalan : string;
        no : integer;
        kota : string;
    end;


//record utama
type 
        data = record
            nama : string;
            nim : string;
            kom : char;
            alamat : rumah;
        end;

var 
mahasiswa, mahasiswa1 : data;


begin 
clrscr;

with mahasiswa do 
    begin 
        nama := 'qila';
        nim := '261401013';
        kom :='B';
        alamat.jalan := 'Mawar';
        alamat.no := 52;
        alamat.kota := 'Medan';

        writeln ('Hallo ', nama);
        writeln ('Nim : ', nim);
        writeln ('Kom : ', kom);
        writeln ('Alamatmu di jalan ', alamat.jalan);
        writeln ('Alamatmu di nomor ', alamat.no);
        writeln ('Alamatmu di kota ', alamat.kota);

    end;
writeln;
with mahasiswa1 do 
    begin 
        nama := 'qeel';
        nim := '261401013';
        kom :='B';
        alamat.jalan := 'Melati';
        alamat.no := 51;
        alamat.kota := 'Medan';

        writeln ('Hallo ', nama);
        writeln ('Nim : ', nim);
        writeln ('Kom : ', kom);
        writeln ('Alamatmu di jalan ', alamat.jalan);
        writeln ('Alamatmu di nomor ', alamat.no);
        writeln ('Alamatmu di kota ', alamat.kota);

    end;

end.