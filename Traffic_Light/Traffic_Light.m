% Traffic Light Simulation

% Define durations for each light
greenDuration = 5;  % seconds
yellowDuration = 2; % seconds
redDuration = 4;    % seconds

% Number of cycles
numCycles = 3;

% Loop through cycles
for cycle = 1:numCycles
    % Green light
    disp('Green Light');
    plotTrafficLight('green');
    pause(greenDuration);
    
    % Yellow light
    disp('Yellow Light');
    plotTrafficLight('yellow');
    pause(yellowDuration);
    
    % Red light
    disp('Red Light');
    plotTrafficLight('red');
    pause(redDuration);
end
% Function to plot traffic light
function plotTrafficLight(color)
    figure;
    axis off;
    hold on;
    
    % Draw traffic light background
    rectangle('Position', [0, 0, 0.1, 6], 'Curvature', [0.2, 0.2], 'FaceColor', 'k');


    % Draw lights based on the given color
    switch color
        case 'green'
            rectangle('Position', [0, 4, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'g');
        case 'yellow'
            rectangle('Position', [0, 2.25, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'y');
        case 'red'
            rectangle('Position', [0, 0.5, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'r');
    end
    %hold on;
end
