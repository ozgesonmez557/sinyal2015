function [xz,t]=note(frekans,vurus) 
Fs=8192;%örnekleme frekansı
topla=0;
a=1;
harmonik={1 0.8 0.4 0.1};%harmonik dizisini belirledim
t=0:1/Fs:vurus-(1/Fs);%t aralığını belirledim
for h=1:length(harmonik)
   x=harmonik{h}*sin(2*pi*frekans*t*a);%harmoniği hesaplayacağım formülü oluşturdum 
   topla=topla+x;%harmonikleri topladım
   a=a+1;
end
   z1=linspace(0,1.5,length(t)/4);
   z2=linspace(1.5,1,length(t)/8);
   z3=linspace(1,1,length(t)/2);
   z4=linspace(1,0,length(t)/8);
   zarf=[z1 z2 z3 z4];
   xz=topla.*zarf;%harmonikli halini zarfla paketledim
end
