#### This is plot4.R my attempt at making the fourth .PNG plot
#### Setting up some preliminary stuff
#### I chop the file based on the specific line numbers, because I felt like being lazy.
dataset <- read.csv("household_power_consumption.txt", sep = ";", colClasses = "character", na.strings = "?")
dataset <- dataset[66638:69517,]



#### Naming some variables for an awesome pinball game

PINBALL <- paste(dataset$Date,dataset$Time)
 GORGAR <- strptime(PINBALL, "%d/%m/%Y %H:%M:%S")
   WILL <- dataset$Sub_metering_1
    EAT <- dataset$Sub_metering_2
    YOU <- dataset$Sub_metering_3
 SPEAKS <- dataset$Global_active_power
   BEAT <- dataset$Global_reactive_power
GOT_YOU <- dataset$Voltage

#### Making the .PNG image
png("plot4.png")
par(mfrow=c(2,2), mar=c(4,4,2,1))

    plot(GORGAR, SPEAKS, xlab = "", ylab = "Global Active Power", type = "l")
    plot(GORGAR, GOT_YOU, xlab = "datetime", ylab = "Voltage", type="l")
    plot(GORGAR, WILL, xlab = "", ylab="Energy Sub Metering",type = "l", col = "black")
    points(GORGAR, EAT, type = "l", col = "red")
    points(GORGAR, YOU, type = "l", col = "blue")
    legend("topright", lty = 1, bty = "n", cex=0.4, col = c("black", "red", "blue"), 
           legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(GORGAR, BEAT, xlab = "datetime", ylab = "Global_reactive_power", type = "l")
dev.off()