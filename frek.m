function ff=frek (nota,oktav)
notalar=['C','c','D','E','e','F','f','G','g','A','b','B']; %notalar� notalar a atad�m
referans=16.35; % i�lem yaparken referans�m� olarak belirledim
p=length(notalar); %notalar�n uzunlu�u kadar olan p yi olu�turdum


for okt=0:8 %okt de�eri 0 dan 8 e kadar 1 er artt�rarak 0 dan 8 e kadar oktavlar� olu�turdum
    if okt==oktav %oktav de�erini okt de�erine atad�m
        
        for j=1:p%j yi 1 den ba�lat�p p yani notalar�n uzunlu�u kadar devam ettir
            if nota==char (notalar(j))%notalar�n karakter de�erini nota ya atad�m
                
                ff=2^okt*(2^((j-1)/12)*referans);%referans � esas alarak frekans de�erlerini hesaplatt�m
            end
        end
    end
end
end
