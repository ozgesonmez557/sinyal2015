function ff=frek (nota,oktav)
notalar=['C','c','D','E','e','F','f','G','g','A','b','B']; %notalarý notalar a atadým
referans=16.35; % iþlem yaparken referansýmý olarak belirledim
p=length(notalar); %notalarýn uzunluðu kadar olan p yi oluþturdum


for okt=0:8 %okt deðeri 0 dan 8 e kadar 1 er arttýrarak 0 dan 8 e kadar oktavlarý oluþturdum
    if okt==oktav %oktav deðerini okt deðerine atadým
        
        for j=1:p%j yi 1 den baþlatýp p yani notalarýn uzunluðu kadar devam ettir
            if nota==char (notalar(j))%notalarýn karakter deðerini nota ya atadým
                
                ff=2^okt*(2^((j-1)/12)*referans);%referans ý esas alarak frekans deðerlerini hesaplattým
            end
        end
    end
end
end
