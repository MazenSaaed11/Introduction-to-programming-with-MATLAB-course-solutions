function output = blur(img,w)
output = ones(size(img));
output = uint8(output);
sz = size(img);
r = sz(1);
c = sz(2);
for i = 1:r
    for j =1:c
        r_s = max(i-w,1);
        r_e = min(i+w,r);
        c_s = max(j-w,1);
        c_e = min(j+w,c);
        output(i,j) = avrg(r_s,r_e,c_s,c_e,img);
    end
end
end

function val =  avrg(r_s,r_e,c_s,c_e,img)
num = (r_e - r_s + 1) * (c_e-c_s + 1);
sum=0;
sum = double(sum);
for i = r_s:r_e
    for j = c_s:c_e
        sum = sum + double(img(i,j));
    end
end
val = sum / num;
val = uint8(val);
end


