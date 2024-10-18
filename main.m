addpath('include');

% TO DO: Test assignment 1 MCM 2024-2025
% 1.1 Angle-axis to rot

disp("#### EXERCISE 1 ####")
disp("Q1.2");
disp(AngleAxisToRot([1,0,0], deg2rad(90)));

disp("Q1.3");
disp(AngleAxisToRot([0,0,1], pi/3));

disp("Q1.4")
rho = [-pi/3, -pi/6, pi/3];
theta = norm(rho);
h = rho / theta;
disp(AngleAxisToRot(h, theta));

%% Exercise_2
disp("#### EXERCISE 2 ####")
R1 = [1 0 0; 0 0 -1; 0 1 0];

h, theta = RotToAngleAxis(R1);


R2 = [1 -sqrt(3)/2 0; sqrt(3)/2 0.5 0; 0 0 1];

R3 = [1 0 0; 0 1 0; 0 0 1];

R4 = [-1 0 0; 0 -1 0; 0 0 1];



% 1.2 Rot to angle-axis

% 1.3 Euler to rot

% 1.4 Rot to Euler