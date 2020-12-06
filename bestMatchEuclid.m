function result=bestMatchEuclid(times)

load('timestamps.mat');

grepDistances=zeros(10,1);
sudoDistances=zeros(10,1);

for i=1:10
    grepDistances(i,1)=sqrt(sum((grep(i,:)-times).^2));
    sudoDistances(i,1)=sqrt(sum((sudo(i,:)-times).^2));
end

if min(grepDistances)<=min(sudoDistances)
    result='g';
else
    result='s';
end



