program n06;
uses crt; 
 
var
uts,uas,tugas,hadir: integer;
akhir: real;
status: string;
indeks: char; 

begin
clrscr;
write('Masukkan nilai tugas: ');
readln(tugas);
write('Masukkan nilai UTS: ');
readln(uts);
write('Masukkan nilai UAS: ');
readln(uas);
write('Masukkan persentase kehadiran(0-100): ');
readln(hadir);

//1. Hitung Nilai Akhir
akhir := (tugas*3/10)+(uts*3/10)+(uas*4/10);

//2. Tentukan status LULS jika Nilai Akhir >= 60 DAN Kehadiran >= 80%
if (akhir>=60) and (hadir>=80) then 
    begin
        status:='LULUS';
    end
else 
    begin
        status:='TIDAK LULUS';
    end;

//3. Tentukan Indeks Huruf: A (>=85), B (75-84), C (60-74), D (50-59), E (<50)
 if (akhir>=85) then
         begin
            indeks:= 'A'; 
         end

    else if (akhir>=75) then
        begin 
            indeks:='B';
        end

    else if (akhir>=60) then 
        begin
            indeks:='C';
        end

     else if (akhir>=50) then
        begin
            indeks:='D';
        end

    else 
        begin
            indeks := 'E';
        end;

writeln('Nilai Akhir: ', akhir:0:2);
writeln('Indeks Huruf: ', indeks);
writeln('Status: ', status);
end.