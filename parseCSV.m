%this function only parses the csv files obtained from wireshark
function parseCSV()

grepCSV=readmatrix('grep.csv');
sudoCSV=readmatrix('sudo.csv');
unknownCSV=readmatrix('unknown.csv');
grep=zeros(10,5);
sudo=zeros(10,5);
unknown=zeros(10,5);

for i=1:10
    grep(i,:)=grepCSV(1+(5*(i-1)):5*i,2);
    sudo(i,:)=sudoCSV(1+(5*(i-1)):5*i,2);
    unknown(i,:)=unknownCSV(1+(5*(i-1)):5*i,2);
    grep(i,:)=grep(i,:)-grep(i,1);
    sudo(i,:)=sudo(i,:)-sudo(i,1);
    unknown(i,:)=unknown(i,:)-unknown(i,1);
end

save('timestamps.mat','grep','sudo','unknown');


