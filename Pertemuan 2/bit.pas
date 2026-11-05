program bit;
uses crt;
 
var
a,b : integer;

begin
clrscr;
a:=5;
b:=2;
writeln('a AND b: ', a and b);
writeln('a OR b: ', a or b);
writeln('a XOR b: ', a xor b);
writeln('NOT a: ', not a);
writeln('a SHL b: ', a shl b);
writeln('a SHR b: ', a shr b);
end.
 