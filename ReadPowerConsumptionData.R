## Read and transform power consumption data 
## by David Tomashek
## code to meet requirements of Course Project 1
## Coursera Data Science program, Exploratory Data Analysis, October 2014
## Roger D. Peng, Instructor

## assumes that file household_power_consumption.txt is in the working directory
## source: UC Irvine Machine Learning Repository,  via Roger Peng

## read table 
tbl <- read.table("household_power_consumption.txt",header=T,sep=";",stringsAsFactors=F)
powcon <- subset(tbl,Date=="1/2/2007" | Date=="2/2/2007")
rm(tbl)

## convert dates/times
powcon$DateTime <- as.POSIXlt(strptime(paste(powcon$Date,powcon$Time),format="%d/%m/%Y %H:%M:%S"))

##change relevant columns to numeric
powcon$GlobalActivePower <- as.numeric(powcon$Global_active_power)
powcon$GlobalReactivePower <- as.numeric(powcon$Global_reactive_power)
powcon$SubMetering1 <- as.numeric(powcon$Sub_metering_1)
powcon$SubMetering2 <- as.numeric(powcon$Sub_metering_2)
powcon$SubMetering3 <- as.numeric(powcon$Sub_metering_3)
powcon$VoltageN <- as.numeric(powcon$Voltage)


