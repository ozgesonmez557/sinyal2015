function [xx,tt]=note(frekans,vurus) 
Fs=8192; %frekans �rneklem de�erimi tan�mlad�m.
tt=0:1/Fs:((0.25-(1/Fs))/2);  %zaman aral���n� belirledim.
zz=0;
   xx=sin(2*pi*frekans*tt);%sin�s sinyalini tan�mlad�m. 
if length(xx)==length(zz)    %xx ile zz'nin boyutu ayn� ise
       zz=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))];%zz'yi d�nd�r.
end
end