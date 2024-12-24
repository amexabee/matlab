function plottingOperations()
    clc
    disp('Plotting Operations:');
    disp('1.  Plot (plot)');
    disp('2.  Mesh Plot (mesh)');
    
    choice = input('Select an operation (1-2): ');
    
    switch choice
        case 1
            x = input('Enter the vector/matrix for x (e.g., [1, 2, 3]): ');
            y = input('Enter the vector/matrix for y (e.g., [4, 5, 6]): ');
            
           
            if length(x) ~= length(y)
                disp('Error: x and y must have the same length for 2D plotting.');
                return;
            end
            
            plot(x, y);
            title('2D Plot');
            xlabel('x');
            ylabel('y');
            grid on;
            
        case 2
            x = input('Enter the vector/matrix for x (e.g., -5:0.5:5): ');
            y = input('Enter the vector/matrix for y (e.g., -5:0.5:5): ');
            
            [X, Y] = meshgrid(x, y);   
            Z = X.^2 + Y.^2;          
            mesh(X, Y, Z);
            title('3D Mesh Plot');
            xlabel('x');
            ylabel('y');
            zlabel('z');
            grid on;
            
        otherwise
            disp('Invalid choice. Please select either 1 or 2.');
    end
    open main.fig
end
