%This script aims at woring out the distance apart to place solar modules
%when designing a solar array

% by William Becerra Gonzalez

% Parameters we chos are LenghtOfPannel, tiltAngle and Latitude
lengthOfPannel = 1.956;
tiltAngle = 43.967; % this is the optimal angle in degrees
latitudeAngle = 33.964;
phi = latitudeAngle*(pi/180);


theta = (tiltAngle*pi)/180;
% h is the height of the solar module above ground
h = lengthOfPannel*sin(theta);

 % Sun position angles
azimuth = -120:30:120;  
alpha = 0:10:80; 

% Converting to radians
alpha = alpha*(pi/180); 
azimuth = azimuth*(pi/180);

Lshade = (h*cos(azimuth))/(tan(asin(0.648*cos(phi) - 0.399*sin(phi))));
Distance_Pannels = Lshade*sin(theta);

figure(1)
azimuthDegrees = azimuth*(180/pi);
plot(azimuthDegrees,Distance_Pannels)
title('Separation Distance vs Azimuth Angle')
xlabel('Azimuth (degrees)')
ylabel('Optimal separation for Solar modules (metres)')
grid on;