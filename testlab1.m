%parameters
N = 1000;
mu = 0.002/365;
beta = 0.9;
v = 1/7;
I0 = 5;
S0 = N - I0;
R0 = 0;
initial = [S0 I0 R0];
timeinterval = [0 120];
R_noll=beta/(mu+v);
%setting = odeset;
setting = odeset('OutputFcn','odeplot','RelTol', 1e-2);
[t, y] = ode45(@(t,y) SIRsim(t,y,N,mu,beta,v), timeinterval, initial,setting);
plot(t,y); 
hold on;
xlabel('time')
ylabel('Mottagliga, Infekterade och Immuna');
title('R0-talet är '+string(R_noll));
legend('Friska','Sjuka','Immuna');
hold off



 




