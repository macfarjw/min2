clc
lambda = 5;
mu = 1;
w = 2;
wavelength = 1;
arrival = 0;
departure = 0;
numArrivals = 0;
blocked = 0;
x = zeros(w,9);

%for i = 1:w
    
%end
count = 0;
while numArrivals < 8000
    
    arrival = round(1 + (10-1).*rand(1));
    departure = round(1 + (10-1).*rand(1));
    
    while (arrival == departure)
        arrival = round(1 + (10-1).*rand(1));
        departure = round(1 + (10-1).*rand(1));
    end
    
    arrivalTime = exprnd(1/5);
    serviceTime = exprnd(1);

    if arrival < departure
        count = count + 1;
        fprintf('testing = %d\n', count);

        for i = arrival:departure-1
            if(wavelength > w)
                wavelength = 1;
                blocked = blocked + 1;
                break
            end
            
            if x(wavelength,i) == 1
               wavelength = wavelength + 1;
            else
               x(wavelength,i) = 1; 
            end
            
        end
    else
        count = count + 1;
        fprintf('testing = %d\n', count);

        for i = departure:arrival-1
            
            if(wavelength > w)
                wavelength = 1;
                blocked = blocked + 1;
                break
            end
            
            if x(wavelength,i) == 1
               wavelength = wavelength + 1;
            else
               x(wavelength,i) = 1; 
            end
            
        end
    end
   
    
    numArrivals = numArrivals + 1;
end