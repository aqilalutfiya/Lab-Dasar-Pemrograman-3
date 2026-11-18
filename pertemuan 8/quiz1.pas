program quiz1;
uses crt;
var
nama   : array[1..5] of string;
harga  : array[1..5] of integer;
pMahal, pMurah : ^integer;
i, iMahal, iMurah : integer;

begin
for i := 1 to 5 do
    begin
        write('Nama makanan ke-', i, ' : ');
        readln(nama[i]);
        write('Harga makanan ke-', i, ': ');
        readln(harga[i]);
    end;

pMahal := @harga[1];
pMurah := @harga[1];
iMahal := 1;
iMurah := 1;

for i := 2 to 5 do
    begin
        if harga[i] > pMahal^ then
        begin
            pMahal := @harga[i];
            iMahal := i;
        end;

        if harga[i] < pMurah^ then
        begin
            pMurah := @harga[i];
            iMurah := i;
        end;
    end;

writeln;
writeln('Makanan termahal : ', nama[iMahal], ' (Rp ', pMahal^, ')');
writeln('Makanan termurah : ', nama[iMurah], ' (Rp ', pMurah^, ')');
end.