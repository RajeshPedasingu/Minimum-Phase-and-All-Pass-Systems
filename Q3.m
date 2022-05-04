clc;
clear all;
close all;

z=[-0.5]';
p=[-2]';
k=2;

[num den]=zp2tf(z,p,k);

H=filt(num,den)
figure;
freqz(num,den)

figure;
zplane(z,p)
title('pole-zerro map of given all pass system')

