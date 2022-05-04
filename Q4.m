clc;
clear all;
close all;

z=[-2]';
p=[-0.5]';
k=1/2;

[num den]=zp2tf(z,p,k);

H1=filt(num,den)
figure;
freqz(num,den)

%------------


z=[-0.5]';
p=[-2]';
k=2;

[num1 den1]=zp2tf(z,p,k);

H2=filt(num1,den1)
figure;
freqz(num1,den1)


H=H1*H2

num3=H.Numerator(1,:)
den3=H.Denominator(1,:)
num3=cell2mat(num3)
den3=cell2mat(den3)


figure;
freqz(num3,den3)






