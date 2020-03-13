%% Problem 2(a)

A = [1 1 1 1; 1 1 -1 -1;1 -1 0 0;0 0 1 -1];
b = [1;1;1;1];
x = A\b

%% Problem 2(b)

A = [1 0 3 2 -4; 2 1 6 5 0; -1 1 -3 -1 1];
b = [4;7;-5];
C = [A b];
rref (C)

%% Problem 3

t1 = zeros(1, 1000); %% gives an array of t1 = [0 0 ... 0]
t2 = zeros(1, 1000); %% gives an array of t2 = [0 0 ... 0]
x = linspace(1, 1000, 1000); %% gives an array of k = [1 2 ... 1000]

for n = 1:1000
    A = rand(n, n);
    b1 = rand(n, 1);
    tic();
    A\b1;
    t1(n) = toc;
end

for n = 1:1000
    A = rand(n, n);
    b1 = rand(n, 1);
    tic();
    A^-1*b1;
    t2(n) = toc;
end

plot(x, t1, x, t2)

%% problem 3
A = rand(500, 500);
b = rand(500, 1);
tic();A\b;a=toc();
tic();A^-1*b;B=toc();
C = rand(1000, 1000);
d = rand(1000, 1);
tic();C\d;c=toc();
tic();C^-1*d;D=toc();
E = rand(1500, 1500);
f = rand(1500, 1);
tic();E\f;e=toc();
tic();E^-1*f;F=toc();
G = rand(2000, 2000);
h = rand(2000, 1);
tic();G\h;g=toc();
tic();G^-1*h;H=toc();
I = rand(2500, 2500);
j = rand(2500, 1);
tic();I\j;i=toc();
tic();I^-1*j;J=toc();
X=[a, c, e, g, i];
Y=[B, D, F, H, J];
plot(X)
hold on
plot(Y)
