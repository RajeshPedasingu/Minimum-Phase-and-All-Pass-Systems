clc;
clear all;
close all;

syms z

num=[1 -2];
den=[1 1/3];

H=filt(num,den)

%------------------

z1=[1/2]'
p1=[-1/3]'
k1=1;
[num1 den1]=zp2tf(z1,p1,k1)
H1=filt(num1,den1)

%--2nd--

z2=[2]'
p2=[1/2]'
k2=1;

[num2 den2]=zp2tf(z2,p2,k2)


H2=filt(num2,den2)



H3=H1*H2;
H3=minreal(H3)



figure;
subplot(3,3,[1 4 7])
pzmap(H)
title('p-z plot for H=H1*H2')
subplot(3,3,[2 5 8])
pzmap(H1)
title('pole-zero lot for H1(z)')
subplot(3,3,[3 6 9])
pzmap(H2)
title('pole-zero lot for H2(z)')









% num3=H3.Numerator(1,:)
% den3=H3.Denominator(1,:)
% num3=cell2mat(num3)
% den3=cell2mat(den3)
% 
% [z,p,k]=tf2zpk(num3,den3)


%H3=simplifyFraction(tf(num3,den3))







