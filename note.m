function [xx,tt]=note(frekans,vurus) 
Fs=8192; %frekans örneklem deðerimi tanýmladým.
tt=0:1/Fs:((0.25-(1/Fs))/2);  %zaman aralýðýný belirledim.
zz=0;
   xx=sin(2*pi*frekans*tt);%sinüs sinyalini tanýmladým. 
if length(xx)==length(zz)    %xx ile zz'nin boyutu ayný ise
       zz=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))];%zz'yi döndür.
end
end