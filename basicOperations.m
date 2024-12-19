function basicOperations()
    disp('Basic Operations:');
    disp('1. Find max, min, sum');
    disp('2. Calculate length and size');
    disp('3. Use find for locating elements');
    
    choice = input('Select an operation (1-3): ');
    
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
        otherwise
            disp('Invalid choice.');
    end
end
