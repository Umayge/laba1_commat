disp('Equidstation')
a=-1;b=7;
t=a:(b-a)/1000:b;
err1=[];
format long g
for n=1:5
  x=a:(b-a)/n:b;
  p=polyfit(x,f(x),n)
  y=polyval(p,t);
  err1=[err1,max(abs(f(t)-y))];
  plot(t,f(t),'b',t,y,'r',x,f(x),'ko')
  title(sprintf('Eq:L_%d',n))
  grid on
  pause
  plot(t,f(t)-y,'b',x,x*0,'ko')
  title(sprintf('Err1:n=%d',n))
  grid on
  pause
end
format short g
err1

