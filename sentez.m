%%değişkenleri tanımladım
Fs=2900;%Örnekleme Frekansı
gecikme=round(Fs/10);%gecikme süresi
duraklama=Fs/100;%duraklama suresi
notalar=[];
duraklama=[];
%%oktav değeri 1 aşağı 1 yukarı artıp azalıyor.
oktdegis=4;%oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-3,+3].
%%notalar dosyadan okunuyor
dosya=fopen('notalar.txt','r'); %text dosyasını acar,'r':okumak için.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %bosluk ile ayrılmıs degiskenler okundu.
fclose(dosya); %text dosyası kapatıldı.
frekans=zeros(1,length(nota));
%%farklı oktav değerlerini çalabilmek için
if oktdegis~=0 %oktdegis degiskeninde degisiklik yapılması durumunda islenecek sart. 
    for okt=1:length(oktav) %text'ten cekilen oktav degerleri dongu icerisinde degistirilecek.
        oktav(okt)=oktav(okt)+oktdegis; 
    end
end
%%notalar matrisi oluşturdum
for i=1:length(nota)
    frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonu cagırılarak frekans degerleri hesaplandı. 
    [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonu cagırılarakta sin sinyalleri cizildi.
    notalar=[notalar sindalga duraklama];
end  
%%echo oluşturdum
for j=1:length(notalar)
    if (j+gecikme)<length(notalar)
        notalar(j+gecikme)=notalar(j+gecikme)+0.3*notalar(j); 
    end
end
%%normalize ettim
notalar = notalar/max(abs(notalar));
%%notaların sinyalini grafik üzerinde görmemizi sağladım
plot(notalar)
%%frekansları sesli olarak duydum
sound(notalar,Fs);
