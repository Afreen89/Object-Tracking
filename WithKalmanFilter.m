% Task 3: Object Tracking

clc, clear all, close all,

% Import the data
Real_coordinate_X = csvread('x.csv');
Real_coordinate_Y = csvread('y.csv');
Noisy_coordinate_U = csvread('a.csv');
Noisy_coordinate_V = csvread('b.csv');

% Apply KalmanFilter
z = [Noisy_coordinate_U; Noisy_coordinate_V];

% Estimated Coordinates
[px, py] = kalmanTracking(z);

% % Plot of Real Coordinates with Noisy Coordinates
figure, plot(Real_coordinate_X, Real_coordinate_Y, 'b*', 'DisplayName', 'Real Coordinates'); 
xlabel('x-axis'); ylabel('y-axis');
hold;
plot(Noisy_coordinate_U, Noisy_coordinate_V, 'pm', 'DisplayName', 'Noisy Coordinates'); 
title('Real coordinates[x, y] with noisy coordinates [a, b]');
legend

% % Plot of Estimated Coordinates with Real Coordinates
figure, plot(px, py, 'k--o', 'DisplayName', 'Estimated Coordinates'); 
xlabel('x-axis'); ylabel('y-axis');
hold;
plot(Real_coordinate_X, Real_coordinate_Y, 'b*', 'DisplayName', 'Real Coordinates'); 
title('Estimated coordinates[x*, y*] with real coordinates [x,y]');
legend
 
% % Plot of Estimated Coordinates with Noisy Coordinates
figure, plot(px, py, 'k--o', 'DisplayName', 'Estimated Coordinates'); 
xlabel('x-axis'); ylabel('y-axis');
hold;
plot(Noisy_coordinate_U, Noisy_coordinate_V, 'pm', 'DisplayName', 'Noisy Coordinates'); 
title('Estimated coordinates[x*, y*] with noisy coordinates [a,b]');
legend

% Absolute Error
e_a1 = (Real_coordinate_X - Noisy_coordinate_U) + (Real_coordinate_Y - Noisy_coordinate_V);
e_a2 = (Real_coordinate_X - px) + (Real_coordinate_Y - py);
e_a3 = (Noisy_coordinate_U - px) + (Noisy_coordinate_V - py);


% Root Mean Squared Error
e1 = sqrt((Real_coordinate_X - Noisy_coordinate_U).^2 + (Real_coordinate_Y - Noisy_coordinate_V).^2);
RMS1 = rms(e1);

e2 = sqrt((Real_coordinate_X - px).^2 + (Real_coordinate_Y - py).^2);
RMS2 = rms(e2);

e3 = sqrt((Noisy_coordinate_U - px).^2 + (Noisy_coordinate_V - py).^2);
RMS3 = rms(e3);


