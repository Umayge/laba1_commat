disp('Tchebychev')
a=-1;b=7;
t=a:(b-a)/1000:b;
err2=[];
format long g
for n=1:5
  k=0:n;
  z=cos((pi+2*pi*k)/(2*n+2));
  x=(a+b)/2-z*(b-a)/2;
  p=polyfit(x,f(x),n)
  y=polyval(p,t);
  err2=[err2,max(abs(f(t)-y))];
  plot(t,f(t),'b',t,y,'r',x,f(x),'ko')
  title(sprintf('Eq:L_%d',n))
  grid on
  pause
  plot(t,f(t)-y,'b',x,x*0,'ko')
  title(sprintf('Err2:n=%d',n))
  grid on
  pause
end
format short g
err2