program nomor8;
uses crt;

var
golongan: char;
jam_kerja, jam_lembur: real;
gaji, lembur, bonus, total: real;

begin
  clrscr;
    writeln('Pilih Golongan:');
    writeln('A = Rp1.500.000');
    writeln('B = Rp2.000.000');
    writeln('C = Rp2.500.00');
    write('Masukkan Golongan (A/B/C): ');
    readln(golongan);
    golongan := upcase(golongan); 
  
    write('Masukkan total jam kerja/minggu: ');
    readln(jam_kerja);

//Menentukan Gaji Pokok berdasarkan Golongan
    case golongan of
    'A': gaji := 1500000;
    'B': gaji := 2000000;
    'C': gaji := 2500000;
    else
        begin
        gaji := 0;
        writeln('Golongan tidak valid');
        end;
    end;

// Menghitung Uang Lembur
    if gaji > 0 then
    begin
        if jam_kerja > 40 then
            begin
                jam_lembur:= jam_kerja-40;
                lembur:= jam_lembur*20000;
            end
        else
            begin
                lembur:= 0;
            end;

//Menghitung Bonus (Khusus Golongan C jika jam kerja > 50)
    if (golongan = 'C') and (jam_kerja > 50) then
      bonus := 100000
    else
      bonus:= 0;

//Menghitung Total Gaji Akhir
    total := gaji + lembur + bonus;
    writeln('Golongan        : ', golongan);
    writeln('Total Jam Kerja : ', jam_kerja:0:1, ' jam');
    writeln('Gaji Pokok      : Rp ', gaji:0:0);
    writeln('Lembur          : Rp ', lembur:0:0);
    writeln('Bonus           : Rp ', bonus:0:0);
    writeln('Total Gaji Akhir: Rp ', total:0:0);
  end;
end.