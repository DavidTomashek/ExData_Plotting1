## Plot 3 
## by David Tomashek
## code to meet requirements of Course Project 1
## Coursera Data Science program, Exploratory Data Analysis, October 2014
## Roger D. Peng, Instructor

## assumes ReadPowerConsumptionData.R has been run 
## and powcon data frame is in the global environment

## open PNG device and set file location (default px is 480 x 480)
png(filename = "plot3.png")

##set margins
par(mar=c(4,5,3,2))

##create empty plot with correct axis labels
plot(powcon$DateTime,powcon$SubMetering1, type="n", xlab="",ylab="Energy Sub Metering")

#add line charts
lines(powcon$DateTime,powcon$SubMetering1)
lines(powcon$DateTime,powcon$SubMetering2, col="red")
lines(powcon$DateTime,powcon$SubMetering3, col="blue")

##add legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2, col=c("black","red","blue") )

## close device
dev.off()