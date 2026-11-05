program qila;
uses crt;

var
    n: integer;

function Faktorial(n: integer): longint;
begin
    if (n = 0) or (n = 1) then
        Faktorial := 1
    else
        Faktorial := n * Faktorial(n-1);
end;

begin
    clrscr;
    write('Masukkan nilai: ');
    readln(n);

    writeln('Hasil: ', Faktorial(n));

end.
