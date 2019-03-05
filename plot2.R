data=read.table("household_power_consumption.txt",sep=';',header=TRUE)
#read the data
as.Date(data$Date, "%Y/%m/%d")
strptime(data$Time, "%H:%M:%S")
#converting dates, time to Dates
Global_active_power<-as.numeric(data$Global_active_power)
#get the data of Global_active_power
#get the time data
dt <- paste(data$Date, data$Time, sep = " ")
dt_asdate <- strptime(dt, "%d/%m/%Y %H:%M:%S")
#draw the plot2 
plot(dt_asdate, gactivep, type = "l", xlab="", ylab="Global Active Power (kilowatts)")