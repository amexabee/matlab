function polyOperations()
clc
disp('Polynomial Operations:');
disp('1. Find roots');
disp('2. Convolve polynomials');
disp('3. Deconvolve polynomials');
choice = input('Select an operation (1-3): ');

switch choice
    case 1
        coeffs = input('Enter polynomial coefficients in a vector form (ex. [1 5 6]: ');
        r = roots(coeffs)
        
    case 2
        coeffs1 = input('Enter the first polynomial coefficients in a vector form (ex. [1 5 6]: ');
        coeffs2 = input('Enter the second polynomial coefficients in a vector form (ex. [1 5 6]: ');
        result = conv(coeffs1, coeffs2)
        
    case 3
        coeffs1 = input('Enter the first polynomial coefficients in a vector form (ex. [1 5 6]: ');
        coeffs2 = input('Enter the second polynomial coefficients in a vector form (ex. [1 5 6]: ');
        [quotient, remaind] = deconv(coeffs1, coeffs2)
        
    otherwise
        disp('Invalid choice.');
end
open main.fig
end
