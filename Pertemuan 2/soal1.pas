program sisa_uang;
uses crt;

var 
nama: string;
makan,minum,uang,sisa,pengeluaran : integer;

begin 
clrscr;
writeln('Masukkan nama: ');
readln(nama);

writeln('Masukkan uang awal: ');
readln(uang);

writeln('Masukkan harga makanan: ');
readln(makan);

writeln('Masukkan harga minuman: ');
readln(minum);

pengeluaran:=makan+minum;
sisa:=uang-pengeluaran;
writeln('Sisa uang: ',sisa);
readln;
end.
