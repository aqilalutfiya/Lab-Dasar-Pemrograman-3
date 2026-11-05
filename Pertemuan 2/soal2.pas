program nilai;
uses crt;

var 
nama: string;
tugas, uts, uas, akhir : real;

begin 
clrscr;
writeln('Masukkan nama: ');
readln(nama);
writeln('Masukkan nilai tugas: ');
readln(tugas);
writeln('Masukkan nilai UTS: ');
readln(uts);
writeln('Masukkan nilai UAS: ');
readln(uas);

akhir := (tugas*3/10)+(uts*3/10)+(uas*4/10);

writeln('Nilai akhir: ', akhir);

end.