addpath('include');

% TO DO: Test assignment 1 MCM 2024-2025
%% 1.1 Angle-axis to rot

disp("#### EXERCISE 1 ####")

%converting rho to h theta for Q1.4
rho = [-pi/3, -pi/6, pi/3];
theta = norm(rho);
h = rho / theta;

ex1_inputs = { 
    {"Q1.2", [1,0,0], deg2rad(90)}
    {"Q1.3", [0,0,1], pi/3}
    {"Q1.4", h, theta}
};

for i = 1:size(ex1_inputs, 1)
    input = ex1_inputs{i};
    exercise = input{1};
    h = input{2};
    theta = input{3};
    R = AngleAxisToRot(h, theta);

    disp("EXERCISE " + exercise);
    disp("h: ");
    disp(h);
    disp("theta: ");
    disp(theta);
    disp("Rotation matrix: ");
    disp(R);
end

%% 1.2 Rot to angle-axis
disp("#### EXERCISE 2 ####");

ex2_inputs = {
    {"Q2.2", [1 0 0; 0 0 -1; 0 1 0]}
    {"Q2.3", [0.5 -sqrt(3)/2 0; sqrt(3)/2 0.5 0; 0 0 1]}
    {"Q2.4", [1 0 0; 0 1 0; 0 0 1]}
    {"Q2.5", [-1 0 0; 0 -1 0; 0 0 1]}
};

for i = 1:size(ex2_inputs, 1)
    input = ex2_inputs{i};
    exercise = input{1};
    R = input{2};
    disp("EXERCISE " + exercise);
    disp("R:")
    disp(R)

    try
        [h, theta] = RotToAngleAxis(R);
    catch ME
        disp(ME.message)
        continue;
    end
    
    disp("h: ")
    disp(h)
    disp("theta: ")
    disp(theta)
end

%% 1.3 Euler to rot
disp("#### EXERCISE 3 ####");

ex3_inputs = {
   {"Q3.2", 0, 0, pi/2}
   {"Q3.3", deg2rad(60), 0, 0}
   {"Q3.4", pi/3, pi/2, pi/4}
   {"Q3.5", 0, pi/2, -pi/12}
};

for i = 1:size(ex3_inputs, 1)
    input = ex3_inputs{i};
    exercise = input{1};
    psi = input{2};
    theta = input{3};
    phi = input{4};
    R = YPRToRot(psi, theta, phi);

    disp("EXERCISE " + exercise);
    disp("psi:")
    disp(psi)
    disp("theta:")
    disp(theta)
    disp("phi:")
    disp(phi)
    disp("Rotation matrix: ")
    disp(R)
end

%% 1.4 Rot to Euler
ex4_inputs = {
   {"Q4.2", [1 0 0; 0 0 -1; 0 1 0]}
   {"Q4.3", [1/2 -sqrt(3)/2 0; sqrt(3)/2 1/2 0; 0 0 1]}
   {"Q4.4", [0 -sqrt(2)/2 sqrt(2)/2; 0.5 sqrt(2)*sqrt(3)/4 sqrt(2)*sqrt(3)/4; -sqrt(3)/2 sqrt(2)/4 sqrt(2)/4] }
};

for i = 1:size(ex4_inputs, 1)
    input = ex4_inputs{i};
    exercise = input{1};
    R = input{2};
	

    disp("EXERCISE " + exercise);
    disp("R: ")
    disp(R)


	try
        [psi, theta, phi] = RotToYPR(R);
    catch ME
        disp(ME.message)
        continue;
	end

    disp("psi:")
    disp(psi)
    disp("theta:")
    disp(theta)
    disp("phi:")
    disp(phi)

end