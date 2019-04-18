function A = completion(M)
    %% create M_shadow matrix
    %if the entry is known, set 1
    %if the entry is unknown, set 0
    A = M;
    [m,n] = size(A); % stores numbers of rows as m and numbers of columns as n
    M_shadow = ones(m,n); % creates a 50 by 200 matrix with just ones
    for i = 1:m
        for j = 1:n
            if(isnan(M(i,j))) % if the entry n the ith row of jth column is NaN, enter 0
                M_shadow(i,j) = 0;
                %use laplance distribution to initial the unknow entries
                %Acturally, this initial do not effect too much
                A(i,j) = 0;
            end
        end
    end
    
    %% Similar to gradient descent
    %the reason why 1:15 is because the calculation accuracy in the matlab
    %is decimal point 15
    for step_size = 1:15
        A = completionHelperRough(A, M_shadow, step_size);
        A = completionHelperAccurate(A, M_shadow, step_size);
    end
end