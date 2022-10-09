function too_young = under_age(age,limit)
if(nargin<2)
    limit=21;
    
end 
    too_young = false;
if(age<limit)
    too_young=true;
    


end
