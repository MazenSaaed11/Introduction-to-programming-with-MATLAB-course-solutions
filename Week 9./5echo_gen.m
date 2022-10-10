function output = echo_gen(input,fs,delay,amp)
sz = size(input);
flag = 1;
r = sz(1);
if(r>1)
input = input';
flag=0;
end
p_nums = round(delay * fs);
s = zeros(1,p_nums+length(input));
for i=1:length(input)
    s(i+p_nums) = input(i)*amp;
end
input(end+1:end+p_nums)=0;
output = input+s;
if(max(output)>1 || min(output)<-1)
    output = output / max(abs(output)); 
end
if(~flag)
    output = output';
end
