function rand_int(n,m)
x = randi(10,n,m);
display(x);
fprintf("The element at (n,m) is: %d\n",x(n,m));
end