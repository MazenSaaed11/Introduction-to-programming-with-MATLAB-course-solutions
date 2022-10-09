function [summa,index] = max_sum(v,n)
if(n>length(v))
    summa=0;
    index=-1;
else
prefix = v;
for i = 2:length(v)
    prefix(i) = prefix(i-1) + prefix(i);   
end
summa = prefix(n);
index = 1;
for i = n+1:length(prefix)
    if((prefix(i)-prefix(i-n))>summa)
        summa = (prefix(i)-prefix(i-n));
        index = i - n + 1;
    end
end
end
end
