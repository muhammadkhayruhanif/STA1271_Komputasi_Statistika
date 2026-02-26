/* TUGAS BAGIAN PERTAMA */

/* 1. Tentukan hasilnya */
PROC IML;

X = {1 2 ., . 5 6, 7 . 9};
Y = {4 . 2, 2 1 3, 6 . 5};

/* hasil dari X+Y */
a = X+Y;

/* hasil dari X#Y */
b = X#Y;

/* hasil dari X[+,] */
c = X[+,];

/* hasil dari (Y##2) */
d = (Y##2);

print a, b, c, d;

/* 2. Identifikasi maksud dari program */
PROC IML;

n = 6;
m = 3;
A = j(n,m);
Mean = {10 20 30};
Std = {2 4 6};
call randgen(A,"Normal",Mean,Std);
print A;

/* TUGAS BAGIAN KEDUA */

/* 1 Pembangkitan Data */
PROC IML;

n = 40;
m = 1;

call randseed(058);

Tugas = j(n,m);
call randgen(Tugas, "Normal", 75, 8);

UTS = j(n,m);
call randgen(UTS, "Normal", 70, 10);

UAS = j(n,m);
call randgen(UAS, "Normal", 72, 9);

DataNilai = Tugas || UTS || UAS;

/* 2. Transformasi dan Fungsi Matematik */
DataNilai = choose(DataNilai < 0, 0, DataNilai);
DataNilai = choose(DataNilai > 100, 100, DataNilai);
DataNilai = round(DataNilai);

NamaKolom = {"Tugas" "UTS" "UAS"};
DataNilai[colname=NamaKolom];
print DataNilai;
 
Final = (0.3 * DataNilai[,1] + 0.3 * DataNilai[,2] + 0.4 * DataNilai[,3]);
print Final;

/* 3. Fungsi Reduksi dan Statistik */
Rataan = mean(DataNilai);
STDev = std(DataNilai);
Maks = DataNilai[<:>,];
Min = DataNilai[>:<,];

print Rataan, STDev, Maks, Min;

/* 4. Fungsi Matriks */
NilaiNol = (DataNilai = 0); /* Mencari nilai nol masing2 komponen */
print NilaiNol;

/* 5. Fungsi Ubah Bentuk Matriks */
DataNilaiNew = shape(DataNilai, 120, 1);
print DataNilaiNew;
quit;