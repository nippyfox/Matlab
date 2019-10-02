a = 2.5;
b = 1.35;
i = 8;
c = -7.2;
x = 0.75;
y = ((1.5*((a-b)^2))/(abs(a-b)*c))+(i/5)+(10^3*(sqrt((abs(c-b)+a^2)/((a+c)^(2/3)))))-(((a+x^2)*cos(7))/((i*x^2)+((a^2)*b*c)));
disp(y);
array = [a,b,c,i,x,y];
res1 = 0;
for j = 1:6
    if abs(array(j)) > res1
        res1 = abs(array(j));
    end
end
disp(res1);
res2 = res1*array(6);
disp(res2);
res3 = res1;
for j = 1:6
    if array(j) < res3
        res3 = array(j);
    end
end
disp(res3);