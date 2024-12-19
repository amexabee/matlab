% Multi-Functional Scientific Calculator

clc;
clear;

disp('Welcome to the Scientific Calculator!');
pause(3);
user = input('Enter your username (note: USER is the username!!!): ', 's');
if strcmp(user, 'USER')
    disp('Welcome USER!');
else
    disp('Invalid username. Exiting...');
    return;
end

while true
    disp(' ');
    disp('Main Menu:');
    disp('1. Basic Operations (Vectors and Matrices)');
    disp('2. Polynomial Operations');
    disp('3. File Operations (Excel Read/Write)');
    disp('4. Symbolic Computations');
    disp('5. Plotting Operations');
    disp('6. Quit');
    
    choice = input('Enter your choice (1-6): ');
    
    switch choice
        case 1
            basicOperations();
        case 2
            polyOperations();
        case 3
            fileOperations();
        case 4
            symbolicComputations();
        case 5
            plottingOperations();
        case 6
            disp('Exiting the calculator. Goodbye USER!');
            break;
        otherwise
            disp('Invalid choice. Please try again.');
    end
end
