function ff=frek (nota,oktav)
notalar=['C','c','D','E','e','F','f','G','g','A','b','B']; %notaları notalar a atadım
% C=C(Do) c=C# D=D(Re) E=Eb e=E(Mi) F=F(Fa) f=F# G=G(Sol) g=G# A=A(La) b=Bb B=B(Si) şeklinde isimlendirdim.
referans=16.35; % işlem yaparken referansımı olarak belirledim
p=length(notalar); %notaların uzunluğu kadar olan p yi oluşturdum


for okt=0:8 %okt değeri 0 dan 8 e kadar 1 er arttırarak 0 dan 8 e kadar oktavları oluşturdum
    if okt==oktav %oktav değerini okt değerine atadım
        
        for j=1:p%j yi 1 den başlatıp p yani notaların uzunluğu kadar devam ettir
            if nota==char (notalar(j))%notaların karakter değerini nota ya atadım
                
                ff=2^okt*(2^((j-1)/12)*referans);%referans ı esas alarak frekans değerlerini hesaplattım
            end
        end
    end
end
end
