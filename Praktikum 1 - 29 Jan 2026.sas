/* Contoh 1 */
/* Tahapan DATA */
data contohdata; * nama datanya;
input x y z; * bakal dibaca numerik, kalau char tambah $ di belakang;
datalines;
1 2 3
2 4 6
;
run;
/* Tahapan PROC */
proc print; * untuk print data;
run; * setiap habis proc langsung run;

proc means;
run;

/* Contoh 2 */
data karakter;
input nama $ 1-50;
datalines;
Muhammad Khayruhanif
;
run;
proc print;
run;

/* Contoh 3 */
data mhs;
input nama $ nim $ jk $ umur;
datalines;
Sri   M040123 1 20
Wawan M040126 2 19
Daffa M040128 2 19
Fadly M040129 2 19
; * data bisa ditambahkan indentasi agar rapih;
run;

proc print;
run;


/* Contoh 4 */
/* Data lebih rapih */
data mhs2;
length nama $20;
infile datalines dlm='|' truncover;
input nama $ nim $ jk $ umur;
datalines;
Ali Imron|M040121|1|rip
Sri|M040123|1|20
Wawan|M040126|2|19
Daffa|M040128|2|19
Fadly|M040129|2|19
;
run;

proc print;
run;