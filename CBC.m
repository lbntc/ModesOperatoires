clear all,close all,clc;
I=double(imread('cameraman.tif'));%cod? sur uint8 ==> on convertis a double
imshow('cameraman.tif');
VI=input('entrez vecteur initial');
a=input('entrez la cle a');
b=input('entrez la cle b');
c=[];
for i=1:256*256%pixel par pixel 
c(i)=Affine(bitxor(VI,I(i)),a,b);
VI=c(i);
end
r=reshape(c,256,256);%passer de vecteur a image
figure;
imshow(uint8(r));
title('image chiffre en mode CBC');