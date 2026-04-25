clc;
clear; 
close;
x=[3 1 2 1];
h1=[1 2 2 1];
h2=[2 4 2 4];
y=conv(x,h1);
disp(y);
subplot(2,2,1);
plot2d3(y);
xlabel('time');
ylabel('amplitude');
title('linear convolution');

y1=conv(x,h1);
y2=conv(h1,x);
if(y1==y2)
disp('commutative property proved');
else
disp('commutative property not proved');  
end
disp(y1);
subplot(2,2,2);
plot2d3(y1);
title('commutative property');
xlabel('time');
ylabel('amplitude');


y3=conv(x,conv(h1,h2));
y4=conv(conv(x,h1),h2);
if(y3==y4)
disp('associative property proved');
else
disp('associative property not proved');  

end
disp(y3);
subplot(2,2,3);
plot2d3(y3);
title('associative property');
xlabel('time');
ylabel('amplitude');

y5=conv(x, (h1+h2));
y6=(conv(x,h1)+conv(x,h2));
if(y5==y6)
disp('distrubutive property proved');
else
disp('distrubutive property not proved');  

end

subplot(2,2,4);
plot2d3(y5);
xlabel('time');
ylabel('amplitude');
title('distrubutive property');
