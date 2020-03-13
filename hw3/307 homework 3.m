%% 2
% n <= 20
conds = zeros(1, 20);
x = linspace(1, 20, 20);
for n = 1:20
    X = linspace(0, 1, n);
    conds(n) = log(cond(vander(X)));
end
plot(x, conds)
% n > 20
conds = zeros(1, 30);
x = linspace(1, 30, 30);
for n = 1:30
    X = linspace(0, 1, n);
    conds(n) = log(cond(vander(X)));
end
plot(x, conds)
%% 3
X = [4.1168, 4.19236, 4.20967, 4.46908];
Y = [0.213631, 0.214232, 0.21441, 0.21888];
plotspline(X, Y)
hold on
V = vander(X);
a = V\Y';
x = linspace(4.1168, 4.46908, 100);
y = polyval(a, x);
plot(x,y,'r')
%% 5
conds = zeros(1, 100);
x = linspace(1, 100, 100);
for n = 1:100
    X = linspace(0, 1, n);
    conds(n) = log(cond(splinemat(X)));
end
plot(x, conds)
%% 8
X = [0, 5, 10, 15];
Y = [0, 1, -1, 2];
plotspline(X, Y)
