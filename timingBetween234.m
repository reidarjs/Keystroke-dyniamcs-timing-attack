function result=timingBetween234(times)

load('timestamps.mat');

time23=times(3)-times(2);
time34=times(4)-times(3);

if time23>=time34
    result='s';
else
    result='g';
end
