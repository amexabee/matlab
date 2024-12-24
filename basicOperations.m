function basicOperations()
    clc
    disp('Basic Operations:');
    disp('1. Find max, min, sum');
    disp('2. Calculate length and size');
    disp('3. Use find for locating elements');
    disp('4. Find fibonacci of n');
    
    
    choice = input('Select an operation (1-4): ');
    
    switch choice
        case 1
            vec = input('Enter a vector: ');
            fprintf('Max: %d\n', max(vec));
            fprintf('Min: %d\n', min(vec));
            fprintf('Sum: %d\n', sum(vec));
        case 2
            mat = input('Enter a matrix: ');
            fprintf('Length: %d\n', length(mat));
            fprintf('Size: %s\n', mat2str(size(mat)));
        case 3
            vec = input('Enter a vector: ');
            value = input('Enter the value to find: ');
            indices = find(vec == value);
            fprintf('Indices: %s\n', mat2str(indices));
        case 4
            n = input('Fibonacci of n: ');
            fibonacci(n);
        otherwise  
            disp('Invalid choice.');
    end
    
    function f = fibonacci(n)
        if (n < 0 || mod(n, 1) ~= 0) 
            disp('n must be an integer greater than 0')
            return
        end
        fib = zeros(1,n);
        if (length(fib) > 1)
            fib(2) = 1;
        end
        for i=3:n
            fib(i) = fib(i-1) + fib(i-2);
        end
        fib
    end
    open main.fig
end
