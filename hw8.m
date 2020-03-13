%% Problem 3
a = [1 2 0 1]';
P = a*(a'*a)^(-1)*a';
Q = diag(ones(4,1))-P
%% Problem 4
a1=[1 1 1 0]';a2=[0 1 2 3]';
B=[a1 a2];
P=B*(B'*B)^(-1)*B'
%% Problem 5
x = [1 2 3 4 5]';
y = [5 3 3 4 5]';
A = [x.^2 x ones(5,1)];
a = (A'*A)\(A'*y);
plot(x,y,'o')
hold on
xaxis = linspace(1,5,500);
plot(xaxis, a(1)*xaxis.^2+a(2)*xaxis+a(3))
axis([0,6,0,6])