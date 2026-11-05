
program qila;
uses crt;

var
    n, i: integer;

function Fibonacci(n: integer): longint;
begin
    if n <= 2 then
        Fibonacci := 1
    else
        Fibonacci := Fibonacci(n-1) + Fibonacci(n-2);
end;

begin
    clrscr;

    write('Masukkan jumlah suku: ');
    readln(n);

    write('Deret Fibonacci: ');

    for i := 1 to n do
    begin
        write(Fibonacci(i), ' ');
    end;
end.
