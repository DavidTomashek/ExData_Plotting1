## Plot 4 
## by David Tomashek
## code to meet requirements of Course Project 1
## Coursera Data Science program, Exploratory Data Analysis, October 2014
## Roger D. Peng, Instructor

## assumes ReadPowerConsumptionData.R has been run 
## and powcon data frame is in the global environment

## open PNG device and set file location (default px is 480 x 480)
png(filename = "plot4.png")

##set margins and number of plots on device (2x2)
par(mfrow=c(2,2),mar=c(5,5,3,2))

##First plot: Upper Left (same as plot1.R)
  ##create empty plot with correct axis labels
  plot(powcon$DateTime,powcon$GlobalActivePower, type="n", xlab="",ylab="Global Active Power")

  ##add line chart
  lines(powcon$DateTime,powcon$GlobalActivePower)

##Second plot: Upper Right (Voltage over time)
 ##create empty plot with correct axis labels
  plot(powcon$DateTime,powcon$VoltageN, type="n", xlab="datetime",ylab="Voltage")

 ##add line chart
  lines(powcon$DateTime,powcon$VoltageN)

##Third plot: Lower Left (same as plot3.R)
 ##create empty plot with correct axis labels
  plot(powcon$DateTime,powcon$SubMetering1, type="n", xlab="",ylab="Energy Sub Metering")

 ##add line charts
  lines(powcon$DateTime,powcon$SubMetering1)
  lines(powcon$DateTime,powcon$SubMetering2, col="red")
  lines(powcon$DateTime,powcon$SubMetering3, col="blue")

 ##add legend
  legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1, col=c("black","red","blue"),bty="n" )

##Fourth plot: Lower Right (Global Reactive Power)
 ##create empty plot with correct axis labels
  plot(powcon$DateTime,powcon$GlobalReactivePower, type="n", xlab="datetime",ylab="Global Reactive Power")

 ##add line chart
  lines(powcon$DateTime,powcon$GlobalReactivePower)

## close device
dev.off()