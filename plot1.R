power <- read.csv("./house/house.txt",sep=";",na.strings='?',header=TRUE)
power<-power[power$Date %in% c("1/2/2007","2/2/2007"),]
hist(power$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
dev.copy(png,file="plot1.png")
dev.off()