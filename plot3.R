library(lubridate)
source('get_data.R')

#data<-get_data()


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
legend("topright",legend=legendTxt)

dev.off()


