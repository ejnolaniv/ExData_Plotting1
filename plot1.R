#### This is Plot1.R my attempt at making the first .PNG plot
#### Setting up some preliminary stuff

    dataset <- read.csv("household_power_consumption.txt", sep = ";", colClasses = "character")
    dataset <- dataset[66638:69517,]

    GORGAR <- as.numeric(dataset$Global_active_power)
    
    #### Making the .PNG image
    png("plot1.png")    
        hist(GORGAR, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red")
    dev.off()