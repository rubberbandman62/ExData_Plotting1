# load the data
source("loadData.R")

# plot the global active power to plot2.png
png("plot2.png")
plot(hpc$DateTime, hpc$Global_active_power, 
     type="l", 
     ylab="Global Active Power (kilowatts)", 
     xlab="")

dev.off()

