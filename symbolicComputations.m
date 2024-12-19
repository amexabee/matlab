function symbolicComputations()
    syms x;
    disp('Symbolic Computations:');
    disp('1. Solve equations');
    disp('2. Differentiate');
    disp('3. Integrate');
    disp('4. Simplify/Expand');
    
    choice = input('Select an operation (1-4): ');
    
    switch choice
        case 1
            eqn = input('Enter the equation to solve (e.g., x^2-4==0): ', 's');
            sol = solve(eqn, x);
            fprintf('Solution: %s\n', mat2str(sol));
        case 2
            expr = input('Enter the expression to differentiate: ', 's');
            diff_expr = diff(expr, x);
            fprintf('Derivative: %s\n', diff_expr);
        case 3
            expr = input('Enter the expression to integrate: ', 's');
            integral = int(expr, x);
            fprintf('Integral: %s\n', integral);
        case 4
            expr = input('Enter the expression to simplify/expand: ', 's');
            simplified = simplify(expr);
            expanded = expand(expr);
            fprintf('Simplified: %s\n', simplified);
            fprintf('Expanded: %s\n', expanded);
        otherwise
            disp('Invalid choice.');
    end
end
