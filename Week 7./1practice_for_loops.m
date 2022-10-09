function summa = halfsum(a)
  xx = size(a);
  n = xx(1);
  m = xx(2);

  summa = 0.0;
    for i = 1:n
    for j = i:m
        summa = summa + a(i,j);
    end
    end
    
end
    
