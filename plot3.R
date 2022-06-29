png(filename = "plot3.png")
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data <- mutate(data, Date = as.Date(Date, format=c("%d/%m/%Y")))
data <- filter(data, Date == "2007-02-01" | Date == "2007-02-02")

td<-as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")

plot(td, as.numeric(data$Sub_metering_1), type = "l",    
     main = "",
     xlab = "",
     ylab = "Energy sub metering")
lines(td, as.numeric(data$Sub_metering_2), type = "l", col="red")
lines(td, as.numeric(data$Sub_metering_3), type = "l", col="blue")
legend("topright", 
       pch = "-", 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()