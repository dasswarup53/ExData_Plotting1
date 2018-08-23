setwd("/home/swarupdas/data_science/")
data<-read.csv("data.txt",header = T,sep =';',na.strings = "?")
sub_data<-subset(data,Date %in% c("1/2/2007","2/2/2007"))
sub_data$Date <-as.Date(sub_data$Date, format="%d/%m/%Y")
hist(sub_data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()