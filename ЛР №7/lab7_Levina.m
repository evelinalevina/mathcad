%Лабораторная работа №7 Левина Эвелина 1ПМ
%Вариант №38
%Задание 1.
M1 = [1 3 4 3
      2 5 7 4
      3 3 5 1
      7 5 8 3];
M2 = [3 3 4 1
      6 5 4 4
      8 1 3 2
      1 1 3 6];
M3 = [5 2 2 3
      7 6 2 3
      5 5 1 1
      4 3 1 6];
M4 = [2 2 4 7
      1 2 2 7
      2 7 5 3
      6 6 3 1];
disp(M1);
disp(M2);
disp(M3);
disp(M4);
L1=[M1,M2; M3,M4];
disp(L1);
disp(det(L1));
disp(L1^-1);
L2=[M1,M3; M2,M4];
disp(L2);
disp(det(L2));
disp(L2^-1);
L3=[M1,M4; M3,M2];
disp(L3);
disp(det(L3));
disp(L3^-1);
%Задание 2.
a=-6;
b=3;
N=5;
while N<81
    P=diag(a*ones(1,N))+diag(b*ones(1,N-1),1)+diag(b*ones(1,N-1),-1);
    disp('Матрица: ');
    disp(P); 
    disp('Определитель: ');
    disp(det(P));
    disp('Обратная матрица: ');
    disp(P^-1);
    disp('Погрешность: ');
    Q=(P*P^-1)-eye(N); 
    disp(Q); 
    N=N*2;
end
%Задание 3.
W=rand(10000);
tic
    W1=W^2;
toc