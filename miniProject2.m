lambda = 5;
mu = 1;
w = 2;

arrival = 0;
departure = 0;
numArrivals = 0;

x = zeros(w,8);

for i = 1:w
    
end

while numArrivals < 8000
    
    while (arrival == departure)
        arrival = round(1 + (10-1).*rand(1));
        departure = round(1 + (10-1).*rand(1));
    end
    
    arrivalTime = exprnd(1/5);
    serviceTime = exprnd(1);
    
    numArrivals = numArrivals + 1;
end