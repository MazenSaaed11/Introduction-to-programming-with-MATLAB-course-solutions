function k = next_prime(n)
done = false;
while(~done)
    n = n + 1;
    if(isprime(n))
        k = n;
        done = true;
    end
end




end
