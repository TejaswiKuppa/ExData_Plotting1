library(data.table)
data_frame<-fread("household_power_consumption.txt",skip=66637,nrows=2880)
a<-paste(data_frame$V1,data_frame$V2)
a<-strptime(a,"%d/%m/%Y%H:%M:%S")
b<-data_frame$V3
png(filename="Plot1.png")
plot(a,b,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()
