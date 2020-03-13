%% problem 11
%% a
A = [1000, 0; 0, 1];
A2 = A*A;
norm(A)
norm(A2)
%% b
% same stuff as a
%% c
norm(transpose(A)*A)
norm(A)^2
B = rand(3);
tB = transpose(B);
norm(tB*B) == norm(B)^2
%true
%% d
%% e
cond(A^-1)
cond(A)
%% f
cond(A) >= 1
cond(B) >= 1
%% 13
A = [1000, 0; 0, 1];
b = [0, 1]';
x = A\b;
db = [0, 1]';
bdb = b + db;
xprime = A\bdb;
norm(xprime-x)/norm(x)
norm(db)/norm(b)
%% 15
%% a
A = [0, 2, 4; 3, 1, 1; 2, 0, 1]
cond(A)
%% b
A = [4, 1.99; 2.01, 1];
cond(A)
%% 20
A = [10, 9; 8, 7];
[U SIGMAA V] = svd(A);
norm(A, 'fro')
norm(SIGMAA)
B = [1, 0; 0, 1];
[W SIGMAB Y] = svd(B);
norm(B, 'fro')
norm(SIGMAB)

