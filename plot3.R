# Plotting sub_metering vs. time, combined, for 1,2 and 3
png(file = 'plot3.png', width=480, height=480)
with(p3, plot(Date_real, as.numeric(as.character(Sub_metering_1)), type='l', xlab="", ylab="Energy sub metering"))
lines(p3$Date_real, as.numeric(as.character(p3$Sub_metering_2)), type='l', col='red')
lines(p3$Date_real, as.numeric(as.character(p3$Sub_metering_3)), type='l', col='blue')
legend(x="topright", c("Sub metering 1","Sub metering 2","Sub metering 3"), 
       lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("black","red", "blue"))
dev.off()