program pointer1;
uses crt;

var
angka:integer;
pAngka: ^integer; // caret di depan menunjukan bahwa variabel itu merupakan pointer

begin
angka :=10;

pAngka:= @angka; //ambil alamat dari variabel angka

writeln('Nilai Angkanya: ',angka);
writeln('Nilai Pointernya: ',pAngka^); // ambil isi dari alamat yang dituju dari pointer

end.
