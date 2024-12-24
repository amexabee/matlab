function symbolicComputations()
    clc
    syms x;
    disp('Symbolic Computations:');
    disp('1. Solve equations');
    disp('2. Differentiate');
    disp('3. Integrate');
    
    choice = input('Select an operation (1-3): ');
    
    switch choice
        case 1
            eqn = input('Enter the equation to solve (e.g., x^2-4 = 0): ', 's');
            sol = solve(sym(eqn), x)
        case 2
            expr = input('Enter the expression to differentiate: (e.g., x^2-4): ', 's');
            diff_expr = diff(sym(expr), x)
        case 3
            expr = input('Enter the expression to integrate: (e.g., x^2-4): ', 's');
            integral = int(sym(expr), x)
        otherwise
            disp('Invalid choice.');
    end
    open main.fig
end
