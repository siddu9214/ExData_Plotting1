power<- read.csv("./house/house.txt",sep=";",na.strings='?',header=TRUE,)
power<-power[power$Date %in% c("1/2/2007","2/2/2007"),]
plot(strptime(paste(power$Date,power$Time),"%d/%m/%Y %H:%M:%S"),power$Global_active_power,ylab="Global Active Power (kilowatts)",xlab="",type="l")
dev.copy(png, file = "plot2.png")
dev.off() 