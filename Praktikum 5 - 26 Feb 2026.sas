PROC IML;

filename NILAI "~/DNILAI.txt";

infile NILAI;

do data;
input nama $ uji1 uji2 uji3;
rata2 = (uji1 + uji2 + uji3) / 3;
print nama uji1 uji2 uji3 rata2;
end;

closefile NILAI;

quit;

PROC IML;

count = 1;
do while (count < 5);
count = count + 1;
end;
print count;