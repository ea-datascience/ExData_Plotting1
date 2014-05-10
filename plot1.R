df_hpc <- read.csv('..//..//data/household_power_consumption.txt', sep=';')
## Combine the columns 
df_hpc$Full_Data <- do.call(paste, c(df_hpc[c("Date","Time")], sep = " "))
df_hpc$Date_real <- strptime(df_hpc$Full_Data,'%d/%m/%Y %H:%M:%S')
p1 <- df_hpc[as.POSIXlt('2007-02-03') > df_hpc[['Date_real']],]
p2 <- p1[as.POSIXlt('2007-02-01') < p1[['Date_real']],]
p2$Global_active_power <- as.numeric(as.character(p2$Global_active_power))
p3 <- p2[!is.na(p2$Global_active_power),]

#Plotting the histogram
png(file = 'plot1.png', width=480, height=480)
hist(p3$Global_active_power, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='red')
dev.off()