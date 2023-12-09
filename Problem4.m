clear
close all
Mu = 1;
rInitial = [1,0,0];
vInitial = [0,1,0];
adInitial = [0.001;0;0];
[PositionVector, VelocityVector, koeVector] = simulateOrbit(Mu, rInitial, vInitial, adInitial);
X = PositionVector(:,1);
Y = PositionVector(:,2);
Z = PositionVector(:,3);
figure
plot3(X,Y,Z); 
title('ad = 0.001 Position graph')
fig = gcf;
saveas(fig,'Position1.jpg')
a= koeVector(:,1);
e = koeVector(:,2);
i = koeVector(:,3);
M = koeVector(:,6);
figure
subplot(2,2,1)
plot(a)
title('semiMajorAxis vs Time graph')
subplot(2,2,2)
plot(e)
ylim([0,2])
title('eccentricity vs Time graph')
subplot(2,2,3)
plot(i) 
ylim([0,60])
title('inclination vs Time Graph')
subplot(2,2,4)
plot(M)
ylim([0,60])
title('True Anomoly vs Time Graph')
saveas(gcf,'Oribtal1.jpg')



adInitial = [0.01;0;0];
[PositionVector, VelocityVector, koeVector] = simulateOrbit(Mu, rInitial, vInitial, adInitial);
X = PositionVector(:,1);
Y = PositionVector(:,2);
Z = PositionVector(:,3);
figure
plot3(X,Y,Z); 
title('ad = 0.01 Position graph')
saveas(gcf,'Position2.jpg')
a= koeVector(:,1);
e = koeVector(:,2);
i = koeVector(:,3);
M = koeVector(:,6);
figure
subplot(2,2,1)
plot(a)
title('ad = 0.01 semiMajorAxis vs Time graph')
subplot(2,2,2)
plot(e)
ylim([0,2])
title('ad = 0.01 eccentricity vs Time graph')
subplot(2,2,3)
plot(i) 
ylim([0,60])
title('ad = 0.01 inclination vs Time Graph')
subplot(2,2,4)
plot(M)
ylim([0,60])
title('ad = 0.01 True Anomoly vs Time Graph')
saveas(gcf,'Oribtal2.jpg')


adInitial = [0.1;0;0];
[PositionVector, VelocityVector, koeVector] = simulateOrbit(Mu, rInitial, vInitial, adInitial);
X = PositionVector(:,1);
Y = PositionVector(:,2);
Z = PositionVector(:,3);
figure
plot3(X,Y,Z); 
figure
plot(X,Y); 
title('ad = 0.1 Position graph')
saveas(gcf,'Position3.jpg')
a= koeVector(:,1);
e = koeVector(:,2);
i = koeVector(:,3);
M = koeVector(:,6);
figure
subplot(2,2,1)
plot(a)
title('ad = 0.1 semiMajorAxis vs Time graph')
subplot(2,2,2)
plot(e)
ylim([0,2])
title('ad = 0.1 eccentricity vs Time graph')
subplot(2,2,3)
plot(i) 
ylim([0,60])
title('ad = 0.1 inclination vs Time Graph')
subplot(2,2,4)
plot(M)
ylim([0,60])
title('ad = 0.1 True Anomoly vs Time Graph')
saveas(gcf,'Oribtal3.jpg')

adInitial = [1;0;0];


[PositionVector, VelocityVector, koeVector] = simulateOrbit(Mu, rInitial, vInitial, adInitial);
X = PositionVector(:,1);
Y = PositionVector(:,2);
Z = PositionVector(:,3);
figure
plot3(X,Y,Z); 
title('ad = 1 Position graph')
saveas(gcf,'Position4.jpg')
figure
subplot(2,2,1)
plot(a)
title('ad = 1 semiMajorAxis vs Time graph')
subplot(2,2,2)
plot(e)
ylim([0,2])
title('ad = 1 eccentricity vs Time graph')
subplot(2,2,3)
plot(i) 
ylim([0,60])
title('ad = 1 inclination vs Time Graph')
subplot(2,2,4)
plot(M)
ylim([0,60])
title('ad = 1 True Anomoly vs Time Graph')
saveas(gcf,'Oribtal4.jpg')


