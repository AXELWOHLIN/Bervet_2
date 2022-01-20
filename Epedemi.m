%Epedemi

t0=0;
t1=120;
timeinterval=[t0 t1];

B=1.2;
v=1/15;
I0=5;
N=1000;
mu=0.002/365;

S0=N-I0;
R0=0;
setting = odeset;
R_noll=B/(v+mu);

y0=[S0; I0; R0];

[t,y]=ode45(@(t,y) Epedemicfunction(mu,N,B,v,t,y), timeinterval, y0, setting);
     
  plot(t,y);
  xlabel('time')
  ylabel('Number of predator and prey');
  title('Friska, sjuka och immuna '+string(R_noll));
  legend('Friska','Sjuka','Immuna');

