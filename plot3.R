hpc <- read.table(file = "household_power_consumption.txt", header = FALSE,
                  sep = ";",  
                  skip = 66637,
                  nrows = 2880)
hpc$V7<-as.numeric(hpc$V7)
hpc$V8<-as.numeric(hpc$V8)
hpc$V9<-as.numeric(hpc$V9)

plot(hpc$V7,type="l", xlab="", ylab="Energy sub-metering")
lines(hpc$V8,col="red")
lines(hpc$V9,col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(19), col=c("black","blue","red"))

dev.copy(png, file = "plot3.png", width = 480, height = 480)  
dev.off()