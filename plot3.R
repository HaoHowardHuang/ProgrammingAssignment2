data=read.table("household_power_consumption.txt",sep=';',header=TRUE)
#read the data
as.Date(data$Date, "%Y/%m/%d")
strptime(data$Time, "%H:%M:%S")
#converting dates, time to Dates
Global_active_power<-as.numeric(data$Global_active_power)
#get the data of Global_active_power
s1 <- as.numeric(data$Sub_metering_1)
s2 <- as.numeric(data$Sub_metering_2)
s3 <- as.numeric(data$Sub_metering_3)
#set 3 different groups
png("plot3.png")
plot(dt_asdate, s1, type = "l", col="black", xlab="", ylab="Energy sub metering")
lines(dt_asdate, s2, type = "l", col="red")
lines(dt_asdate, s3, type = "l", col = "blue")
#set the legend
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, legend = c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3"))
dev.off()