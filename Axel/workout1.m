clear all;
clc;
% Problem 1
h = 0.1;
N = 2;
% Eulers forward method:
% y_{n+1} = y_{n} + h*y_derivative

% y_derivative -> y_prime(t) = y(t) + t
y_1 = 0 + h*0;
y_2 = y_1 + h*(y_1 + 0.1);
disp("y(0.1) is approximately " + string(y_1));
disp("y(0.2) is approximately " + string(y_2));

%Problem 2
clear all;
h = 0.1;
y_0 = 0;
K_1 = h*(0);
K_2 = h*((0+h/2) + (y_0 + K_1));
y_1 = y_0 + K_2;
disp("y(0.1) with RK2 is approximately " + string(y_1));

% Problem 3
clear all;
C = 10;
B = 1000;
alpha = 1;
h = 0.1;
y_0 = alpha;
y_derivative_0 = C*y_0*(1-y_0/B);
y_star = alpha + h*y_derivative_0;
y_final = y_0 + (h/2)*(C*y_star*(1-y_star/B) + y_derivative_0);
disp("y(0.1) with Heun's method is approximately " + string(y_final));
disp(vpa(y_final,5))

% Problem 4
clear all;'
% We see that this is a trivial integral and the solution for the
% first order ODEs are
% x_prime1 = k*1/sqrt(x^2 + y^2)
% y_prime1 = k*1/sqrt(x^2 + y^2)
%Problem Solution
%1. We would create a function for the system of ODEs
%2. We would make a script and define constants and intervals
%3. We would then use the ODE45-function to solve the initial value problem
% similarly to as done in lab 1.
% The answer would look something like:
% [t, xy] = ode45(@(t,xy) Function_ODEs(t,xy,constants), 
% timeinterval, initial_value, settings);


    

