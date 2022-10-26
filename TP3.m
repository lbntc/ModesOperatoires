%pour 8 bits (par pixel)
clear all,close all,clc;
%% ECB
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
%% CBC
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
%% CFB
clear all,close all,clc;
I=double(imread('cameraman.tif'));%cod? sur uint8 ==> on convertis a double
imshow('cameraman.tif');
VI=input('entrez vecteur initial');
a=input('entrez la cle a');
b=input('entrez la cle b');
c=[];
for i=1:256*256%pixel par pixel 
A=Affine(VI,a,b);
c(i)=bitxor(A,I(i));
VI=c(i);
end
r=reshape(c,256,256);%passer de vecteur a image
figure;
imshow(uint8(r));
title('image chiffre en mode CFB');
%% OFB
clear all,close all,clc;
I=double(imread('cameraman.tif'));%cod? sur uint8 ==> on convertis a double
imshow('cameraman.tif');
VI=input('entrez vecteur initial');
a=input('entrez la cle a');
b=input('entrez la cle b');
c=[];
for i=1:256*256%pixel par pixel 
A=Affine(VI,a,b);
c(i)=bitxor(A,I(i));
VI=A;
end
r=reshape(c,256,256);%passer de vecteur a image
figure;
imshow(uint8(r));
title('image chiffre en mode OFB');
%% CTR
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