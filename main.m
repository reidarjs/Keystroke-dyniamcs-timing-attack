%run this function to estimate the unknown typings
function main()

load('timestamps.mat');


results=cell(10,1);

%remove some of the function handles to try different combinations
methods={@bestMatchEuclid,@averageEuclid,@bestMatchManhattan,...
    @averageManhattan,@bestMatchChebyshev,@averageChebyshev,@timingBetween234};

for i=1:10
    grepScore=0;
    sudoScore=0;
    for f=1:length(methods)
        if methods{f}(unknown(i,:))=='g'
            grepScore=grepScore+1;
        else
            sudoScore=sudoScore+1;
        end
    end
    
    if grepScore>=sudoScore
        results{i}="grep";
    else
        results{i}="sudo";
    end
    fprintf('Unknown word #%i is assumed to be: %s \n',i,results{i})
end

