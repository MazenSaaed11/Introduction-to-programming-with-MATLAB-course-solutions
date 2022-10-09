function coded = caesar(x,num)
v = double(x);
num = rem(num,95);
for i = 1:length(v)
    if((v(i)+num)>=32 && (v(i)+num<=126))
        v(i) = v(i) + num;
    elseif ((v(i)+num)<32)
        val = x(i) + num;
        diff = 32 - val;
        diff = diff - 1;
        v(i) = (126-diff);
    else
        val = x(i) + num;
        diff = val - 126;
        diff = diff - 1;
        v(i) = (32+diff);   
    end
end
coded = char(v);
end
