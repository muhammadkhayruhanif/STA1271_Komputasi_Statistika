proc iml;
A = {1 2 3,
4 5 6,
7 8 9,
10 11 12};
A[2,1] = .;
A[3:4, 1:2] = 0;
A[{1 5 9}] = {-1 -2 -3};
print A;

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

print A, b1, b2, b3, b4, b5;
