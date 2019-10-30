% Задание 1.1. All graphs in one window
x = -5:0.0001:5;
y1 = sin(x).*x;
y2 = sin(x)+cos(x);
y3 = x.^2+log10(x);
plot(x, y1, '-r', x, y2, '-g', x, y3, '-b');
legend('y = sin(x) * x', 'y = sin(x) + cos(x)', 'y = x^2 + lg(x)');
axis square;
grid on;
m = 1;
while not(m == 0)
    m = input('Type 0');
end
clf;
% Задание 1.2. Each graph in its window
x1 = -5:0.0001:5;
x2 = -5:0.0001:5;
x3 = -5:0.0001:5;
plot(x1, y1, '-r');
title('y = sin(x) * x');
legend('y = sin(x) * x');
axis square;
grid on;
m = 1;
while not(m == 0)
    m = input('Type 0');
end
clf;
plot(x2, y2, '-g');
title('y = sin(x) + cos(x)');
legend('y = sin(x) + cos(x)');
axis square;
grid on;
m = 1;
while not(m == 0)
    m = input('Type 0');
end
clf;
plot(x3, y3, '-b');
title('y = x^2 + lg(x)');
legend('y = x^2 + lg(x)');
axis square;
grid on;
m = 1;
while not(m == 0)
    m = input('Type 0');
end
clf;

% Задание 2.
x = -5:0.0001:5;
y = ((abs(x)/(1+x.^2)).*exp(-2.*x)).*(x<=0)+(sqrt(1+x.^2)).*(x>0);
plot(x, y, '-g');
legend('y = abs(x)/(1+x^2))*exp(-2*x), when x <= 0; y = sqrt(1+x^2), when x > 0');
xlim([-5, 5]);
axis square;
grid on;
