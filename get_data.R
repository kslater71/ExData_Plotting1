
# The get_data function is called by plot1.R, plot2.R, plot3.R and plot4.R

get_data <- function() {
     dataFile<-"household_power_consumption.txt"
     data<-read.table(dataFile,header = TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
     data$DateTime<-paste(data$Date,data$Time)
     data$DateTime<-parse_date_time(data$DateTime,"dmY HMS")
     
     startDateTime<-parse_date_time("2007-02-01","Ymd")
     endDateTime<-parse_date_time("2007-02-03","Ymd")
     
     data = subset(data, 
          DateTime >= startDateTime & DateTime < endDateTime,
          select=-c(Date,Time))
     
     return(data)
}


