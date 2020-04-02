xmax = 24;

taumax = 50;
G = zeros(2*xmax-1, taumax);  % creates a holding vector,
% We need 2*xmax-1 because we want to go from -xmax, to xmax

for dx = 0:(xmax-1);
    for tau = 0:(taumax-1);
        posxInd=xmax+dx;   % We break the loop up into the negative 
        negxInd=xmax-dx;  % and positive x
        
        % dIs is the "molecule number fluctuation matrix" you have probably
        % named this something else in your code
        G(posxInd,tau+1) = mean(mean(dIs(1:(xmax-dx),1:(ntimes - tau)).*dIs(dx+1:xmax,tau+1:ntimes)));        
        G(negxInd,tau+1) = mean(mean(dIs(dx+1:xmax,1:(ntimes - tau)).*dIs(1:(xmax-dx),tau+1:ntimes)));
        
    end;
end;