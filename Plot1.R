library(data.table)
data_frame<-fread("household_power_consumption.txt",skip=66637,nrows=2880)
a<-data_frame$V3
png(filename="Plot1.png)
hist(a,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()