clc;
clear all;
close all;

num=[6 1 -1];
den=[1];
H1=filt(num,den)
%[h,w]=freqz(num,den,50);
figure;
freqz(num,den)
[z,p,k]=tf2zpk(num,den);


%-----------------
z=[-2 3]';
p=[0 0]';
k=1;
[b,a] = zp2tf(z,p,k);
H2=filt(b,a)
figure;
freqz(b,a)
%---------


z=[-2 0.33]';
p=[0 0]';
k=3;
[b,a] = zp2tf(z,p,k);
H3=filt(b,a)
figure;
freqz(b,a)
%---------------

z=[-0.5 3]';
p=[0 0]';
k=2;
[b,a] = zp2tf(z,p,k);
H4=filt(b,a)
figure;
freqz(b,a)
















% z=[-0.5 0.333]'
% p=[0 0]'
% k=6;
% 
% [b,a] = zp2tf(z,p,k)
% figure;
% 
% 
% freqz(b,a)


% s=[1 1]
% s1=perms(s)
% s2=s1.*[z(1) z(2)]