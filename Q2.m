clc;
clear all;
close all;

z=[-2]';
p=[-0.5]';
k=1/2;

[num den]=zp2tf(z,p,k);

H=filt(num,den)

freqz(num,den)

figure;
zplane(z,p)
title('pole-zerro map of given all pass system')

z=[-0.5]';
p=[-2]';
k=2;
[num den]=zp2tf(z,p,k);
figure;
freqz(num,den)


