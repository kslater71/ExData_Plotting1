# This assumes the file "household_power_consumption.txt" is in the working directory.

library(lubridate)
source('get_data.R')   # defines get_data() function

data<-get_data()

png(file = "plot3.png", width=480, height=480)

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
legend("topright",legend=legendTxt, col=legendCol, lwd=1)

dev.off()


