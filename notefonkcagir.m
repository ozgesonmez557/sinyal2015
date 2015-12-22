[x,y]=note(80,1/8) %note fonksiyonuna deðerler girildi.
plot(y,x)          %sinüs sinyalini çizdirdim.

zz1=[linspace(0,1.5,8192*(1/8)*(2/8)),linspace(1.5,1,8192*(1/8)*(1/8)),linspace(1,1,8192*(1/8)*(4/8)),linspace(1,0,8192*(1/8)*(1/8))] %zz1 hesaplandý.
   plot(y,zz1)  %zz1 çizdirdim.
    
zz2=[linspace(0,-1.5,8192*(1/8)*(2/8)),linspace(-1.5,-1,8192*(1/8)*(1/8)),linspace(-1,-1,8192*(1/8)*(4/8)),linspace(-1,0,8192*(1/8)*(1/8))] %zz2 hesaplandý.
plot(y,zz2)  %zz2 çizdirdim.
zz3=zz1.*zz2 %zz3'e her bir zz1 ve zz2 elemanýný çarpýp zz3'e atadým.
carp=x.*zz3  %x'teki deðerler ile zz3 deðerleri çarptým ve çarpa atadým.
plot(y,carp) %xx ve zz3 elemanlarýnýn çarpýmlarýný çizdirdim.