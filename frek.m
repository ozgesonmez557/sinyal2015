function ff=frek (nota,oktav) %nota ve oktav değerlerini alacak
notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','sus'}; %notaları notalar a atadım

referans=16.35; % işlem yaparken referansımı olarak belirledim
k=length(notalar); %notaların uzunluğu kadar olan k yı oluşturdum
susf=0;
if nargin<2
     oktav=4;
end

for i=0:8 %okt değeri 0 dan 8 e kadar 1 er arttırarak 0 dan 8 e kadar oktavları oluşturdum
    if i==oktav %i nin değeri oktavın değerine eşitse if'in içine gir
        
        for j=1:k%j yi 1 den başlatıp k yani notaların uzunluğu kadar devam ettir
            if size(nota)==size(notalar{j})%notaların karakter değerini nota ya atadım
                if nota==notalar{j}%giriş yaptığım nota,notalar dizisindeki j. elemana eşitse if'in içine gir.
                ff=2^i*(2^((j-1)/12)*referans);%referans ı esas alarak frekans değerlerini hesaplattım
                if size(nota)==size(notalar{13})
                if nota==notalar{13}
                    ff=0;
                end
            end
        end
    end
end
end
end
end
