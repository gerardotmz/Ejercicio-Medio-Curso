%%mifuncion
function xp = mifuncion(t,x)
a=10;
b=28;
c=8/3;

xp1=a*(x(2)-x(1));
yp2=x(1)*(b-x(3))-x(2);
zp3=x(1)*x(2)-c*x(3);
xp=[xp1;yp2;zp3];
end

%%call_mifuncion
function [t,x] = call_mifuncion();
tspan=[0,100];
x0=[0 -1 -1];
[t,x]= ode45(@mifuncion,tspan,x0);
end

%%command windows
>> [t,x] = call_mifuncion();
>> plot3(x(:,1),x(:,2),x(:,3))
