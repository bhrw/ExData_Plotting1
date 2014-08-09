#load the data, subset the specific dates, convert date format
source("Load_the_data.R")

#output to png file
png("plot1.png", width=480, height=480)

#create the histogram
hist(power2$Global_active_power, col="red", 
main="Global Active Power",
xlab="Global Active Power (kilowatts)", 
ylab="Frequency")

#back to console
dev.off()
