## Plot 2
## by David Tomashek
## code to meet requirements of Course Project 1
## Coursera Data Science program, Exploratory Data Analysis, October 2014
## Roger D. Peng, Instructor

## assumes ReadPowerConsumptionData.R has been run 
## and powcon data frame is in the global environment

## open PNG device and set file location (default px is 480 x 480)
png(filename = "plot2.png")

##set margins
par(mar=c(4,5,3,2))

##create empty plot with correct axis labels
plot(powcon$DateTime,powcon$GlobalActivePower, type="n", xlab="",ylab="Global Active Power (kilowatts)")

#add line chart
lines(powcon$DateTime,powcon$GlobalActivePower)

## close device
dev.off()