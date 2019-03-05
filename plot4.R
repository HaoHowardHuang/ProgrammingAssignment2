png("plot4.png")
par(mfrow = c(2, 2)) #setting the number of charts
# picture 1
plot(dt_asdate, gap, type = "l", xlab = "", ylab = "Global Active Power")
# picture 2
plot(dt_asdate, vol, type = "l", xlab = "datetime", ylab = "Voltage")
# picture 3
plot(dt_asdate, s1, type = "l", col="black", xlab="", ylab="Energy sub metering")
lines(dt_asdate, s2, type = "l", col="red")
lines(dt_asdate, s3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, legend = c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3"))
# picture 4
plot(dt_asdate, grp, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()