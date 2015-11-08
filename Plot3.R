library(data.table)
data_frame<-fread("household_power_consumption.txt",skip=66637,nrows=2880)
a<-paste(data_frame$V1,data_frame$V2)
a<-strptime(a,"%d/%m/%Y%H:%M:%S")
b<-data_frame$V7
c<-data_frame$V8
d<-data_frame$V9
png(filename="Plot3.png")
plot(a,b,type="l",ylab="Energy sub metering",xlab="")
lines(a,c,col="red")
lines(a,d,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()
