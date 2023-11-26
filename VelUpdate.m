function [ VelFinal] = VelUpdate(Mu, Pos, Vel, Distrubance)
%Updates the position, velocity and accel, and orbital elements of the
%system. 

magR = norm(Pos);
%Accel at point 1
Accel1 = -(Mu/(magR^3)) * Pos + Distrubance;
VelFinal = Vel + Accel1;

end