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
print n, p;

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
