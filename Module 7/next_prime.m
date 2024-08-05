function k = next_prime(n)
    x = n+1;
    while ~(isprime(x))
        x = x+1;
    end
    k = x;
end