clc;
clear;
close;
x=input('enter the input sequence');
N=input('enter the dft length =');
n=0:1:N-1;
k=0:1:N-1;
wn=exp(-2*%pi*%i/N);
kn=n'*k;
wnkn=wn.^kn;
xk=x*wnkn;
p=abs(xk);
q=atand(imag(xk),real(xk));
disp('dft of x=');
disp(xk);
disp('magnitude value of xk');
disp(p);
disp('phase angle of xk=');
disp(q);

subplot(2,1,1);
plot2d3(k,p);
title('p sequence');
xlabel('time');
ylabel('amplitude');


subplot(2,1,2);
plot2d3(k,q);
title('q sequence');
xlabel('time');
ylabel('amplitude');
