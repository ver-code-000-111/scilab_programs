clc;
clear all; 
close;
x=[3 1 2 1];
h1=[1 2 2 1];
h2=[2 4 2 4];
function y=circular(x,h1,h2);
x1=fft(x);
h1=fft(h1);
h2=fft(h2);
y1=x1.*h1;
y=ifft(y1);
endfunction
y1=circular(x,h1);
y2=circular(h1,x);
if(y1==y2)
disp('commutative property proved');
else
disp('commutative property not proved');  
end
disp(y1);
subplot(3,1,1);
plot2d3(y1);
title('commutative property');
xlabel('time');
ylabel('amplitude');


y3=circular(x,circular(h1,h2));
y4=circular(circular(x,h1),h2);
if(y3==y4)
disp('associative property proved');
else
disp('associative property not proved');  

end
disp(y3);
subplot(3,1,2);
plot2d3(y3);
title('associative property');
xlabel('time');
ylabel('amplitude');

y5=circular(x,(h1+h2));
y6=(circular(x,h1)+circular(x,h2));
if(y5==y6)
disp('distrubutive property proved');
else
disp('distrubutive property not proved');  

end
disp(y5);
subplot(3,1,3);
plot2d3(y5);
xlabel('time');
ylabel('amplitude');
title('distrubutive property');
