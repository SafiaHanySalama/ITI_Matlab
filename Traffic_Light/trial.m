% Traffic Light Simulation

% Define durations for each light
greenDuration = 5;  % seconds
yellowDuration = 2; % seconds
redDuration = 4;    % seconds

% Number of cycles
numCycles = 3;
figure;
axis off;
outline = [-0.8, -3, 1.6, 10];
rectangle('Position', outline, 'Curvature', [0.2, 0.2], 'FaceColor', 'white');

% Draw traffic light background
rectangle('Position', [0, 0, 0.1, 6], 'Curvature', [0.2, 0.2], 'FaceColor', 'k');
% Loop through cycles
for cycle = 1:numCycles
    % Green light
    disp('Green Light');
    rectangle('Position', [0, 4, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'g');
    pause(greenDuration);
    rectangle('Position', [0, 4, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'k');
    
    % Yellow light
    disp('Yellow Light');
    rectangle('Position', [0, 2.25, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'y');
    pause(yellowDuration);
    rectangle('Position', [0, 2.25, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'k');
    
    % Red light
    disp('Red Light');
    rectangle('Position', [0, 0.5, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'r');
    pause(redDuration);
    rectangle('Position', [0, 0.5, 0.1, 2], 'Curvature', [1, 1], 'FaceColor', 'K');
end