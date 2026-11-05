3program nomor1;
uses crt;

var 
  N, i: integer;
  harga: real;
  total, diskon, bayar: real;

begin
  clrscr;
//1. Minta pengguna memasukkan N (jumlah barang yang dibeli) 
    write('Masukkan jumlah barang yang dibeli (N): ');
    readln(N);

    total := 0;

//2. Gunakan perulangan 'for-to-do' untuk menginput harga barang ke-1 hingga ke-N 
    for i := 1 to N do
    begin
        write('Masukkan harga barang ke-', i, ': Rp ');
        readln(harga);
        total := total + harga; 
    end;

//3. Hitung diskon dengan ketentuan if-else 
    if total >= 500000 then
    begin
        diskon := total * 0.20;
    end
    else if total >= 100000 then
    begin 
        diskon := total * 0.10; 
    end
    else 
    begin
        diskon := 0;           
    end;

    bayar := total - diskon;

//4. Tampilkan Rincian Belanja, Total Sebelum Diskon, Besar Diskon, dan Total Bayar Akhir 
        writeln('Jumlah barang dibeli: ', N);
        writeln('Total Sebelum Diskon: Rp ', total:0:0);
        writeln('Besar Diskon: Rp ', diskon:0:0);
        writeln('Total Bayar Akhir: Rp ', bayar:0:0);
end.