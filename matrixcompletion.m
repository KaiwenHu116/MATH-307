function A = matrixcompletion(M)
    A = M;
    [m,n] = size(A);
    O = ones(m,n);
    for i = 1:m
        for j = 1:n
            if(isnan(M(i,j)))
                O(i,j) = 0;
                A(i,j) = 0;
            end
        end
    end
    
    for step_size = 1:15
        A = helper1(A, O, step_size);
    end
end