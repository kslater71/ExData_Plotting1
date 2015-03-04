# This assumes the file "household_power_consumption.txt" is in the working directory.

library(lubridate)
source('get_data.R')  # defines get_data() function

data<-get_data()

png(file = "plot1.png", width=480, height=480)

hist(data$Global_active_power, 
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.off()


