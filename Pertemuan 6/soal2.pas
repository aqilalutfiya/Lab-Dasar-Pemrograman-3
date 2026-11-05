program qila;
uses crt;

var
    n: integer;

function Prima(n: integer): boolean;
var
    i: integer;
begin
    prima:= true;
    if n<= 1 then 
        prima:= false
    else
        begin
            for i:= 2 to n-1 do 
            begin
            if n mod i= 0 then 
            Prima:=false;
            end;
        end;
end;

begin
    clrscr;

    write('Masukkan angka: ');
    readln(n);

    if Prima(n) then
        writeln('Prima')
    else
        writeln('Non-Prima');
end.

