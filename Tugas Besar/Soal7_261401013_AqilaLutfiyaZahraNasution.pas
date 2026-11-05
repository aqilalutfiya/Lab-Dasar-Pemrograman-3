program no7;
uses crt;

var
    kode: char;
    lama_parkir: integer;
    tarif: longint;

begin
    clrscr;
    writeln('Kode Kendaraan:');
    writeln('Mobii(M): Rp5.000 (jam pertama), tambahan Rp3.000/jam berikutnya');
    writeln('Motor(K): Rp2.000 (jam pertama), tambahan Rp1.000/jam berikutnya');
    writeln('Bus(B): Rp10.000 (jam pertama), tambahan Rp5.000/jam berikutnya');
    write('Masukkan Kode Kendaraan (M/K/B): '); 
    readln(kode);
    write('Masukkan Lama Parkir (jam): '); 
    readln(lama_parkir);

    case upcase(kode) of
        'M': begin { Mobil }
                if lama_parkir > 10 then
                    tarif := 30000
                else
                    tarif := 5000 + (lama_parkir - 1) * 3000;
             end;
             
        'K': begin { Motor }
                if lama_parkir > 10 then
                    tarif := 10000
                else
                    tarif := 2000 + (lama_parkir - 1) * 1000;
             end;
             
        'B': begin { Bus }
                if lama_parkir > 10 then
                    tarif := 50000
                else
                    tarif := 10000 + (lama_parkir - 1) * 5000;
             end;
    else
        begin
            writeln('Kode tidak valid');
            
        end;
    end;

    writeln('Total Tarif Parkir: Rp', tarif);
end.
