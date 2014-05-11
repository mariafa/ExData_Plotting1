hpc <- read.table(file = "household_power_consumption.txt", header = FALSE,
                  sep = ";",  
                  skip = 66637,
                  nrows = 2880)

hpc$V3<-as.numeric(hpc$V3)
hpc$V4<-as.numeric(hpc$V4)
hpc$V5<-as.numeric(hpc$V5)
hpc$V7<-as.numeric(hpc$V7)
hpc$V8<-as.numeric(hpc$V8)
hpc$V9<-as.numeric(hpc$V9)

par(mar=(c(5,4,1,1)))
par(mfrow=c(2,2))

plot(hpc$V3,type="l",xlab="",ylab="Global Active Power",cex.lab=0.8,cex.axis=0.8)

plot(hpc$V5,type="l",xlab="datetime",ylab="Voltage",cex.lab=0.8,cex.axis=0.8)

plot(hpc$V7,type="l",xlab="",ylab="Energy sub-metering",cex.lab=0.8,cex.axis=0.8)
lines(hpc$V8,col="red")
lines(hpc$V9,col="blue")

legend("topright",legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(19),col=c("black","blue","red"))

plot(hpc$V4,type="l",xlab="datetime",ylab="Global_reactive_power",cex.lab=0.8,cex.axis=0.8)

dev.copy(png, file = "plot4.png", width = 480, height = 480)  
dev.off()