program no9;
uses crt;

var
  tahun, bulan, hari: integer;
  kabisat: boolean;

begin
  clrscr;
//1. Minta input tahun dan nomor bulan (1-12)
  write('Masukkan tahun: ');
  readln(tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

//2. Cek Tahun Kabisat
  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

//3. Tentukan jumlah hari 
  case bulan of
    1, 3, 5, 7, 8, 10, 12: 
      hari := 31;
    4, 6, 9, 11: 
      hari := 30;
    2: 
      if kabisat then
        hari := 29
      else
        hari := 28;
  else
    hari := 0; { Bulan tidak valid }
  end;

  writeln;
  if hari <> 0 then
  begin
    writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah ', hari, ' hari.');
    if bulan = 2 then
    begin
      if kabisat then
        writeln('Tahun ', tahun, ' adalah Tahun Kabisat.')
      else
        writeln('Tahun ', tahun, ' bukan Tahun Kabisat.');
    end;
  end
  else
    writeln('Angka tidak valid');


end.