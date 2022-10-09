function charnum = char_counter(fname,charr)
fid = fopen(fname,'rt');
if(fid<0 || length(charr)~=1 || ~ischar(charr))
    charnum=-1;
    return;
else
    charnum=0;
    one = fgets(fid);
    while(one ~= -1)
        for i = 1:length(char(one))
            if(one(i)==charr)
                charnum = charnum + 1;
            end 
        end
        one = fgets(fid);
    end
end
fclose(fid);
end
