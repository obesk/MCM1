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
disp("#### EXERCISE 2 ####");
R1 = [1 0 0; 0 0 -1; 0 1 0];

[h1, theta1] = RotToAngleAxis(R1);
disp("Q2.2");
disp("h:");
disp(h1);
disp("theta");
disp(theta1)


% R2 = [1 -sqrt(3)/2 0; sqrt(3)/2 0.5 0; 0 0 1];
% [h2, theta2] = RotToAngleAxis(R2);
% disp("Q2.3")
% disp("h:");
% disp(h2);
% disp("theta");
% disp(theta2)

R3 = [1 0 0; 0 1 0; 0 0 1];
[h3, theta3] = RotToAngleAxis(R3);
disp("Q2.4")
disp("h:");
disp(h3);
disp("theta");
disp(theta3)

R4 = [-1 0 0; 0 -1 0; 0 0 1];
[h4, theta4] = RotToAngleAxis(R4);
disp("Q2.5")
disp("h:");
disp(h4);
disp("theta");
disp(theta4)



% 1.2 Rot to angle-axis

% 1.3 Euler to rot

% 1.4 Rot to Euler
