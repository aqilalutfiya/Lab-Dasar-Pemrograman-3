program aksesAlamat;
uses crt;

var 
angka: integer;
i:^word;
ptrangka:^integer;

begin
    clrscr;

    angka:= 10;
    writeln ('Angkanya: ', angka);

    ptrangka := @angka; // ambil alamat
    writeln(ptrangka^); // ambila isi alamat yang dituju

    i:=addr(ptrangka);
    writeln('Alamat memorinya: ', i^);
end.