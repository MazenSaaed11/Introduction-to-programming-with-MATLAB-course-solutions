function indices = saddle(M)
indices = [];
    sz = size(M);
    r = sz(1);
    c = sz(2);
    s = 1;
    for i = 1:r
        for j = 1:c
            if(greater(i,c,j,M) && smaller(j,r,i,M))
                 indices(s,1)=i;
                 indices(s,2)=j;
                 s = s + 1;
            end
        end
    end
end

function g = greater(i,c,jj,M)
g = true;
for j = 1:c
    g = g && (M(i,jj)>=M(i,j));
end
end

function s = smaller(j,r,ii,M)
s = true;
for i=1:r
    s = s && (M(ii,j)<=M(i,j));
end
end
