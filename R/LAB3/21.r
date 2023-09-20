v = [11:-1:0, 1:11];   % create the vector
A = diag(v);           % create the matrix
size(A)  % should output [21 21]
disp(A)  % should display the 21-by-21 matrix with the desired sequence on the diagonal
