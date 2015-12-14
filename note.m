function [x , t] = note (f,dur);%frekansı ve t aralığının nerede duracağını belirttim
t=0:1/(f*100):dur;%t aralığını tanımladım
x = sin (2*pi*f*t);%sin sinyalini tanımlayıp x e atadım
end
