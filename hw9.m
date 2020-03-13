
%% Problem 6
x = linspace(0,1,18)';
y = sin(7*x)';
y = y';
A = [x ones(18,1)];
a = (A'*A)\A'*y;
B = [x.^2 x ones(18,1)];
b = (B'*B)\B'*y;
C = [x.^3 x.^2 x ones(18,1)];
c = (C'*C)\C'*y;
D = [x.^4 x.^3 x.^2 x ones(18,1)];
d = (D'*D)\D'*y;
E = [x.^5 x.^4 x.^3 x.^2 x ones(18,1)];
e = (E'*E)\E'*y;
xlin = linspace(0,1,100);
plot(x,y,'o')
hold on
plot(xlin,a(1)*xlin+a(2), 'r')
hold on
plot(xlin,b(1)*xlin.^2+b(2)*xlin+b(3), 'g')
hold on
plot(xlin,c(1)*xlin.^3+c(2)*xlin.^2+c(3)*xlin+c(4), 'y')
hold on
plot(xlin,d(1)*xlin.^4+d(2)*xlin.^3+d(3)*xlin.^2+d(4)*xlin+d(5), 'b')
hold on
plot(xlin,e(1)*xlin.^5+e(2)*xlin.^4+e(3)*xlin.^3+e(4)*xlin.^2+e(5)*xlin+e(6), 'k')
axis([0,1,-1.2,1.2])
legend ('data', 'N = 1', 'N = 2', 'N = 3', 'N = 4', 'N = 5')

%% Problem 8

normdiff = zeros(1,10);
for n = 1:10
    A = rand(10,n);
    b = rand(10,1);
    inverse = A\b;
    leastsquares = (A'*A)^(-1)*A'*b;
    normdiff(n) = norm(inverse) - norm(leastsquares);
end
x = linspace(1,10,10);
plot(x, normdiff)

