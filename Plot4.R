library(data.table)
data_frame<-fread("household_power_consumption.txt",skip=66637,nrows=2880)
a<-paste(data_frame$V1,data_frame$V2)
a<-strptime(a,"%d/%m/%Y%H:%M:%S")
b<-data_frame$V7
c<-data_frame$V8
d<-data_frame$V9
e<-data_frame$V3
f<-data_frame$V5
g<-data_frame$V4
png(filename="Plot4.png")
par(mfcol=c(2,2))
plot(a,e,xlab="",ylab="Global Active Power",type="l")
plot(a,b,type="l",ylab="Energy sub metering",xlab="")
lines(a,c,col="red")
lines(a,d,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),bty="n")
plot(a,f,xlab="datetime",ylab="Voltage",type="l")
plot(a,g,xlab="datetime",ylab="Global_reactive_power",type="l",yaxt="n")
axis(side=2,at=v1,labels=v2)
dev.off()
