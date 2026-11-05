program no2;
uses crt; 
 
var 
password:string;
percobaan: integer;

begin
    clrscr;
    percobaan := 0;
//1. Program menyimpan kata sandi rahasia secara internal
    repeat
        write('Masukkan password: ');
        readln(password);
        percobaan:= percobaan+1;

//3. Jika kata sandi benar, tampilkan "Login Berhasil! Selamat Datang" dan hentikan loop menggunakan 'break'.
        if password='22022022' then
        begin
            write('Login Berhasil! Selamat Datang');
            break;
        end;
        
//2. Pengguna diberi kesempatan maksimal 3 kali untuk memasukkan kata sandi yang benar.      
//4. Jika pengguna gagal 3 kali, tampilkan "Akses Ditolak! Akun Terkunci."
    until percobaan=3;
        if (password<>'22022022') and (percobaan=3) then
        begin
            writeln('Akses Ditolak! Akun terkunci');
        end;

end.


