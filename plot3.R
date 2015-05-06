#### This is plot3.R my attempt at making the third .PNG plot
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


#### Making the .PNG image
png("plot3.png")
plot(GORGAR, WILL, xlab = "", ylab = "Energy Sub Metering", col = "black", type = "l")
points(GORGAR, EAT, col = "red", type = "l") 
points(GORGAR, YOU, col = "blue", type = "l")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = 1)

dev.off()