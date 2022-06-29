data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data <- mutate(data, Date = as.Date(Date, format=c("%d/%m/%Y")))
data <- filter(data, Date == "2007-02-01" | Date == "2007-02-02")
