function [ y ] = Affine(pixel,a,b )
y=mod(a*pixel+b,256);%chiffrement affine
end

