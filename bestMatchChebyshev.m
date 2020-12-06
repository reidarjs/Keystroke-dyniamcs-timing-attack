function result=bestMatchChebyshev(times)

load('timestamps.mat');

grepDistances=zeros(10,1);
sudoDistances=zeros(10,1);

for i=1:10
    grepDistances(i,1)=max(abs(grep(i,:)-times));
    sudoDistances(i,1)=max(abs(sudo(i,:)-times));
end

if min(grepDistances)<=min(sudoDistances)
    result='g';
else
    result='s';
end
