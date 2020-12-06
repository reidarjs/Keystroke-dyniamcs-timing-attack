function result=averageManhattan(times)

load('timestamps.mat');

grepAvg=mean(grep);
sudoAvg=mean(sudo);

grepDistance=sum(abs(grepAvg-times));
sudoDistance=sum(abs(sudoAvg-times));


if grepDistance<=sudoDistance
    result='g';
else
    result='s';
end
