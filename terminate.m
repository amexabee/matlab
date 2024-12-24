function terminate()
    clc
    q = lower(input('Are you sure you want to quit? Y/N: ', 's'));
    if strcmp(q, 'y') || strcmp(q, 'yes')
        exit;
    else
        open main.fig;
    end
end
