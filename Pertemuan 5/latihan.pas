uses crt;

var
    n, i: integer;
    nim: array[1..10] of string;

begin
    clrscr;
    writeln('Masukkan jumlah mahasiswa:');
    readln(n);

    writeln('Masukkan NIM dari depan ke belakang:');
    for i := 1 to n do
        readln(nim[i]);

    writeln('Urutan NIM dari belakang ke depan:');
    for i := n downto 1 do
        write(nim[i], ' ');
end.