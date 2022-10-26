clear all,close all,clc;
I=double(imread('cameraman.tif'));%cod? sur uint8 ==> on convertis a double
imshow('cameraman.tif');
a=input('entrez la cle a');
b=input('entrez la cle b');
for i=1:256*256%pixel par pixel 
c(i)=Affine(I(i),a,b);
end
r=reshape(c,256,256);%passer de vecteur a image
figure;
imshow(uint8(r));
title('image chiffre en mode ECB');