program beasiswa;
uses crt;
var
  ipk, penghasilan, prestasi: real;

begin
    clrscr;

    write('Masukkan IPK: ');
    readln(ipk);
    write('Masukkan penghasilan orang tua: ');
    readln(penghasilan);
    write('Masukkan jumlah prestasi: ');
    readln(prestasi);

  if IPK < 2.75 then
    writeln('IPK Tidak Memenuhi Syarat')
  else if (IPK >= 3.75) and (penghasilan <= 5000000) and (prestasi >= 2) then
    writeln('Mendapatkan Beasiswa Penuh')
  else if (IPK >= 3.50) and (penghasilan <= 7000000) and (prestasi >= 1) then
    writeln('Mendapatkan Beasiswa Sebagian')
  else if penghasilan > 7000000 then
    writeln('Penghasilan Tidak Memenuhi Syarat')
  else
    writeln('Tidak Mendapatkan Beasiswa');

end.