png(filename = "plot2.png")
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data <- mutate(data, Date = as.Date(Date, format=c("%d/%m/%Y")))
data <- filter(data, Date == "2007-02-01" | Date == "2007-02-02")

td<-as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")

plot(td, as.numeric(data$Global_active_power), type = "l",    
     main = "",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()