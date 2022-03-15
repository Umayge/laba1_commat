a=-1;
b=7;
t=a:(b-a)/1000:b;
mom1=[];
for n=1:5
  n+1
  x=a:(b-a)/n:b;
  p=poly(x);
  y=polyval(p,t);
  mom1 = [mom1, max(abs(y))];
  plot(t,y,'b',x,x*0,'ko')
  title(sprintf('Omega1: n = %d',n))
  grid on
  print('-deps',sprintf('GO1%d',n+1))
  pause
end
format short g
mom1