setwd("/home/swarupdas/data_science/")
data<-read.csv("data.txt",header = T,sep =';',na.strings = "?")
sub_data<-subset(data,Date %in% c("1/2/2007","2/2/2007"))
sub_data$Date <-as.Date(sub_data$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(sub_data$Date), sub_data$Time)
sub_data$Datetime <- as.POSIXct(datetime)
with(sub_data, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()