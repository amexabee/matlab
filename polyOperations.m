function polyOperations()
    disp('Polynomial Operations:');
    disp('1. Find roots');
    disp('2. Convolve polynomials');
    disp('3. Deconvolve polynomials');
    choice = input('Select an operation (1-3): ');
    
    switch choice
        case 1
            coeffs = input('Enter polynomial coefficients: ');
            r = roots(coeffs);
            fprintf('Roots: %s\n', mat2str(r));
       
        case 2
           
            
            coeffs1 = input('Enter the first polynomial coefficients: ');
            coeffs2 = input('Enter the second polynomial coefficients: ');
            
                result = conv(coeffs1, coeffs2);
                fprintf('Convolution Result: %s\n', mat2str(result));
               
            case 3
                coeffs1 = input('Enter the first polynomial coefficients: ');
            coeffs2 = input('Enter the second polynomial coefficients: ');
             [q, r] = deconv(coeffs1, coeffs2);
                fprintf('Deconvolution Quotient: %s\n', mat2str(q));
                fprintf('Deconvolution Remainder: %s\n', mat2str(r));
            
        otherwise
            disp('Invalid choice.');
    end
end
