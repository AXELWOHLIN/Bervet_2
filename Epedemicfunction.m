function yout = Epedemicfunction(mu, N, B, v, t, y)
yout = [ mu*N-mu*y(1)-B*y(2)/N*y(1);
         B*y(1)/N*y(2)-v*y(2)-mu*y(2);
         v*y(2)-mu*y(3)];