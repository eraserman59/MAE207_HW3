function [PositionVector,VelocityVector, koeVector] = simulateOrbit(Mu, rInitial, vInitial, adInitial)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

koeInitial = rv2koe(rInitial,vInitial,Mu, 'deg');

T = 2 * pi * sqrt( koeInitial(1)^3 / Mu ); 
%just doing 12 rotations instead of trying to determine when
% 10 rotations occur with changing a
time = linspace( 0 , 12 * T , 5000 );

%  Set integrator options
tol             = 1e-12;    
options         = odeset( 'RelTol' , tol , 'AbsTol' , tol );

const.mu = Mu;
const.adInitial = adInitial;

xc0 = [rInitial, vInitial];
[ ~ , xc ]      = ode45( @dynamics_Newton , time , xc0 , options , const );

[m,n] = size(xc);
koeVector(1,:) = koeInitial;


for i=1:m
  rI = xc(i,1:3);
  vI = xc(i,4:6);
  koeVector(i,:) = rv2koe(rI,vI,Mu, 'deg');
end


PositionVector = xc(:,1:3);
VelocityVector = xc(:,4:6);

end