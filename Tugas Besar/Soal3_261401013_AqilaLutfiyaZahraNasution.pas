program no3;
uses crt; 
 
var 
i,n,deret: integer;

begin
clrscr;
    //1. Minta masukan nilai N dan pilihan kategori deret
    write('Masukkan nilai N: '); 
    readln(n);
    writeln('Pilih kategori deret:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Masukkan pilihan: '); 
    readln(deret);

    //2. Gunakan 'while loop' dari 1 hingga N
    i := 0;
    while i < n do
    begin
        i := i + 1;
    
        //3. Jika angka tidak sesuai kategori deret, lewati menggunakan 'continue' 
        if (deret = 1) and (i mod 2 = 0) then
        continue;
      
        if (deret = 2) and (i mod 2 <> 0) then
        continue;
      
        //4. Jika angka merupakan kelipatan 5, lewati menggunakan 'continue' 
        if (i mod 5 = 0) then
      continue;
      
        //5. Tampilkan deret angka hasil penyaringan ke layar 
        write(i, ' ');
    end;

end.