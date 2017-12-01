function h = hammingDist(A)
    [lin, col] = size(A); 
    total = 0; 
    for i = 1:col
        for j = 1:lin
            total = total + A(j,i);
        end
    end

    h = total; 
end