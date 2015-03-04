library(lubridate)
source('get_data.R')

#data<-get_data()


png(file = "plot4.png", width=480, height=480)

par(mfrow = c(2,2))

# row 1, col 1
plot(data$DateTime,data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

# row 1, col 2
plot(data$DateTime,data$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")

# row 2, col 1
plot(data$DateTime,data$Global_active_power,
     type="n",
     xlab="",
     ylab="Energy sub metering",
     ylim=c(0,38))

lines(data$DateTime,data$Sub_metering_1,col="black")
lines(data$DateTime,data$Sub_metering_2,col="red")
lines(data$DateTime,data$Sub_metering_3,col="blue")

legendTxt <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legendCol <- c("black", "red", "blue")
legend("topright",legend=legendTxt, col=legendCol, lwd=1, bty="n")

# row 2, col 2
plot(data$DateTime,data$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power")

dev.off()


