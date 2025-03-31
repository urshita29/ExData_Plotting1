# Create plot 2
png("plot2.png", width = 480, height = 480)
plot(power_data$DateTime, power_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
