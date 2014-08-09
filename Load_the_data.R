#assignment 1
#read the file allowing for separator and "?" as input for NA data
power<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses=c("character", "character", rep("numeric",7)))

# show header and first six lines
head (power)

#combine date and time
power$Time <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S") 

#convert Date column to Date format
power$Date <- as.Date(power$Date, "%d/%m/%Y") 

# only use data from the dates 2007-02-01 and 2007-02-02 
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d") 

#create subset of only the requested dates
power2 <- subset(power, Date %in% dates) 

#rename datetime
datetime<-power2$Time
