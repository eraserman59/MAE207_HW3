function [ PosFinal, VelFinal] = PosUpdate(Mu, Pos, Vel, Distrubance)
%Updates the position, velocity and accel, and orbital elements of the
%system. 

Vel1 = VelUpdate(Mu, Pos, Vel, Distrubance);
PosFinal = Pos + Vel1;
VelFinal = VelUpdate(Mu, PosFinal, Vel1, Distrubance);

end