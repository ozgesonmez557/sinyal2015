[x,y]=note(80,1/8) %note fonksiyonuna de�erler girildi.
plot(y,x)          %sin�s sinyalini �izdirdim.

zz1=[linspace(0,1.5,8192*(1/8)*(2/8)),linspace(1.5,1,8192*(1/8)*(1/8)),linspace(1,1,8192*(1/8)*(4/8)),linspace(1,0,8192*(1/8)*(1/8))] %zz1 hesapland�.
   plot(y,zz1)  %zz1 �izdirdim.
    
zz2=[linspace(0,-1.5,8192*(1/8)*(2/8)),linspace(-1.5,-1,8192*(1/8)*(1/8)),linspace(-1,-1,8192*(1/8)*(4/8)),linspace(-1,0,8192*(1/8)*(1/8))] %zz2 hesapland�.
plot(y,zz2)  %zz2 �izdirdim.
zz3=zz1.*zz2 %zz3'e her bir zz1 ve zz2 eleman�n� �arp�p zz3'e atad�m.
carp=x.*zz3  %x'teki de�erler ile zz3 de�erleri �arpt�m ve �arpa atad�m.
plot(y,carp) %xx ve zz3 elemanlar�n�n �arp�mlar�n� �izdirdim.