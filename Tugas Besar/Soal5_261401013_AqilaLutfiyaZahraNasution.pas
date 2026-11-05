program no5;
uses crt; 
 
var 
m,n,i,j,lulus,tidak_lulus: integer;
nilai,total,rerata: real;

begin
clrscr;
//1. Minta input M (jumlah mahasiswa) dan N (jumlah tugas)
write('Masukkan jumlah mahasiswa: ');
readln(m);
write('masukkan jumlah tugas: ');
readln(n);

lulus:=0;
tidak_lulus:=0;

//2. Gunakan 'nested loop' ('for-do' bersarang) untuk menginput nilai tugas tiap mahasiswa
for i := 1 to m do
    begin
    writeln('Data Mahasiswa ke-', i);
    total:= 0;
    
    for j := 1 to n do
    begin
        write('Masukkan nilai tugas ke-', j, ': ');
        readln(nilai);
        total := total+nilai;
    end;

//3. Hitung rata-rata nilai tiap mahasiswa dan tentukan kelulusan: Rata-rata >= 65 dinyatakan "LULUS", selain itu "TIDAK LULUS"
rerata:=total/n;

write('Rata-rata mahasiswa ke-',i,': ',rerata:0:2);
if rerata >= 65 then 
    begin 
        writeln(' LULUS');
        lulus:=lulus+1;
    end
else 
    begin 
        writeln(' TIDAK LULUS');
        tidak_lulus:= tidak_lulus+1;
    end
end;

//4. Tampilkan rata-rata nilai tiap mahasiswa serta total mahasiswa LULUS dan TIDAK LULUS
writeln('Hasil Rekaptulasi:');
writeln('Total Mahasiswa LULUS:',lulus);
writeln('Total Mahasiswa TIDAK LULUS:', tidak_lulus);
end.