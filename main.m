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

%% 1.2 Rot to angle-axis
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


%% 1.3 Euler to rot
disp("#### EXERCISE 3 ####");

Rrpy1 = YPRToRot(0, 0, pi/2);
disp("Q3.2")
display(Rrpy1)

Rrpy2 = YPRToRot(deg2rad(60), 0, 0);
disp("Q3.3")
display(Rrpy2)

Rrpy3 = YPRToRot(pi/3, pi/2, pi/4);
disp("Q3.4")
display(Rrpy3)

Rrpy4 = YPRToRot(0, pi/2, -pi/12);
disp("Q3.5")
display(Rrpy4)


%% 1.4 Rot to Euler

Rrot1 = [
    1 0 0;
    0 0 -1;
    0 1 0
];

disp("Q4.2")
display(RotToYPR(Rrot1));

Rrot2 = [
    1/2 -sqrt(3)/2 0;
    sqrt(3)/2 1/2 0;
    0 0 1
];

disp("Q4.3")
display(RotToYPR(Rrot2));


Rrot3 = [
    0 -sqrt(2)/2 sqrt(2)/2;
    0.5 sqrt(2)/4 sqrt(2)/4;
    -sqrt(3)/2 sqrt(2*sqrt(3))/4 sqrt(2*sqrt(3))/4
];
disp("Q4.4")
display(RotToYPR(Rrot3));
