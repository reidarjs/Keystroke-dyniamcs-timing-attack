function result=averageEuclid(times)

load('timestamps.mat');
grepAvg=mean(grep);
sudoAvg=mean(sudo);

grepDistance=sqrt(sum((grepAvg-times).^2));
sudoDistance=sqrt(sum((sudoAvg-times).^2));


if grepDistance<=sudoDistance
    result='g';
else
    result='s';
end
