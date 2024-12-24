function fileOperations()
    clc
    disp('File Operations:');
    disp('1. Write to Excel');
    disp('2. Read from Excel');
    disp('3. Publish as pdf');
    
    choice = input('Select an operation (1-3): ');
    
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
        case 3
            data = input('Enter matlab file name to be published: ', 's');
            publish (data, 'pdf')
        otherwise
            disp('Invalid choice.');
    end
    open main.fig
end
