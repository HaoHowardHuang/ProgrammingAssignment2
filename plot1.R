data=read.table("household_power_consumption.txt",sep=';',header=TRUE)
#read the data
as.Date(data$Date, "%Y/%m/%d")
strptime(data$Time, "%H:%M:%S")
#converting dates, time to Dates
Global_active_power<-as.numeric(data$Global_active_power)
#get the data of Global_active_power
hist(Global_active_power,col = "red")
#draw the picture of Global_active_power
