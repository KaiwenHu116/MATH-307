% Writes a matrix in the two column form for Kaggle.  Entries of the matrix that are
% NaN are removed.

function csvWriteForKaggle(name, M)

[n1,n2] = size(M);

IndexValues = (1:n1*n2)';

MatrixValues = M(:);

knownValues = find(isnan(MatrixValues) == 0);

IndexValues = IndexValues(knownValues);

MatrixValues = MatrixValues(knownValues);



% Now turn it into a Table.  The top row contains the values -n1, n2

IndexValues = [-n1; IndexValues];

MatrixValues = [n2; MatrixValues];

tableM = table(IndexValues, MatrixValues);

% Now write to csv file

writetable(tableM, [name, '.csv']);


end

