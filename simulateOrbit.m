function [PositionVector,koeVector] = simulateOrbit(Mu, rInitial, vInitial, adInitial)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

koeInitial = rv2koe(rInitial,vInitial,Mu, 'deg');
Minitial = koeInitial(6);
rotations = 0;
[PosN, VelN, koeN] = updateStep(Mu, rInitial, vInitial, adInitial); 
PositionVector = [rInitial; PosN];
koeVector = [koeInitial,koeN];
M1 = koeN(6);
difference = M1 - Minitial;
if (difference) > 0
    direction = 1;
    prevSide = 1;
elseif (difference == 0 )
    direction = 5;
else
    direction = 0;
    prevSide = 0;
end
i =1;

while rotations < 10
  i=i+1;
  [PosN, VelN, koeN] = updateStep(Mu, PosN, VelN, adInitial); 
  PositionVector = [PositionVector; PosN];
  koeVector = [koeVector,koeN];
  Mnew = koeN(6);
  difference = Mnew - M1;
  if (difference) > 0
      CurrSide = 1;
  else 
      CurrSide = 0;
  end
  if direction == 1
    if (CurrSide == 1) && (prevSide == 0)
      rotations = rotations + 1;
    end
  elseif direction == 5
      rotations = rotations +0.25;
  else 
    if (CurrSide == 0) && (prevSide == 1)
      rotations = rotations + 1;        
    end
  
  end
  prevSide = CurrSide;

  if i > 1000
      break
  end
end
end