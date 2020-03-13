
function r=resistance(L,n,m)

	% if n=m then return with r=0;
	if(n==m)
		r=0;
		return;
	end

	% if m<n the swap n and m
	if(m<n)
		temp=m; m=n; n=temp;
	end

	%find the size of the matrix L
        N = length(L);
	
	%swap the nth and mth nodes to positions 1 and 2
        L = L([n,m,1:n-1,n+1:m-1,m+1:N],[n,m,1:n-1,n+1:m-1,m+1:N]);

	%compute the voltage-to current map DN
        A = L(1:2,1:2);
        B = L(3:N,1:2);
        C = L(3:N,3:N);
        DN = A-B'*C^(-1)*B;

	%the effective resistance is the reciprocal of the 1 1 entry of DN
	r = 1/DN(1,1);
end
