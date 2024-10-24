function [h, theta] = RotToAngleAxis(R)
%EULER REPRESENTATION: Given a tensor rotation matrices this function
% should output the equivalent angle-axis representation values,
% respectively 'theta' (angle), 'h' (axis) 
% SUGGESTED FUNCTIONS
    % size()
    % eye()
    % abs()
    % det()
    % NB: Enter a square, 3x3 proper-orthogonal matrix to calculate its angle
    % and axis of rotation. Error messages must be displayed if the matrix
    % does not satisfy the rotation matrix criteria.

    % Check matrix R to see if its size is 3x3
    if(~((det(R) == 1) && isequal(inv(R), transpose(R)))) 
        error("The matrix is not a rotation matrix");
    end

    theta = acos((trace(R) - 1) / 2);
    if theta == 0
        h = [1, 1, 1];
    elseif theta == pi
        h1 = sqrt((R(1,1) + 1)/2);
        h2 = sign(h1) * sign(R(1,2)) * sqrt((R(2,2) + 1)/2);
        h3 = sign(h1) * sign(R(1,3)) * sqrt((R(3,3) + 1)/2);
        
        h = [h1, h2, h3];
    else
       rrt = (R - transpose(R)) /2;
       a = vex(rrt);
       h = a / sin(theta);
    end
end

 
function a = vex(S_a)
% input: skew matrix S_a (3x3)
% output: the original a vector (3x1)
    a = [S_a(3, 2), S_a(1, 3), S_a(2, 1)] / 2;
end