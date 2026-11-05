program tiket_bioskop;
uses crt; 
 
var 
film, hari, tiket: integer;
harga, harga_awal, diskon, total: real;

begin
clrscr;

writeln('Jenis Film:');
writeln('1. Reguler Rp30.000');
writeln('2. 3D      Rp45.000');
writeln('3. IMAX    Rp60.000');
writeln('Pilih Jenis Film: ');
readln(film);

case film of
    1: harga := 30000;
    2: harga := 45000;
    3: harga := 60000;

else 
    writeln('Film tidak valid');
end;

writeln('Hari:');
writeln('1. Senin-Kamis');
writeln('2. Jumat');
writeln('3. Sabtu-Minggu');
writeln('Pilih Hari: ');
readln(hari);

case film of
    1: harga := harga;
    2: harga := harga + 5000;
    3: harga := harga + 10000;
else 
    writeln('Hari tidak valid');
end;

writeln('Masukkan jumlah tiket: ');
readln(tiket);

harga_awal:=harga*tiket;


if harga_awal >= 200000 then
    diskon := harga_awal * 10/100
  else if harga_awal >= 100000 then
    diskon := harga_awal * 5/100
  else
    diskon := 0;

total:=harga_awal-diskon;

 writeln;
  writeln('Harga awal  : Rp', harga_awal:0:0);
  writeln('Diskon      : Rp', diskon:0:0);
  writeln('Total bayar : Rp', total:0:0);
end.