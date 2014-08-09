#load the data file and subset for the requested dates
source("Load_the_data.R")

# output to png file
png("plot2.png", width=480, height=480) 

#create the plot
plot(datetime, power2$Global_active_power, 
      type="l", 
      xlab="", 
      ylab="Global Active Power (kilowatts)") 
dev.off() 


