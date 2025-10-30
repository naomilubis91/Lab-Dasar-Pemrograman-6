program luaskeliling;

uses crt;

var
    panjang, lebar, luas, keliling : integer;

begin
    panjang := 5;
    lebar := 3;

    luas := panjang * lebar;
    keliling := 2 * (panjang + lebar);

    writeln("Luas lapangan sepak bola: ', luas, meter');
    writeln("Keliling lapangan sepak bola: ', keliling, meter');
end.
