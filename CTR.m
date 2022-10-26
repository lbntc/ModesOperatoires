clear all,close all,clc;
I=double(imread('cameraman.tif'));%cod? sur uint8 ==> on convertis a double
imshow('cameraman.tif');
VI=input('entrez vecteur initial');
a=input('entrez la cle a');
b=input('entrez la cle b');
c=[];
compteur=0;
for i=1:256*256%pixel par pixel 
A=Affine(compteur,a,b);
c(i)=bitxor(A,I(i));
compteur=compteur+1;
end
r=reshape(c,256,256);%passer de vecteur a image
figure;
imshow(uint8(r));
title('image chiffre en mode CTR');