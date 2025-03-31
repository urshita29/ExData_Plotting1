setwd("C:/Users/Urshita/Desktop/coursera project/ExData_Plotting1")

power_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

# Convert Date and DateTime
power_data$Date <- as.Date(power_data$Date, format = "%d/%m/%Y")
power_data$DateTime <- strptime(paste(power_data$Date, power_data$Time), format = "%Y-%m-%d %H:%M:%S")

# Subset the data for the specified dates
power_data <- subset(power_data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

# Create plot 1
png("plot1.png", width = 480, height = 480)
hist(power_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
