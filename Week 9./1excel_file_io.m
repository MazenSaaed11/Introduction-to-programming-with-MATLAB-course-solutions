function distance = get_distance(f,s)
[~,~,grid] = xlsread('Distances.xlsx');
v = size(grid);
r = v(1);
c = v(2);
ii = 0;
for i= 2:r
    if(convertCharsToStrings(grid{i,1})==convertCharsToStrings(f))
        ii=i;
        break;
    end
end
jj =0;
for j= 2:c
    if(convertCharsToStrings(grid{1,j})==convertCharsToStrings(s))
        jj=j;
        break;
    end
end
if(ii==0)
    distance=-1;
elseif(jj==0)
    distance=-1;
else
distance = grid{ii,jj};
end

end
