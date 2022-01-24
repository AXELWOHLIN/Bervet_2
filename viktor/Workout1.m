%Eulers metod

%Problem 1
h=0.1;
t=0;
y=0;
N=0.3;
%y_(n+1)=y_(n)+h*y_der

for t=0:0.1:N
    y_der=y+t;
    y=y+h*y_der;
    disp("Problem 1 y(t) is approx " + string(y))
end

clear all

%Problem 2
h=0.1;
y=0;
t=0;
y_der=y+t;
K_1=h*y_der;
K_2=h*((0+h/2)+(y+K_1));
y1=y+K_2;
disp(string(y1))

clear all
%Problem 3

%Constants
alpha=1;
B=1000;
C=10;
h=0.1;
N=0.3;
%Inital conditions
y=alpha;

for t=0:0.1:0.3
    y_der=C*y*(1-y/B);
    y_star=y+h*y_der;
    y_der_star = C*y_star*(1-y_star/B);
    y=y+h/2*(y_der_star+y_der);
    disp("Problem 3 y(t) is approx " + string(y))
end
    clear all
    
    %Problem 4
    
    %We can integrate both expressions to find a exact solution to and
    %create a system of first order ODE
    
    %We get y'=k/sqrt(x^2+y^2)
    %       x'=k/sqrt(x^2+y^2)
    
    %First we create a function with the system of ODEs
    %Secondly we create a script and call the function with the ode45
    %function as done in lab 1
    %ode45 would be called as followz
    %[t,xy]=ode45(@(t,xy) ODEfunction(t,xy,constants), timeinterval, y0,
    %setting);
    
    