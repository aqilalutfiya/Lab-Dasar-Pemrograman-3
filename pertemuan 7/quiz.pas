program data_khs;
uses crt;

type
    matkul = record
        nama: string;
        sks: integer;
        nilai: string;
        bobot: real;
    end;

    mahasiswa = record
        nama: string;
        nim: string;
        jml_mk: integer;
        mk: array[1..20] of matkul;
        total_sks: integer;
        ip: real;
    end;

var
    mhs: array[1..50] of mahasiswa;
    n, i, j: integer;
    total_bobot: real;

function hitungBobot(nli: string): real;
begin
    if (nli = 'A') or (nli = 'a') then hitungBobot := 4
    else if (nli = 'B+') or (nli = 'b+') then hitungBobot := 3.5
    else if (nli = 'B') or (nli = 'b') then hitungBobot := 3
    else if (nli = 'C+') or (nli = 'c+') then hitungBobot := 2.5
    else if (nli = 'C') or (nli = 'c') then hitungBobot := 2
    else if (nli = 'D') or (nli = 'd') then hitungBobot := 1
    else hitungBobot := 0;
end;

begin
    clrscr;
    write('Masukkan Jumlah Mahasiswa: '); readln(n);

    for i := 1 to n do
    begin
        writeln;
        writeln('Data Mahasiswa Ke-', i);
        write('Nama: '); 
        readln(mhs[i].nama);
        write('NIM: '); 
        readln(mhs[i].nim);
        write('Jumlah Mata Kuliah: '); 
        readln(mhs[i].jml_mk);

        mhs[i].total_sks := 0;
        total_bobot := 0;

        for j := 1 to mhs[i].jml_mk do
        begin
            writeln('MK ke-', j);
            write('Nama Mata Kuliah: '); 
            readln(mhs[i].mk[j].nama);
            write('SKS: '); 
            readln(mhs[i].mk[j].sks);
            write('Nilai: '); 
            readln(mhs[i].mk[j].nilai);

            mhs[i].mk[j].bobot := hitungBobot(mhs[i].mk[j].nilai);
            mhs[i].total_sks := mhs[i].total_sks + mhs[i].mk[j].sks;
            total_bobot := total_bobot + (mhs[i].mk[j].sks * mhs[i].mk[j].bobot);
        end;

        if mhs[i].total_sks > 0 then
            mhs[i].ip := total_bobot / mhs[i].total_sks
        else
            mhs[i].ip := 0;
    end;

    writeln;
    writeln('Input selesai. Tekan ENTER untuk tampilkan hasil...');
    readln;

    for i := 1 to n do
    begin
        clrscr;
        writeln('KARTU HASIL STUDI (KHS)');
        writeln('Nama : ', mhs[i].nama);
        writeln('NIM  : ', mhs[i].nim);

        for j := 1 to mhs[i].jml_mk do
        begin
            writeln(j:2, '  ', mhs[i].mk[j].nama:20, ' ', mhs[i].mk[j].sks:3, '   ', mhs[i].mk[j].nilai);
        end;

        writeln('Total SKS : ', mhs[i].total_sks);
        writeln('IPK/IPS   : ', mhs[i].ip:0:2);

        if i < n then
        begin
            writeln;
            write('Tekan enter lanjut ke mahasiswa berikutnya...');
            readln;
        end;
    end;

    writeln;
    writeln('Selesai');
    readln;
end.