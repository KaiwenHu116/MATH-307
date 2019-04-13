function A = helper1(M, O, step_size)
    A = M;
    previous = A; 
    [m,n] = size(A);
    nuc_norm = 1e100; 
    [U,S,V] = svd(A);
    while sum(diag(S))< nuc_norm
        nuc_norm = sum(diag(S)); 
        previous = A; 
        min_sigma = 0;
        i = min(size(S));
        while i > 0
            S(i,i) = round(S(i,i), step_size);
            if(S(i,i)>0)
                min_sigma = S(i,i);
                break;
            else
                S(i,i) = 0; 
            end
            i = i - 1;
        end
        while i > 0
            S(i,i) = S(i,i) - min_sigma;
            if(S(i,i)<0)
                S(i,i) = 0.0;
            end
            i = i - 1;
        end
        temp_M = U * S * V';
        if(temp_M == 0)
            break;
        else
            for i = 1:m
                for j = 1:n
                    if(O(i,j) == 0)
                        A(i,j) = temp_M(i,j);
                    end
                end
            end
        end 
        [U,S,V] = svd(A);
    end 
    A = previous; 
end