hpc <- read.table(file = "household_power_consumption.txt", header = FALSE,
                  sep = ";",  
                  skip = 66637,
                  nrows = 2880)
hpc$V3<-as.numeric(hpc$V3)

plot(hpc$V3,type="l",xlab="",ylab="Global Active Power (Kilowatts)")

dev.copy(png, file = "plot2.png", width = 480, height = 480)  
dev.off()

 

