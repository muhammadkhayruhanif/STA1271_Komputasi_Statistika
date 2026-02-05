proc iml;
umur = {"13-17", "18-24", "25-34", ">=35"};
JenisKelamin = {"Laki-laki" "Perempuan"};
datamu = {40 65,
92 77,
102 73,
38 21};
l = datamu / sum(datamu);
print l[colname=JenisKelamin
rowname=Umur
label="Profil Audiens Periklanan"
format=PERCENT7.1];

proc iml;
i = 1:5;
k = do(1, 10, 2);
print i, k;

proc iml;
x = {1 2 3, 4 5 6};
n = nrow(x);
p = ncol(x);
dim = dimension(x);
print n, p, dim;

/* reshape matrix */
proc iml;
x = {1 2 3, 4 5 6};
print x;
row = shape(x, 1);
m = shape(x, 2, 3);
n = shape(x, 3, 2);
print row, m, n;

/* reshape matrix 2 */
proc iml;
x = {1 2 3, 4 5 6};
print x;
z = x // {7 8 9}; /* menambahkan baris baru di bawah */
y = x || {7 8, 9 10}; /* menambahkan 2 kolom baru */
print z, y;

/* transpose matrix */
proc iml;
x = {4 3 2, 7 6 3, 5 2 6};
r = x`;
print x, r;
quit;
run;

proc iml;
A = {1 2 3,
4 5 6,
7 8 9,
10 11 12};
A[2,1] = .;
A[3:4, 1:2] = 0;
A[{1 5 9}] = {-1 -2 -3};
print A;

/* operator biner unsur (elementwise) */
proc iml;
reset print;
A = {1 3 5, 2 4 6};
B = {1 2 3, 4 5 6};

/* operator reduksi subskrip */
proc iml;
reset print;
K = {2 3 4 5,
1 0 9 0,
2 4 5 6,
3 4 6 1};
b = K[{3 4}, +];
b1 = K[+, {1, 3}];
a = K[{1 2}, ];
/* hasil jumlah dari nilai terbesar setiap kolom */
c = K[+, <>];
/* elemen terkecil dari setiap baris ditambahkan */
d = K[><, ][, +];
/* elemen minimum kolom kemudian ditambahan */
e = K[><,][, +];
/* elemen maksimum baris kemudian dijumlahkan */
i = K[, <>][+, ];
/* cek baris kemudian tentukan letak indeksnya */
f = K[, <:>];
/* cek kolom kemudian tentukan letak indeksnya */
g = K[>:<, ];
/* rata-rata */
h = K[:];
print b, b1, a, c, d, e, i, f, g, h;

/* latihan 1 */
proc iml;
x = {3 5 2, 0 . 6};
/*
a = (x=0)
b = (x<=1)
c = (x<4 & x^=0)
x = x#(x>0)
*/

a = (x=0);
b = (x<=1);
c = (x<4 & x^=0);
x2 = x#(x>0);
print x, a, b, c, x2;

/* latihan 2 */
proc iml;
A = {3 1 0,
2 1 1,
6 2 2};

b1 = A[+, {2 1}];
b2 = A[+, {3}];
b3 = A[+, {1}];
b4 = A[, >:<]; /* indeks terkecil */
b5 = A[<:>, ]; /* indeks terbesar dari tiap barisnya */
b6 = A[2 1];

print A, b1, b2, b3, b4, b5, b6;
