
function [psi,theta,phi] = RotToYPR(R)
% Given a rotation matrix the function outputs the relative euler angles
% usign the convention YPR
% Input:
% R rotation matrix
% Output:
% psi angle around z axis (yaw)
% theta angle around y axis (theta)
% phi angle around x axis (phi)
% SUGGESTED FUNCTIONS
    % atan2()
    % sqrt()

 % Check matrix R to see if its size is 3x3
if(~((det(R) == 1) && isequal(inv(R), transpose(R)))) 
    error("The matrix is not a rotation matrix");
 end

theta = atan2(-R(3,1), sqrt(R(1,1)^2 + R(2,1)^2));
if cos(theta) ~= 0
    psi = atan2(R(2, 1), R(1, 1));
    phi = atan2(R(3, 2), R(3, 3));
else
    error("This configuration could be a singularity");
end

