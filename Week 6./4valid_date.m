function valid = valid_date(year,month,day)
if (~isscalar(year) || ~isscalar(month) || ~isscalar(day) || year<1 || month <1 || day<1 || year~=fix(year) || month ~= fix(month) || day ~= fix(day))
    valid = false;
else
        if(month == 2)
           if((mod(year,400)==0||((mod(year,4)==0)&&(mod(year,100)~=0))))
            
                if(day<=29)
                 valid=true;
                else
                    valid = false;
                    
                end
                 
           
                
           else
               
                   if(day<=28)
                 valid=true;
                else
                    valid = false;
                    
                   end
           end
              
              
                  
         elseif(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
               
                   if(day<=31)
                   valid=true;
                   else
                       valid = false;  
                       
                   end
               
                   elseif(month==4 || month == 6 || month == 9 || month == 11)
                       
                           if(day<=30)
                           valid=true;
                           else
                               valid=false;
                       
                           end
                       
                       
                           else
                               valid = false; 
                               
        end
end
end
           
           
    
