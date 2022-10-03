%Лабораторная работа №6 Левина Эвелина 1ПМ
%Вариант №38
%Задание 1.
a=4;
b=9;
y=(a^1/2+b^1/2)*(a^1/3+b^1/3);
disp(y);
%Задание 2.
x = 1:5;
f=cos(x.^2);
disp(f);
%Задание 3.
N=5;
M = zeros(5,5);
for k=1:N
    for i=1:N
      if(k==i)
        M(k,i)=2*k-i;
      else
        M(k,i)=k+0.1;
      end
    end
end
disp(M);
V=zeros(5,1);
for n=1:N
    V(n,1)=1+n^3;
end
disp(V);
%Задание 4.
disp(det(M));
disp(det(M^2));
disp(det(M^-1));
%Задание 5.
x=M\V;
disp(x);
%Задание 6.
s=(M*M^-1)-eye(N);
disp(s);
%Задание 7.
g=(M*x)-V;
disp(g);
%Задание 8.
P= [ 1 2 3 4
      3 6 4 1
      1 5 3 4
      2 4 3 5];
Q= [ 3 5 4 1
      2 5 1 1
      2 1 4 4
      6 2 1 3];
disp(P);
disp(Q);
disp(P+Q);
disp(P-Q);
disp(P./Q);
disp(P.*Q);
disp(P*Q);
disp(Q*P);
if (P*Q == Q*P)
    disp('Коммутативно')
else 
    disp('Некоммутативно')
end
T=reshape(Q',1,[]);
disp(T);
disp(P^94);