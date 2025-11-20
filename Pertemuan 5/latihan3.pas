uses crt;

var
    n, i, j, t: integer;
    uas: array[1..10] of integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);

    writeln('Masukkan nilai UAS masing-masing mahasiswa:');
    for i := 1 to n do
    begin
        write('Nilai mahasiswa ke-', i, ': ');
        readln(uas[i]);
    end;

    for i := 1 to n-1 do
        for j := i+1 to n do
            if uas[i] > uas[j] then
            begin
                t := uas[i];
                uas[i] := uas[j];
                uas[j] := t;
            end;

    writeln('Hasil Pengurutan Nilai dari Terendah ke Tertinggi');
    for i := 1 to n do
        writeln('Mahasiswa ke-', i, ' : ', uas[i]);
end.