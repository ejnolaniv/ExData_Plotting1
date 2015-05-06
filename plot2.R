#### This is plot2.R my attempt at making the second .PNG plot
#### Setting up some preliminary stuff

tempset <- read.csv("household_power_consumption.txt", sep = ";", colClasses = "character", na.strings = "?")
dataset <- tempset[66638:69517,]
tempset <- NULL

#### Naming some variables for an awesome pinball game
 GORGAR <- as.numeric(dataset$Global_active_power)
   BEAT <- paste(dataset$Date,dataset$Time)
    YOU <- strptime(BEAT, "%d/%m/%Y %H:%M:%S")

#### Making the .PNG file
png("plot2.png")
    plot(YOU, GORGAR, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()