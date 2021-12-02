function [denoisedFrame, mse] = denoiseFrame(frame, threshold)
    
    A = double(frame);
    
    [m,n] = size(A);
    [U,S,V] = svd(A);
    
    denoiseS=zeros(m,n);
    a=n;
    if(m<n)
        a=m;
    end
    
    for i = 1:a 
        denoiseS(i,i) = S(i,i);
        if(S(i,i) < threshold)
            denoiseS(i,i) = 0;
        end
    end
    
    denoisedFrame=U*denoiseS*V';
    
    mse = 0;
    
    for i=1:m
        for j=1:n
            e = abs(A(i,j) - denoisedFrame(i,j));
            mse = mse + e'*e;
        end
    end
    denoisedFrame = uint8(denoisedFrame);
    mse = mse/(m*n);
end