a=-1;
b=7;
t=a:(b-a)/1000:b;
mom2=[];
for n=1:5
  n+1
  k=0:n;
  z=cos((pi+2*pi*k)/(2*n+2));
  x=(a+b)/2-z*(b-a)/2;
  p=poly(x);
  y=polyval(p,t);
  mom2 = [mom2, max(abs(y))];
  plot(t,y,'b',x,x*0,'ko')
  title(sprintf('Omega2: n = %d',n))
  grid on
  print('-deps',sprintf('GO1%d',n+1))
  pause
end
format short g
mom2