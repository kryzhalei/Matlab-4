y = input('Enter Initial Height: ');
v = input('Enter Initial Velocity: ');
th = input('Enter Initial Angle: ');
ax = input('Enter Acceleration in X: ');
ay = input('Enter Acceleration in Y: ');

q = ((2*v*sind(th))/(-1*ay)) + (y/(v*sind(th)));
t = [0:0.001:q];
xm = (v*cosd(th)).*t + 0.5*(ax).*t.^2;
ym = y + (v*sind(th)).*t + 0.5*(ay).*t.^2;

if ay == 0
    error('Vertical Acceleration cannot be 0!')
else
    plot(xm,ym)
end
