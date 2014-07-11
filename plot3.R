power <- read.csv("./house/house.txt",sep=";",na.strings='?',header=TRUE)
power<-power[poer$Date %in% c("1/2/2007","2/2/2007"),]
plot(strptime(paste(power$Date,power$Time),"%d/%m/%Y %H:%M:%S"),power$Sub_metering_1,ylab="Energy sub metering",xlab="",type="l")
lines(strptime(paste(power$Date,power$Time),"%d/%m/%Y %H:%M:%S"),power$Sub_metering_2,col="red")
lines(strptime(paste(power$Date,power$Time),"%d/%m/%Y %H:%M:%S"),power$Sub_metering_3,col="blue")
legend(cex=0.7,"topright", lty=c(rep(1,3)), col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png")
dev.off()