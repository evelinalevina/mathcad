%Лабораторная работа №8 Левина Эвелина 1ПМ
%Вариант №38
%Задание 1.
clear; clc;
n=10;
for i = 0.01:n
    fplot(@(i) cos(i)-log(i));
end
title('1');
grid on;
ginput;

%Задание 2.
clear; clc;
figure
fimplicit(@(x,y) x.^2+y.^2-4^2, [-10,10]);
hold on;
fimplicit(@(x,y) (x-2).^2+(y+1).^2-5^2, [-10,10]);
title('2');
grid on;
ginput;
syms x y
c1=x^2+y^2-4^2;
c2=(x-2)^2+(y+1)^2-5^2;
p=solve(c1,c2); % точки пересечения, если они есть
if isempty(p)
    disp('Нет точек пересечения.')
else
    disp('Есть точки пересечения.');
end

%Задание 3.
a=1;
b=1;
c=1;
[fi,z]=meshgrid(0:2*pi/50:2*pi,-1:0.1:1);
r=sqrt((1+(z/c).^2)./((cos(fi)/a).^2+(sin(fi)/b).^2));
x=r.*cos(fi);
y=r.*sin(fi);
mesh(x,y,z)
hold on;
x1=1; y1=0; z1=-1;
ax=1; ay=1; az=2;
X=[x1 ax+x1];
Y=[y1 ay+y1];
Z=[z1 az+z1];
plot3(X,Y,Z,'r')
title('3');
grid on;


