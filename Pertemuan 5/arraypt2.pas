program qila;
uses crt;

var 
kursi: array[1..1000] of integer;
i, n: integer;

begin
  clrscr;

  write('Masukkan batas index = ');
  readln(n);

  // input data secara manual
  for i := 1 to n do 
  begin
    write('Masukkan index ke-', i, ' : ');
    readln(kursi[i]);
  end;
  writeln;

  // akses data dari index awal ke akhir (naik)
  writeln('Urutan index naik:');
  for i := 1 to n do 
  begin
    write(kursi[i], ' ');
  end;
  writeln;

  // akses data dari index akhir ke awal (turun)
  writeln('Urutan index turun:');
  for i := n downto 1 do 
  begin
    write(kursi[i], ' ');
  end;
  writeln;

end.