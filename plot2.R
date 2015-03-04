# This assumes the file "household_power_consumption.txt" is in the working directory.

library(lubridate)
source('get_data.R')   # defines get_data() function

data<-get_data()

png(file = "plot2.png", width=480, height=480)

plot(data$DateTime,data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()


