function fare = taxi_fare(d,t)
dd = ceil(d);
fare = 5;
dd=dd-1;
fare = fare + dd * 2;
tt = ceil(t);
fare = fare + tt*0.25;
end
