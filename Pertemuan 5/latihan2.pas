uses crt;

var
    n, i: integer;
    tugas, kuis, uts, uas: array[1..5] of real;
    rata: real;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);

    for i := 1 to n do
    begin
        writeln('Data mahasiswa ke-', i);
        write('Nilai Tugas : '); readln(tugas[i]);
        write('Nilai Kuis  : '); readln(kuis[i]);
        write('Nilai UTS   : '); readln(uts[i]);
        write('Nilai UAS   : '); readln(uas[i]);
    end;

    writeln('No  Tugas  Kuis  UTS   UAS   Rata-rata  Status');

    for i := 1 to n do
    begin
        rata := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;

        write(i:2, '  ',
            tugas[i]:5:0, '  ',
            kuis[i]:5:0, '  ',
            uts[i]:5:0, '  ',
            uas[i]:5:0, '  ',
            rata:9:2, '   ');

        if rata >= 70 then
        writeln('Lulus')
        else
        writeln('Tidak Lulus');
    end;
end.