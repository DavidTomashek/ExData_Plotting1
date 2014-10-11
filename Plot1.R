## Plot 1 
## by David Tomashek
## code to meet requirements of Course Project 1
## Coursera Data Science program, Exploratory Data Analysis, October 2014
## Roger D. Peng, Instructor

## assumes ReadPowerConsumptionData.R has been run 
## and powcon data frame is in the global environment

## open PNG device and set file location (default px is 480 x 480)
png(filename = "plot1.png")

##create histogram of Global Active Power with correct x-axis label and main title
hist(powcon$GlobalActivePower,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")

## close device
dev.off()