function fare = taxi_fare(distance,time)
    distance = ceil(distance);
    time = ceil(time);
    fare = 5+((distance-1)*2)+(time*0.25);
end