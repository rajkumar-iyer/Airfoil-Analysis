% Load airfoil data from the text file
airfoil_data = load('Airfoil.txt');
x = airfoil_data(:,1); % x-coordinates
y = airfoil_data(:,2); % y-coordinates
assignin('base', 'x', x);
assignin('base', 'y', y);