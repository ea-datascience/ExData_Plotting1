# Plotting the active power vs. time
png(file = 'plot2.png', width=480, height=480)
plot(p3$Date_real, as.numeric(p3$Global_active_power), xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()