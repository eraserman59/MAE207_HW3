function [Pos2, Vel2, koe] = updateStep(Mu, Pos, Vel, Distrubance)
%Updates the position, velocity and accel, and orbital elements of the
%system. 

[Pos2,Vel2] = PosUpdate(Mu, Pos, Vel, Distrubance);

koe = rv2koe(Pos2, Vel2, Mu, 'deg');


end
