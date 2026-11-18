program ptop1;
uses crt;

var
angka : integer;
p: ^integer;
pp: ^PInteger;

begin
    
    angka := 7;
    p := @angka; // alamat dari var angka
    pp:= @p;
    writeln('Angkanya: ', angka);
    writeln('Pointer 1: ',p^); // ambil nilai dari var angka
    writeln('Pointer to another pointer: ',pp^^); // ke pointer 1
end.