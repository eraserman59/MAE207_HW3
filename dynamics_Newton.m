function [ dx ] = dynamics_Newton( ~ , x , const )

%  Inertial position and velocity vectors
r           = x(1:3);
v           = x(4:6);

rmag        = norm(r);


%  Gravitational acceleration due to a point-mass 
a_point     = -const.mu / rmag^3 * r;
a1 = [const.adInitial];

     
%  State diffeerential
dx          = [ v ; a_point + a1 ];

end