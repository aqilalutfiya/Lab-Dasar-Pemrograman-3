program no4;
uses crt;

var 
operasi,a_int, b_int, d, e:integer;
a,b,c: real;
lagi:char;

begin
    repeat
    clrscr;
    //1. Tampilkan menu pilihan operasi (1: Penjumlahan, 2: Pengurangan, 3: Perkalian, 4: Pembagian Real, 5: DIV & MOD)
    writeln('Pilih Operasi:');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian');
    writeln('5. Divide & Modulus');
    write('Masukkan pilihan: ');
    readln(operasi);

    //2. Minta dua angka operand, lalu hitung dan tampilkan hasilnya
    case operasi of
        1..4: 
        begin
            write('Masukkan angka pertama: '); 
            readln(a);
            write('Masukkan angka kedua  : '); 
            readln(b);
          
            case operasi of
            1: 
            begin 
                c := a + b; 
                writeln('Hasil perhitungan: ', c:0:2); 
            end;
            2: 
            begin 
                c := a - b; 
                writeln('Hasil perhitungan: ', c:0:2); 
            end;
            3: 
                begin c := a * b; 
                writeln('Hasil perhitungan: ', c:0:2); 
            end;
            4: 
            begin
                if b <> 0 then
                begin 
                    c := a / b; 
                    writeln('Hasil perhitungan: ', c:0:2); 
                end
              else
                writeln('Error: Pembagian dengan nol');
            end;
            end;
            end;
        5: 
        begin
            write('Masukkan bilangan bulat pertama: '); 
            readln(a_int);
            write('Masukkan bilangan bulat kedua  : '); 
            readln(b_int);
          
            if b_int <> 0 then
            begin
                d := a_int div b_int;
                e := a_int mod b_int;
                writeln('Hasil DIV (Bagi Bulat): ', d);
                writeln('Hasil MOD (Sisa Bagi) : ', e);
            end
            else
            writeln('Pembagian dengan nol tidak valid');
            end;
        else 
            writeln('Angka tidak valid');
    end;

    //3. Di akhir, tanyakan:"Apakah ingin melakukan perhitungan lagi?(Y/T)". Perulangan berjalan sampai pengguna menjawab 'T' atau 't'
    write('Apakah ingin melakukan perhitungan lagi?(Y/T): ');
    readln(lagi);

    until (lagi = 'T') or (lagi = 't');
end.