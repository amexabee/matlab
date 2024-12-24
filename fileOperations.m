function fileOperations()
    clc
    disp('File Operations:');
    disp('1. Write to Excel');
    disp('2. Read from Excel');
    
    choice = input('Select an operation (1-2): ');
    
    switch choice
        case 1
            data = input('Enter data to write (vector/matrix): ');
            filename = input('Enter the filename (with .xlsx extension): ', 's');
            xlswrite(filename, data);
            disp('Data written to Excel.');
        case 2
            filename = input('Enter the filename (with .xlsx extension): ', 's');
            data = xlsread(filename);
            disp('Data read from Excel:');
            disp(data);
        otherwise
            disp('Invalid choice.');
    end
    open main.fig
end
