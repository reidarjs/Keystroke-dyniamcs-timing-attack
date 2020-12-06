function result=averageChebyshev(times)

load('timestamps.mat');

grepAvg=mean(grep);
sudoAvg=mean(sudo);

grepDistance=max(abs(grepAvg-times));
sudoDistance=max(abs(sudoAvg-times));


if grepDistance<=sudoDistance
    result='g';
else
    result='s';
end
