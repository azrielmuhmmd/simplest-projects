clc();
disp("************************************************************************");
disp("====================  Selamat Datang di RS UNDIP  ==========================");
disp("************************************************************************");
disp("Silakan isi formulir data diri pasien di bawah ini :)");
a = input("NAMA: ", "string");
b = input("USIA: ", "string");
c = input("ALAMAT: ", "string");
d = input("JENIS KELAMIN: ", "string");
e = input("BB: ");
f = input("TB: ");
disp("========================================================================");
disp("========================================================================");
disp("Silakan jawab pertnyaan dengan jawaban yang sesuai :)");
disp("Apakah Anda Mengalami sakit kepala ?")
disp("1. Ya");
disp("2. Tidak");
g = input("Masukkan pilihan nomor yang sesuai: ");
disp("Apakah Anda Mengalami mual-mual ?")
disp("1. Ya");
disp("2. Tidak");
h = input("Masukkan pilihan nomor yang sesuai:  ");
disp("Apakah Anda Mengalami batuk-batuk ?")
disp("1. Ya");
disp("2. Tidak");
i = input("Masukkan pilihan nomor yang sesuai: ");
j = input("Berapa kadar gula darah Anda?(mg/dL) ");
k = input("Berapa kadar kolesterol Anda ? ");
rendah = "Anda mengalami kompilasi penyakit tingkat rendah";
sedang = "Anda mengalami kompilasi penyakit tingkat sedang";
tinggi = "Anda mengalami kompilasi penyakit tingkat tinggi";
disp("========================================================================");
disp("========================================================================");
if g == 1 & h == 2 & i == 2 & j > 120 & j < 150 & k == 200 then
    disp(rendah);
    elseif g == 1 & h == 2 & i == 2 & j > 120 & j < 150 & (k < 200 | k > 200 |k == 200) then
    disp(rendah);
    elseif g == 2 & h == 1 & i == 2 & j > 120 & j < 150 & k == 200 then
    disp(rendah);
    elseif g == 2 & h == 1 & i == 2 & j > 120 & j < 150 & (k < 200 | k > 200 |k == 200) then
    disp(rendah);
     elseif g == 2 & h == 2 & i == 1 & j > 120 & j < 150 & k == 200 then
    disp(rendah);
    elseif g == 2 & h == 2 & i == 1 & j > 120 & j < 150 & (k < 200 | k > 200 |k == 200) then
    disp(rendah);
     elseif g == 1 & h == 1 & i == 2 & (j < 120 | j > 150 ) & k ~= 200 then
    disp(sedang);
    elseif g == 1 & h == 1 & i == 2 & (j < 120 | j > 150 ) & k == 200 then
    disp(sedang);
    elseif g == 1 & h == 2 & i == 1 & (j < 120 | j > 150 ) & k ~= 200 then
    disp(sedang);
    elseif g == 1 & h == 2 & i == 1 & (j < 120 | j > 150 ) & k == 200 then
    disp(sedang);
    elseif g == 2 & h == 1 & i == 1 & (j < 120 | j > 150 ) & k ~= 200 then
    disp(sedang);
    elseif g == 2 & h == 1 & i == 1 & (j < 120 | j > 150 ) & k == 200 then
    disp(sedang);
     elseif g == 1 & h == 2 & i == 2 & (120 < j | j > 150) & (k < 200 | k > 200 | k == 200) then
    disp(sedang);
    elseif g == 1 & h == 2 & i == 2 & (120 < j  | j > 150) & k == 200 then
    disp(sedang);
else disp(tinggi); 
end
bill = 200000
BPJS = 0.25
disp("========================================================================");
disp("========================================================================");
disp("Apakah Anda pengguna BPJS ?");
disp("1. Ya");
disp("2. Tidak");
pil_2 = input("Masukkan nomor pilihan : ");
disp("========================================================================");
disp("========================================================================");
disp("Pilih jenis kamar dan perawatan yang Anda butuhkan");
disp("1. Kamar reguler");
disp("2. Kamar VIP");
disp("3. Kamar VVIP");
disp("4. Tidak berkenan untuk rawat inap");
pil = input("Masukkan nomor pilihan : ");
disp("Biaya total Anda (Rupiah) :");
if pil == 1 & pil_2 == 1 then
    disp(bill*2*0.25);
elseif pil == 1 & pil_2 == 2 then
    disp(bill*2);
elseif pil == 2 & pil_2 == 1 then
    disp(bill*3*0.25);
elseif pil == 2 & pil_2 == 2 then
    disp(bill*3);
elseif pil == 3 & pil_2 == 1 then
    disp(bill*5*0.25);
elseif pil == 3 & pil_2 == 2 then
    disp(bill*5);
elseif pil == 4 & pil_2 == 1 then
    disp(bill*0.25);
else disp(bill);
end
